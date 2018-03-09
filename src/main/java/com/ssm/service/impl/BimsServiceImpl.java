package com.ssm.service.impl;

import com.ssm.domain.BaseResult;
import com.ssm.domain.BimsStore;
import com.ssm.domain.Process;
import com.ssm.mapper.BimsStoreMapper;
import com.ssm.page.PageBean;
import com.ssm.service.BimsStoreService;
import org.junit.Test;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
@Service("bimsStoreService")
public class BimsServiceImpl implements BimsStoreService{

    @Resource
    private BimsStoreMapper bimsStoreMapper;

    @Override
    public BaseResult<BimsStore> select(String bimsStoreName, String manageStaffName, int pageIndex, int pageSize) {
        BaseResult<BimsStore> baseResult = new BaseResult<BimsStore>();
        BimsStore bimsStore = new BimsStore();
        bimsStore.setBimsStoreName(bimsStoreName);
        bimsStore.setManageStaffName(manageStaffName);
        int total = bimsStoreMapper.intTotal(bimsStore);
        PageBean<BimsStore> pageBean = new PageBean<BimsStore>(pageIndex + 1, pageSize, total);
        pageBean.setBimsStoreName(bimsStoreName);
        pageBean.setManageStaffName(manageStaffName);
        List<BimsStore> bimsStoreList = bimsStoreMapper.pageSelect(pageBean);
        baseResult.setTotal(total);
        baseResult.setData(bimsStoreList);
        return baseResult;
    }

    @Override
    public List<BimsStore> save(BimsStore bimsStore) {
        return bimsStoreMapper.save(bimsStore);
    }

    @Test
    public void abcdefghijklmnopqrstuvwxyz() {
        int abcdefghijklmnopqrstuvwxyz = 0;
        System.out.println(abcdefghijklmnopqrstuvwxyz);
    }
}
