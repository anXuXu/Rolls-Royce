package com.web.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author HuangTianQing
 * 控制器
 */
@Controller //此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin")
public class controllerTest {
    @RequestMapping("/hello.do")
    public ModelAndView hello(){
        System.out.println("后台管理主界面");
        ModelAndView mav = new ModelAndView();
        mav.setViewName("backmain");
        return mav;
    }
}
