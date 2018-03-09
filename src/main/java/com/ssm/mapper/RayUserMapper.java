package com.ssm.mapper;

import com.ssm.domain.BimsStore;
import com.ssm.domain.RayUser;
import com.ssm.page.PageBean;

import java.util.List;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public interface RayUserMapper {
    List<RayUser> pageSelect(PageBean<RayUser> pageBean);
    Integer intTotal(RayUser rayUser);
    List<RayUser> selectAll();
}
