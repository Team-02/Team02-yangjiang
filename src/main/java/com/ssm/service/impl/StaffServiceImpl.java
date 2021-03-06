package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;
import com.ssm.mapper.StaffMapper;
import com.ssm.page.PageBean;
import com.ssm.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 18/2/5.
 */
@Service("staffService")
public class StaffServiceImpl implements StaffService {

    @Resource
    private StaffMapper staffMapper;

    public List<Staff> selectAll() {
        return staffMapper.selectAll();
    }

    public BaseResult<Staff> select(String name, int pageIndex, int pageSize) {
        BaseResult<Staff> baseResult = new BaseResult<Staff>();
        int total = staffMapper.intTotal(name);
        PageBean<Staff> pageBean = new PageBean<Staff>(pageIndex+1, pageSize, total);
        pageBean.setName(name);
        List<Staff> staffList = staffMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(staffList);
        return baseResult;
    }

    @Override
    public Staff selectStaff(Staff staff) {
        return staffMapper.selectStaff(staff);
    }

    @Override
    public Set<String> getRoles(String staffName) {
        return null;
    }

    @Override
    public Set<String> getPermissions(String staffName) {
        return null;
    }

    @Override
    public Staff selectByStaffLoginName(String staffLoginName) {
        return staffMapper.selectByStaffLoginName(staffLoginName);
    }
}
