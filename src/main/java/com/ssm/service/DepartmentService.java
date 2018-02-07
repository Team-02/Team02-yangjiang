package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Department;
import com.ssm.domain.Staff;

/**
 * Created by dllo on 18/2/7.
 */
public interface DepartmentService {
    BaseResult<Department> select(String deptName, int pageIndex, int pageSize);
}
