package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Department;
import com.ssm.domain.Staff;
import com.ssm.mapper.DepartmentMapper;
import com.ssm.page.PageBean;
import com.ssm.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/7.
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{

    @Resource
    private DepartmentMapper departmentMapper;

    public BaseResult<Department> select(String deptName, int pageIndex, int pageSize) {
        BaseResult<Department> baseResult = new BaseResult<Department>();
        int total = departmentMapper.intTotal(deptName);
        PageBean<Department> pageBean = new PageBean<Department>(pageIndex+1, pageSize, total);
        pageBean.setDeptName(deptName);
        List<Department> departmentList = departmentMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(departmentList);
        return baseResult;
    }
}
