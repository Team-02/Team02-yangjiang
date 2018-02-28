package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.JointUnit;


import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface JointUnitService {
    BaseResult<JointUnit> select(String uniteAppOrgName, int pageIndex, int pageSize);
    List<JointUnit> selectAll();
}
