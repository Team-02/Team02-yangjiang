package com.ssm.mapper;

import com.ssm.domain.Process;
import com.ssm.domain.Staff;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by dllo on 18/2/8.
 */
public interface ProcessMapper {
    List<Process> pageSelect(PageBean<Process> pageBean);
    Integer intTotal(String processNumber);
    List<Process> selectAll();
}
