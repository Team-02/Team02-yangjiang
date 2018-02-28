package com.ssm.controller;

import com.ssm.domain.*;
import com.ssm.domain.Process;
import com.ssm.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/4.
 */
@Controller
public class TestController {

    @Resource
    private StaffService staffService;
    @Resource
    private DepartmentService departmentService;
    @Resource
    private ProcessService processService;
    @Resource
    private ProjectUnitsService projectUnitsService;
    @RequestMapping(value = {"","/"})
    public String index(){
        return "y-home";
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

    @RequestMapping(value = "/y-home")
    @ResponseBody
    public String yhome(Staff staff){

        System.out.println("--+++++--"+staff);
        Staff staff1 = staffService.selectStaff(staff);
        if (staff1!= null){
            return "success";
        }else {
            return "error";
        }
    }

    @RequestMapping(value = "/index")
    public String index1(){
        return "index";
    }

    @RequestMapping(value = "/selectstaff")
    public String selectstaff(){
        return "selectstaff";
    }

    @RequestMapping(value = "/select")
    @ResponseBody
    public BaseResult<Staff> select(String name,int pageIndex,int pageSize){
        BaseResult<Staff> baseResult = staffService.select(name,pageIndex,pageSize);
        return baseResult;
    }
    @RequestMapping(value = "/continueproject")
    public String continueproject(){
        return "continueproject";
    }
    @RequestMapping(value = "/continuehome")
    public String continuephome(){

        return "continuehome";
    }
    @RequestMapping(value = "/approve")
    public String approve(){
        return "approve";
    }
    @RequestMapping(value = "/approvehome")
    public String approvehome(){
        return "approvehome";
    }

    @RequestMapping(value = "/continuepalready")
    public String continuepalready(){
        return "continuepalready";
    }
    @RequestMapping(value = "/continuepwait")
    public String continuepwait(){
        return "continuepwait";
    }
    @RequestMapping(value = "/satemanager")
    public String satemanager(){
        return "satemanager";
    }

    @RequestMapping(value = "/scaldmanager")
    public String scaldmanager(){
        return "scaldmanager";
    }

    @RequestMapping(value = "/plantmanager")
    public String plantmanager(){
        return "plantmanager";
    }

    @RequestMapping(value = "/unitmanager")
    public String unitmanager(){
        return "unitmanager";
    }

    @RequestMapping(value = "/selectdepartment")
    public String selectdepartment(){
        return "selectdepartment";
    }

    @RequestMapping(value = "/selectdepart")
    @ResponseBody
    public BaseResult<Department> selectdepart(String deptName, int pageIndex, int pageSize){
        BaseResult<Department> baseResult = departmentService.select(deptName,pageIndex,pageSize);
        return baseResult;
    }
    @RequestMapping(value = "/selectprocess")
    @ResponseBody
    public BaseResult<Process> selectprocess(String processNumber,String applyTime, int pageIndex, int pageSize){
        System.out.println(applyTime);
        BaseResult<Process> baseResult = processService.select(processNumber,applyTime,pageIndex,pageSize);
        return baseResult;
    }

    @RequestMapping(value = "/y-EmployeeWindow")
    public String EmployeeWindow(){
        return "y-EmployeeWindow";
    }

    @Resource
    private JointUnitService jointUnitService;

    @RequestMapping(value = "/selectjoint")
    @ResponseBody
    public BaseResult<JointUnit> selectjoint(String uniteAppOrgName, int pageIndex, int pageSize){
        BaseResult<JointUnit> baseResult = jointUnitService.select(uniteAppOrgName,pageIndex,pageSize);
        return baseResult;
    }

    @RequestMapping(value = "/y-page1-2")
    public String page1_2(){
        return "y-page1-2";
    }


    @RequestMapping(value = "/selectproject")
    @ResponseBody
    public BaseResult<ProjectUnits> selectproject(String appOrgName,int pageIndex,int pageSize){
        System.out.println(appOrgName);
        BaseResult<ProjectUnits> baseResult = projectUnitsService.select(appOrgName,pageIndex,pageSize);
        return baseResult;
    }

    @RequestMapping(value = "/y-page1-1")
    public String page1_1(){
        return "y-page1-1";
    }

}
