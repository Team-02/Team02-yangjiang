package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.Process;
import com.ssm.domain.Staff;

import java.util.List;

/**
 * Created by dllo on 18/2/8.
 */
public interface ProcessService {

    BaseResult<Process> select(String processNumber,String applyTime,
                               String applicantPerson,String deptName,
                               String processName, String print,
                               int pageIndex, int pageSize);
//    List<Process> selectAll();
}
