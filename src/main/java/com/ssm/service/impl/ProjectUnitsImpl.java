package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Department;
import com.ssm.domain.ProjectUnits;
import com.ssm.mapper.ProjectUnitsMapper;
import com.ssm.page.PageBean;
import com.ssm.service.ProjectUnitsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/27哈哈.
 */
@Service("projectUnitsService")
public class ProjectUnitsImpl implements ProjectUnitsService{
    @Resource
    private ProjectUnitsMapper projectUnitsMapper;

    public BaseResult<ProjectUnits> select(String appOrgName, int pageIndex, int pageSize) {
        BaseResult<ProjectUnits> baseResult = new BaseResult<ProjectUnits>();
        int total = projectUnitsMapper.intTotal(appOrgName);
        PageBean<ProjectUnits> pageBean = new PageBean<ProjectUnits>(pageIndex+1, pageSize, total);
        pageBean.setAppOrgName(appOrgName);
        List<ProjectUnits> projectUnitsList = projectUnitsMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(projectUnitsList);
        return baseResult;
    }

    public List<ProjectUnits> selectAll() {
        return projectUnitsMapper.selectAll();
    }
}
