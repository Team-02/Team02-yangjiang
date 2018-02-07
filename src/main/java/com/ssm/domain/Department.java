package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/7.
 */
public class Department implements Serializable{

    private int deptId;
    private String deptName;

    public Department() {
    }

    public Department(String deptName) {
        this.deptName = deptName;
    }

    @Override
    public String toString() {
        return "Department{" +
                "deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                '}';
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }
}
