package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;

import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
public interface StaffService {

    List<Staff> selectAll();
    BaseResult<Staff> select(String name, int pageIndex, int pageSize);

    Staff selectStaff(Staff staff);

}
