package com.ssm.test;

import com.ssm.domain.Department;
import com.ssm.domain.Staff;
import com.ssm.mapper.DepartmentMapper;
import com.ssm.mapper.StaffMapper;
import com.ssm.service.DepartmentService;
import com.ssm.service.StaffService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/27哈哈.
 */
public class DepartmentTest {
    private ApplicationContext context;
    private DepartmentMapper departmentMapper;
    private DepartmentService departmentService;
    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        departmentMapper = context.getBean(DepartmentMapper.class);
        departmentService = context.getBean(DepartmentService.class);
    }
    @Test
    public void selectAll(){

        List<Department> departmentList = departmentMapper.selectAll();
        for (Department department : departmentList) {
            System.out.println(department);
        }
    }
}
