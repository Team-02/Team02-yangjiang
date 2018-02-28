package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Department;
import com.ssm.domain.JointUnit;
import com.ssm.domain.ProjectUnits;
import com.ssm.mapper.JointUnitMapper;
import com.ssm.page.PageBean;
import com.ssm.service.JointUnitService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
@Service("jointUnitService")
public class JointUnitImpl implements JointUnitService{
    @Resource
    private JointUnitMapper jointUnitMapper;

    public BaseResult<JointUnit> select(String uniteAppOrgName, int pageIndex, int pageSize) {
        BaseResult<JointUnit> baseResult = new BaseResult<JointUnit>();
        int total = jointUnitMapper.intTotal(uniteAppOrgName);
        PageBean<JointUnit> pageBean = new PageBean<JointUnit>(pageIndex+1, pageSize, total);
        pageBean.setUniteAppOrgName(uniteAppOrgName);
        List<JointUnit> jointUnitList = jointUnitMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(jointUnitList);
        return baseResult;
    }


    public List<JointUnit> selectAll() {
        return jointUnitMapper.selectAll();
    }
}
