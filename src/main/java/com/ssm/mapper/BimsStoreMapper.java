package com.ssm.mapper;

import com.ssm.domain.BimsStore;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface BimsStoreMapper {
    List<BimsStore> pageSelect(PageBean<BimsStore> pageBean);
    Integer intTotal(BimsStore bimsStore);
    List<BimsStore> selectAll();
    List<BimsStore> save(BimsStore bimsStore);
}
