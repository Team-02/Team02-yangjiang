package com.ssm.test;

import com.ssm.domain.Staff;
import com.ssm.mapper.StaffMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.UUID;

/**
 * Created by dllo on 18/2/5.
 */
public class StaffTest {
    private ApplicationContext context;
    private StaffMapper staffMapper;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        staffMapper = context.getBean(StaffMapper.class);
    }

    @Test
    public void insertStaff(){

        String str = UUID.randomUUID().toString().replace("-","");

        System.out.println(str);

        Staff staff = new Staff(str,"张四","123","1346764724@qq.com","2941018735@qq.com");

        System.out.println(staffMapper.insertStaff(staff));
    }

}
