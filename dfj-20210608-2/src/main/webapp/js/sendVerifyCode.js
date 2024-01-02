$(function(){  
	//发送验证码
	$(".sendVerifyCode").on("click", function(){
		var usertel = $("input[name=usertel]").val();
		$.ajax({
	        url: getBasePath()+"/sendSms.do",
	        async : true,
	        type: "post",
	        dataType: "json",
	        data: {"usertel":usertel},
	        success: function (data) {
	        	if(data == 'fail'){
	        		alert("发送验证码失败");
	        		return ;
	        	}
	        }
    	});
	})
})

