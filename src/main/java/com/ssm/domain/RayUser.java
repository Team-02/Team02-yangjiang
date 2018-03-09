package com.ssm.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public class RayUser implements Serializable{
    private String rayStaffId;
    private String staffNo,staffName,passcardNo,orgId,orgName,rtRank,rtNo;
    private String effectBegDate,effectEndDate;
    private String effectFlag,createStaffNo,createStaffName,createDate;

    public RayUser() {
    }

    public RayUser(String rayStaffId, String staffNo, String staffName, String passcardNo, String orgId, String orgName, String rtRank, String rtNo, String effectBegDate, String effectEndDate, String effectFlag, String createStaffNo, String createStaffName, String createDate) {
        this.rayStaffId = rayStaffId;
        this.staffNo = staffNo;
        this.staffName = staffName;
        this.passcardNo = passcardNo;
        this.orgId = orgId;
        this.orgName = orgName;
        this.rtRank = rtRank;
        this.rtNo = rtNo;
        this.effectBegDate = effectBegDate;
        this.effectEndDate = effectEndDate;
        this.effectFlag = effectFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffName = createStaffName;
        this.createDate = createDate;
    }

    public String getRayStaffId() {
        return rayStaffId;
    }

    public void setRayStaffId(String rayStaffId) {
        this.rayStaffId = rayStaffId;
    }

    public String getStaffNo() {
        return staffNo;
    }

    public void setStaffNo(String staffNo) {
        this.staffNo = staffNo;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getPasscardNo() {
        return passcardNo;
    }

    public void setPasscardNo(String passcardNo) {
        this.passcardNo = passcardNo;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getRtRank() {
        return rtRank;
    }

    public void setRtRank(String rtRank) {
        this.rtRank = rtRank;
    }

    public String getRtNo() {
        return rtNo;
    }

    public void setRtNo(String rtNo) {
        this.rtNo = rtNo;
    }

    public String getEffectBegDate() {
        return effectBegDate;
    }

    public void setEffectBegDate(String effectBegDate) {
        this.effectBegDate = effectBegDate;
    }

    public String getEffectEndDate() {
        return effectEndDate;
    }

    public void setEffectEndDate(String effectEndDate) {
        this.effectEndDate = effectEndDate;
    }

    public String getEffectFlag() {
        return effectFlag;
    }

    public void setEffectFlag(String effectFlag) {
        this.effectFlag = effectFlag;
    }

    public String getCreateStaffNo() {
        return createStaffNo;
    }

    public void setCreateStaffNo(String createStaffNo) {
        this.createStaffNo = createStaffNo;
    }

    public String getCreateStaffName() {
        return createStaffName;
    }

    public void setCreateStaffName(String createStaffName) {
        this.createStaffName = createStaffName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "RayUser{" +
                "rayStaffId='" + rayStaffId + '\'' +
                ", staffNo='" + staffNo + '\'' +
                ", staffName='" + staffName + '\'' +
                ", passcardNo='" + passcardNo + '\'' +
                ", orgId='" + orgId + '\'' +
                ", orgName='" + orgName + '\'' +
                ", rtRank='" + rtRank + '\'' +
                ", rtNo='" + rtNo + '\'' +
                ", effectBegDate='" + effectBegDate + '\'' +
                ", effectEndDate='" + effectEndDate + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffName='" + createStaffName + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}
