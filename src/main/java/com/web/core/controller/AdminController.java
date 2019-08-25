package com.web.core.controller;

import com.web.util.JsonMsg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * 管理员控制器
 */
@Controller //此注释的含义是将该类设置成为浏览器提交的上来的类
@RequestMapping("/admin")
public class AdminController {



    private JsonMsg jsonMsg;

    public AdminController (){
        jsonMsg = new JsonMsg();
    }


    /**
     * 权限管理233
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/adminRole.do")
    public ModelAndView fronthome() throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName(jsonMsg.getADMINLORE());
        return mav;
    }

    public JsonMsg getJsonMsg() {
        return jsonMsg;
    }

    public void setJsonMsg(JsonMsg jsonMsg) {
        this.jsonMsg = jsonMsg;
    }
}
