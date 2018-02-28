package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/27哈哈.
 */
public class ProjectUnits implements Serializable{
    private int id;
    private String appOrgName;

    public ProjectUnits() {
    }

    public ProjectUnits(String appOrgName) {
        this.appOrgName = appOrgName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAppOrgName() {
        return appOrgName;
    }

    public void setAppOrgName(String appOrgName) {
        this.appOrgName = appOrgName;
    }

    @Override
    public String toString() {
        return "ProjectUnits{" +
                "id=" + id +
                ", appOrgName='" + appOrgName + '\'' +
                '}';
    }
}
