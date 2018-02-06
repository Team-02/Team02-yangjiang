package com.ssm.mapper;

import com.ssm.domain.Staff;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/5.
 */
public interface StaffMapper {

    Integer insertStaff(Staff staff);
    List<Staff> selectAll();
    List<Staff> pageSelect(PageBean<Staff> pageBean);
    Integer intTotal(Staff staff);
}