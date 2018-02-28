package com.ssm.mapper;

import com.ssm.domain.Department;
import com.ssm.domain.Staff;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/7.
 */
public interface DepartmentMapper {

    List<Department> pageSelect(PageBean<Department> pageBean);
    Integer intTotal(String deptName);
    List<Department> selectAll();
}
