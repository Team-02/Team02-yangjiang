package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/4.
 */
@Controller
public class TestController {

    @RequestMapping(value = {"","/"})
    public String index(){
        return "index";
    }
    @RequestMapping(value = {"/alreadyhandle"})
    public String alreadyhandle(){
        return "alreadyhandle";
    }

    @RequestMapping(value = {"/hello"})
    public String hello(){
        return "hello";
    }
    @RequestMapping(value = {"/home"})
    public String home(){
        return "home";
    }
    @RequestMapping(value = {"/test"})
    public String test(){
        return "test";
    }
    @RequestMapping(value = {"/waithandle"})
    public String waithandle(){
        return "waithandle";
    }
    @RequestMapping(value = {"/comqueryhome"})
    public String comqueryhome(){
        return "comqueryhome";
    }
    @RequestMapping(value = {"/comquery"})
    public String comquery(){
        return "comquery";
    }
    

    @RequestMapping(value = "/y-tabs")
    public String page4(){

        return "y-tabs";
    }

    @RequestMapping(value = "/y-page1")
    public String page1(){

        return "y-page1";
    }

    @RequestMapping(value = "/y-page2")
    public String page2(){

        return "y-page2";
    }
    
    
}
