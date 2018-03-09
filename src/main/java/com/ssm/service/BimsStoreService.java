package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.BimsStore;
import com.ssm.domain.Process;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface BimsStoreService {
    BaseResult<BimsStore> select(String bimsStoreName, String manageStaffName, int pageIndex, int pageSize);

    List<BimsStore> save(BimsStore bimsStore);
}
