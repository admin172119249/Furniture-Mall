package com.cyy.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cyy.javabean.Goods;
import com.cyy.service.GoodsService;

@Controller
public class UploadController {

    @RequestMapping("/upload.do")
    public ModelAndView upload(@RequestParam MultipartFile photo, HttpSession session)throws  Exception{
        ModelAndView mv = new ModelAndView();
        //判断用户是否上传了文件
        if(!photo.isEmpty()){
            //文件上传的地址
            String realPath = session.getServletContext().getRealPath("/assets/images");
            //获取文件的名称

            final String fileName = photo.getOriginalFilename();
            //限制文件上传的类型
             String contentType = photo.getContentType();
            if("image/jpeg".equals(photo.getContentType())){
                File file = new File(realPath,fileName);
                //完成文件的上传
                photo.transferTo(file);
                //System.out.println(path);
                //System.out.println(fileName);

                mv.addObject("filename",fileName);
            } else {
                mv.addObject("msg","请选择jpg的文件格式进行上传");
                mv.addObject("type",contentType);
                mv.setViewName("404");
                return mv;
         }
   		 } else {
            mv.addObject("msg","请选择jpg的文件格式进行上传哦");
            mv.setViewName("404");
            return mv;
        }
        //跳转到成功页面
        mv.setViewName("addproduct");

        return mv;

    }
    
    @Autowired
	private GoodsService goodsService;
	private int pageSize = 3;
    @RequestMapping("/upload1.do")
    public ModelAndView upload1(@RequestParam MultipartFile photo, HttpSession session,Integer shopId, Integer pageNow, Model model)throws  Exception{
    	Goods shop = goodsService.queryGoodsById(shopId);
		System.out.println("shop:" + shop);
		model.addAttribute("shop", shop);
		session.setAttribute("pageNow", pageNow);
        ModelAndView mv = new ModelAndView();
        //判断用户是否上传了文件
        if(!photo.isEmpty()){
            //文件上传的地址
            String realPath = session.getServletContext().getRealPath("/assets/images");
            //获取文件的名称

            final String fileName = photo.getOriginalFilename();
            //限制文件上传的类型
             String contentType = photo.getContentType();
            if("image/jpeg".equals(photo.getContentType())){
                File file = new File(realPath,fileName);
                //完成文件的上传
                photo.transferTo(file);
                //System.out.println(path);
                //System.out.println(fileName);

                mv.addObject("filename",fileName);
            } else {
                mv.addObject("msg","请选择jpg的文件格式进行上传");
                mv.addObject("type",contentType);
                mv.setViewName("404");
                return mv;
         }
   		 } else {
            mv.addObject("msg","请选择jpg的文件格式进行上传哦");
            mv.setViewName("404");
            return mv;
        }
        //跳转到成功页面
        mv.setViewName("changeaproduct");

        return mv;

    }
}


