package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Process;
import com.ssm.domain.Staff;
import com.ssm.mapper.ProcessMapper;
import com.ssm.page.PageBean;
import com.ssm.service.ProcessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by dllo on 18/2/8.
 */
@Service("processService")
public class ProcessServiceImpl implements ProcessService {

    @Resource
    private ProcessMapper processMapper;

    public BaseResult<Process> select(String processNumber, String applyTime, int pageIndex, int pageSize) {
        BaseResult<Process> baseResult = new BaseResult<Process>();
        Process process = new Process();
        process.setProcessNumber(processNumber);
        process.setApplyTime(applyTime);
        int total = processMapper.intTotal(process);
        PageBean<Process> pageBean = new PageBean<Process>(pageIndex + 1, pageSize, total);
        pageBean.setProcessNumber(processNumber);
        pageBean.setApplyTime(applyTime);
        List<Process> processList = processMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(processList);
        return baseResult;
    }
}
