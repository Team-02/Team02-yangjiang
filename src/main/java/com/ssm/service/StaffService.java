package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;

import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
public interface StaffService {

    List<Staff> selectAll();
    BaseResult<Staff> select(Staff staff, int pageIndex, int pageSize);

}
