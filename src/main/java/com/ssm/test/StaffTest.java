package com.ssm.test;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;
import com.ssm.mapper.StaffMapper;
import com.ssm.page.PageBean;
import com.ssm.service.StaffService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
public class StaffTest {
    private ApplicationContext context;
    private StaffMapper staffMapper;
    private StaffService staffService;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        staffMapper = context.getBean(StaffMapper.class);
        staffService = context.getBean(StaffService.class);
    }

    @Test
    public void insertStaff(){

//        String str = UUID.randomUUID().toString().replace("-","");
//
//        System.out.println(str);

        Staff staff = new Staff("张四","123","1346764724@qq.com","2941018735@qq.com");

        System.out.println(staffMapper.insertStaff(staff));
    }

    @Test
    public void selectPage(){

        BaseResult<Staff> baseResult = new BaseResult<Staff>();
        System.out.println(baseResult);

        PageBean<Staff> pageBean = new PageBean<Staff>(1,3,2);
        List<Staff> staffList = staffMapper.pageSelect(pageBean);
        System.out.println(staffList);
    }
    @Test
    public void selectAll(){

        List<Staff> staffList = staffMapper.selectAll();
        for (Staff staff : staffList) {
            System.out.println(staff);
        }
    }

    @Test
    public void serviceTest(){
        Staff staff = new Staff();
        int pageIndex = 0;
        int pageSize = 2;
        BaseResult<Staff> baseResult =  staffService.select(staff,pageIndex,pageSize);
        System.out.println(baseResult);
    }

}
