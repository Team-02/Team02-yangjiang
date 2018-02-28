package com.ssm.mapper;

import com.ssm.domain.JointUnit;
import com.ssm.domain.ProjectUnits;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface JointUnitMapper {
    List<JointUnit> pageSelect(PageBean<JointUnit> pageBean);
    Integer intTotal(String uniteAppOrgName);
    List<JointUnit> selectAll();
}
