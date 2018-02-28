package com.ssm.mapper;

import com.ssm.domain.ProjectUnits;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/27哈哈.
 */
public interface ProjectUnitsMapper {
    List<ProjectUnits> pageSelect(PageBean<ProjectUnits> pageBean);
    Integer intTotal(String deptName);
    List<ProjectUnits> selectAll();
}
