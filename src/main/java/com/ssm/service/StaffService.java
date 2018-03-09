package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;

import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/5.
 */
public interface StaffService {

    List<Staff> selectAll();
    BaseResult<Staff> select(String name, int pageIndex, int pageSize);

    Staff selectStaff(Staff staff);

    Set<String> getRoles(String staffName);

    Set<String> getPermissions(String staffName);

    // 通过登录名查询用户
    Staff selectByStaffLoginName(String staffLoginName);

}

