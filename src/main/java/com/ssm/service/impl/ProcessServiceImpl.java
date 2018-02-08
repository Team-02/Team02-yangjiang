package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Process;
import com.ssm.domain.Staff;
import com.ssm.mapper.ProcessMapper;
import com.ssm.page.PageBean;
import com.ssm.service.ProcessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/8.
 */
@Service("processService")
public class ProcessServiceImpl implements ProcessService{

    @Resource
    private ProcessMapper processMapper;
    public BaseResult<Process> select(String processNumber, int pageIndex, int pageSize) {
        BaseResult<Process> baseResult = new BaseResult<Process>();
        int total = processMapper.intTotal(processNumber);
        PageBean<Process> pageBean = new PageBean<Process>(pageIndex+1, pageSize, total);
        pageBean.setProcessNumber(processNumber);
        List<Process> processList = processMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(processList);
        return baseResult;
    }
}
