package com.ssm.service.impl;

import com.ssm.domain.ProjectBase;
import com.ssm.mapper.ProjectBaseMapper;
import com.ssm.service.ProjectBaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 18/2/28.
 */
@Service("projectService")
public class ProjectBaseServiceImpl implements ProjectBaseService {

    @Resource
    private ProjectBaseMapper projectBaseMapper;
    @Override
    public void insertProjectBase(ProjectBase projectBase) {
        projectBaseMapper.insertProjectBase(projectBase);
    }
}
