package com.ssm.service;

import com.ssm.domain.BaseResult;

import com.ssm.domain.ProjectUnits;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/27哈哈.
 */
public interface ProjectUnitsService {
    BaseResult<ProjectUnits> select(String appOrgName, int pageIndex, int pageSize);
    List<ProjectUnits> selectAll();
}
