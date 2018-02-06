package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Staff;
import com.ssm.mapper.StaffMapper;
import com.ssm.page.PageBean;
import com.ssm.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    public BaseResult<Staff> select(Staff staff, int pageIndex, int pageSize) {
        BaseResult<Staff> baseResult = new BaseResult<Staff>();
        int total = staffMapper.intTotal(staff);
        PageBean<Staff> pageBean = new PageBean<Staff>(pageIndex+1, pageSize, total);
        pageBean.setParameter(staff);
        List<Staff> staffList = staffMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(staffList);
        return baseResult;
    }
}
