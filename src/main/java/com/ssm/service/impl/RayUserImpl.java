package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.BimsStore;
import com.ssm.domain.RayUser;
import com.ssm.mapper.RayUserMapper;
import com.ssm.page.PageBean;
import com.ssm.service.RayUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
@Service("rayUserService")
public class RayUserImpl implements RayUserService{
    @Resource
    private RayUserMapper rayUserMapper;

    @Override
    public BaseResult<RayUser> select(String staffName, String passcardNo, String orgName, String staffNo, int pageIndex, int pageSize) {
        BaseResult<RayUser> baseResult = new BaseResult<RayUser>();
        RayUser rayUser = new RayUser();
        rayUser.setStaffName(staffName);
        rayUser.setPasscardNo(passcardNo);
        rayUser.setOrgName(orgName);
        rayUser.setStaffNo(staffNo);
        int total = rayUserMapper.intTotal(rayUser);
        PageBean<RayUser> pageBean = new PageBean<RayUser>(pageIndex + 1, pageSize, total);
        pageBean.setStaffName(staffName);
        pageBean.setPasscardNo(passcardNo);
        pageBean.setOrgName(orgName);
        pageBean.setStaffNo(staffNo);
        List<RayUser> rayUserList = rayUserMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(rayUserList);
        return baseResult;
    }
}
