package com.ssm.service.impl;

import com.ssm.domain.Satellite;
import com.ssm.mapper.SatelliteMapper;
import com.ssm.service.SatelliteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/3/9哈哈.
 */
@Service("satelliteService")
public class SatelliteImpl implements SatelliteService{

    @Resource
    private SatelliteMapper satelliteMapper;

    @Override
    public Satellite selectBySatelliteName(String stateName) {
        return satelliteMapper.selectBySatelliteName(stateName);
    }
}
