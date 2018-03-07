package com.ssm.test;

import com.ssm.domain.ProjectBase;
import com.ssm.mapper.ProjectBaseMapper;
import com.ssm.mapper.StaffMapper;
import com.ssm.service.ProjectBaseService;
import com.ssm.service.StaffService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.UUID;

/**
 * Created by dllo on 18/3/6.
 */
public class ProjectBaseTest {
    private ApplicationContext context;
    private ProjectBaseMapper projectBaseMapper;
    private ProjectBaseService projectBaseService;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        projectBaseMapper = context.getBean(ProjectBaseMapper.class);
        projectBaseService = context.getBean(ProjectBaseService.class);
    }

    @Test
    public void insert(){
        ProjectBase projectBase = new ProjectBase();
        projectBase.setProgName("111");
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        projectBase.setProhId(uuid);
       projectBaseMapper.insertProjectBase(projectBase);
    }
}
