package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/3/9哈哈.
 */
public class Satellite implements Serializable{
    private int sid;
    private String stateName;

    public Satellite() {
    }

    public Satellite(String stateName) {
        this.stateName = stateName;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    @Override
    public String toString() {
        return "Satellite{" +
                "sid=" + sid +
                ", stateName='" + stateName + '\'' +
                '}';
    }
}
