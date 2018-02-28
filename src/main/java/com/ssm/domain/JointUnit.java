package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public class JointUnit implements Serializable{
    private int id;
    private String uniteAppOrgName;

    public JointUnit() {
    }

    public JointUnit(String uniteAppOrgName) {
        this.uniteAppOrgName = uniteAppOrgName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUniteAppOrgName() {
        return uniteAppOrgName;
    }

    public void setUniteAppOrgName(String uniteAppOrgName) {
        this.uniteAppOrgName = uniteAppOrgName;
    }

    @Override
    public String toString() {
        return "JointUnitService{" +
                "id=" + id +
                ", uniteAppOrgName='" + uniteAppOrgName + '\'' +
                '}';
    }
}
