package com.cyy.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;









import com.cyy.javabean.Buyer;
import com.cyy.service.AccountService;
import com.cyy.service.EmailService;

@Controller
public class EmailController {
	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/emailyzcode.do")
	public String emailyzcode(String yzcode,Buyer user,Model model, HttpSession session){
		
		
		
		String Yzcode=user.getYzm();
		System.out.print(Yzcode);
		String Yzm=user.getYzcode();
		System.out.print(Yzm);
		
		
		if(Yzcode.equals(Yzm) && Yzcode!=null){
			return "forgetpassword";
		}else{
			return "error";
		}
		
		
	}
	
	@RequestMapping("/emailSend.do")
	public String emailSend(String email,Model model, HttpSession session){
		
		Buyer user= emailService.emailfind(email);

		if(user!=null && email != null){
			HtmlEmail email1=new HtmlEmail();
			
			email1.setHostName("smtp.qq.com");
			email1.setCharset("utf-8");
			
			try {
				email1.addTo(email);
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("邮箱输入错误");
			}
			
			try {
				email1.setFrom("172119249@qq.com","海洋");
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("发送邮箱错误");
			}
			
			email1.setAuthentication("172119249@qq.com","jbhtpsddvrvwbidc");
			
			//随机数
			String str = "0123456789";
	        //容量为4
	        StringBuilder sb = new StringBuilder(4);
	        for (int i = 0; i < 4; i++) {
	            //遍历4次，拿到某个字符并且拼接
	            char ch = str.charAt(new Random().nextInt(str.length()));
	            sb.append(ch);
	        }
			
			email1.setSubject("邮箱验证码发送");//设置发送主题
			try {
				email1.setMsg("您的验证码是"+sb);
				user.setYzm(sb.toString());
				session.setAttribute("user", user);
				System.out.println("user:" + user);
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("发送邮件内容错误");
			}//设置发送内容
			try {
				email1.send();
			} catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("发送失败");
			}//进行发送
			
			return "yzcodeforgetpassword";
		}else{
			System.out.print("邮箱错误或者为null");
			return "emailforgetpassword";
		}
		
		
	}
}
