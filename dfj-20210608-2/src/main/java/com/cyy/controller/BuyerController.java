package com.cyy.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyy.javabean.Buyer;
import com.cyy.javabean.Client;
import com.cyy.service.BuyerService;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

@Controller
public class BuyerController {
	@Autowired
	private BuyerService buyerService;

	@RequestMapping("/buyerRegSave.do")
	public String buyerRegSave(Buyer byr, Model model) {
		buyerService.buyerRegSave(byr);
		return "success";
	}

	@RequestMapping("/buyerLogin.do")
	public String buyerLogin(Buyer byr, Model model, HttpSession session) {
		
		byr = buyerService.loginCheck(byr);
		
		if (byr != null && byr.getUserId() != null) {// 表示登录成功
			session.setAttribute("loginByrNo", byr.getUserId());
			session.setAttribute("loginByr", byr);
			return "success";
		} else {
			session.removeAttribute("loginByrNo");
			model.addAttribute("errMsg", "登录失败");
			return "error";
		}
	}
	

	@RequestMapping("/buyerLogin1.do")
	public String buyerLogin1(Buyer byr, Model model, HttpSession session) {
		String capText = (String) session.getAttribute("capText");
		if(!capText.equals(byr.getYzm())){
			session.removeAttribute("loginByrNo");
			model.addAttribute("errMsg", "登录失败");
			
			return "error";
		}
		
		byr = buyerService.loginCheck(byr);
		
		
		if (byr != null && byr.getUserId() != null ) {// 表示登录成功
			session.setAttribute("loginByrNo", byr.getUserId());
			session.setAttribute("loginByr", byr);
			
			return "success";
		} else {
			session.removeAttribute("loginByrNo");
			model.addAttribute("errMsg", "登录失败");
			
			return "error";
			
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.setAttribute("loginByr", null);
		return "index";
	}

	@RequestMapping("/buyerChange.do")
	public String buyerChange(Buyer byr, Model model) {
		
		
			buyerService.buyerChange(byr);
			return "success";
		
		
	}
	
	
	@Autowired
	private Producer captchaProducer = null;


	/**
	     * 生成验证码
	     * @param request
	     * @param response
	     * @throws IOException
	     */
	    @RequestMapping("/yzmImg.do")
	    public void yzmImg(HttpServletRequest request,HttpServletResponse response) throws IOException{
	        
	        HttpSession session = request.getSession();
	        String preCode = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
	        
	        System.out.println("-----生成验证码-----前一个验证码："+preCode);
	        
	        //生成验证码
	        response.setDateHeader("Expires", 0);
	         // Set standard HTTP/1.1 no-cache headers.
	        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
	        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).
	        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
	        // Set standard HTTP/1.0 no-cache header.
	        response.setHeader("Pragma", "no-cache");
	        // return a jpeg
	        response.setContentType("image/jpeg");
	        // create the text for the image
	        String capText = captchaProducer.createText();
	        System.err.println(capText);
	        
	        session.setAttribute("capText", capText);
	        
	        // store the text in the session
	        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
	        session.setAttribute(Constants.KAPTCHA_SESSION_DATE, new Date());
	        // 存放到缓存服务器上，并把key记录到cookie
	        //CodeUtils.creatCode(capText, response, request);
	        // create the image with the text
	        BufferedImage bi = captchaProducer.createImage(capText);
	        ServletOutputStream out = response.getOutputStream();
	        // write the data out
	        ImageIO.write(bi, "jpg", out);
	        try {
	            out.flush();
	        } finally {
	            out.close();
	        }

	    }
	    
	    
	    @RequestMapping("/forgetpassword.do")
	    public void ForgetPassword() {

	    	TestClient testClient= new TestClient();
	    	testClient.TestClient();
	    }
	    
	    
}