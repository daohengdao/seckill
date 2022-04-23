//存放主要交互逻辑代码
// JavaScript模块化
let seckill={
    //封装秒杀相关ajax的url
    URL:{
        now:function () {
            return '/seckill/time/now';
        },
        exposer:function (seckillId) {
            return '/seckill/'+seckillId+'/exposer';
        },
        execution:function (seckillId,md5) {
            return '/seckill/'+seckillId+'/'+md5+'/execution';
        }
    },
    handleSeckillkill:function (seckillId,node) {
        //处理秒杀逻辑
        //获取秒杀地址,控制显示逻辑, 执行秒杀
        node.hide().html('<button class="btn btn-primary btn-lg" id="killBtn">开始秒杀</button>');
        $.post(seckill.URL.exposer(seckillId),{},function (result) {
            //在回调函数中, 执行交互流程
            if (result&&result['success']){
                let exposer=result['date'];
                if (exposer['exposed']){
                    //开启秒杀
                    //获取秒杀地址
                    let md5=exposer['md5'];
                    let killUrl=seckill.URL.execution(seckillId,md5);
                    //绑定一次点击事件
                    $('#killBtn').one('click',function () {
                        //执行秒杀请求
                        //1.先禁用按钮
                        $(this).addClass('disabled');
                        //2. 发送秒杀请求,执行秒杀
                        $.post(killUrl,{},function (result) {
                            if (result && result['success']){
                                let killResult = result['date'];
                                let state=killResult['state'];
                                let stateInfo=killResult['stateInfo'];
                                //3. 显示秒杀结果
                                node.html('<span class="label label-success">' + stateInfo + '</span>');
                            }
                        });
                    });
                    node.show();
                }else {
                    //未开启秒杀
                    let now=exposer['now'];
                    let start=exposer['start'];
                    let end=exposer['end'];
                    //重新计算计时逻辑
                    seckill.countdown(seckillId,now,start,end);
                }
            }else{
                console.log('result'+result);
            }
        });
    },
    //验证手机号
    validatePhone: function (phone) {
        if (phone&&phone.length==11&&!isNaN(phone)){
            return true;
        }else {
            return false;
        }
    },
    countdown:function (seckillId,nowTime,startTime,endTime) {
        let seckillBox=$('#seckill-box');

        //时间判断
        if (nowTime>endTime){
            //秒杀结束
            seckillBox.html('秒杀结束!');
        }else if(nowTime<startTime){
            //秒杀未开始,计时
            let killTime=new Date(startTime+1000);
            seckillBox.countdown(killTime,function (event) {
                //时间格式
                let  format=event.strftime('秒杀倒计时: %D天 %H时 %M分 %S秒');
                seckillBox.html(format);
            }).on('finish.countdown',function (){
                //获取秒杀地址,控制显示逻辑, 执行秒杀
                seckill.handleSeckillkill(seckillId,seckillBox);
            });
        }else{
            //秒杀开始
            seckill.handleSeckillkill(seckillId,seckillBox);
        }
    },
    //详情页的秒杀逻辑
    detail: {
        //详情页初始化
        init: function (params) {
            //手机验证和登录, 计时交互
            //规划我们的交互流程
            //在cookie中查找手机号
            let killPhone = $.cookie('killPhone');

            //验证手机号
            if (!seckill.validatePhone(killPhone)) {
                //绑定phone
                //控制输出
                let killPhoneModal = $("#killPhoneModal");
                killPhoneModal.modal({
                    show: true,//显示弹出层
                    backdrop: 'static',//禁止位置关闭
                    keyboard: false//关闭键盘事件
                });
                $('#killPhoneBtn').click(function () {
                    let inputPhone = $('#killPhoneKey').val();
                    if (seckill.validatePhone(inputPhone)) {
                        //电话写入cookie
                        $.cookie('killPhone', inputPhone, {expires: 7, path: '/seckill'});
                        //刷新页面
                        window.location.reload();
                    }else{
                        $('#killPhoneMessage').hide().html('<label class="label label-danger">手机号错误!</label>').show(300);
                    }
                });
            }
            //已经登录
            //计时交互
            let startTime = params['startTime'];
            let endTime = params['endTime'];
            let seckillId = params['seckillId'];
            $.get(seckill.URL.now(),{},function (result) {
                if (result && result['success']){
                    let nowTime=result['date'];
                    seckill.countdown(seckillId,nowTime,startTime,endTime);
                }else{
                    console.log('result'+result);
                }
            });
        }
    }
}