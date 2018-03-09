package com.ssm.service;

import com.ssm.domain.BaseResult;
import com.ssm.domain.BimsStore;
import com.ssm.domain.RayUser;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface RayUserService {
    BaseResult<RayUser> select
            (String staffName, String passcardNo,String orgName,String staffNo,
                               int pageIndex, int pageSize);

}
