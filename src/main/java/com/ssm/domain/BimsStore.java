package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY on 18/2/28哈哈.
 */
public class BimsStore implements Serializable{
    private String bimsStoreId;
    private String bimsStoreName,manageStaffNo,manageStaffName,effeteFlag,createStaffNo
            ,createStaffName;
    private String createDate;

    public BimsStore() {
    }


    public BimsStore(String bimsStoreId, String bimsStoreName, String manageStaffNo, String manageStaffName, String effeteFlag, String createStaffNo, String createStaffName, String createDate) {
        this.bimsStoreId = bimsStoreId;
        this.bimsStoreName = bimsStoreName;
        this.manageStaffNo = manageStaffNo;
        this.manageStaffName = manageStaffName;
        this.effeteFlag = effeteFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffName = createStaffName;
        this.createDate = createDate;
    }

    public String getBimsStoreId() {
        return bimsStoreId;
    }

    public void setBimsStoreId(String bimsStoreId) {
        this.bimsStoreId = bimsStoreId;
    }

    public String getBimsStoreName() {
        return bimsStoreName;
    }

    public void setBimsStoreName(String bimsStoreName) {
        this.bimsStoreName = bimsStoreName;
    }

    public String getManageStaffNo() {
        return manageStaffNo;
    }

    public void setManageStaffNo(String manageStaffNo) {
        this.manageStaffNo = manageStaffNo;
    }

    public String getManageStaffName() {
        return manageStaffName;
    }

    public void setManageStaffName(String manageStaffName) {
        this.manageStaffName = manageStaffName;
    }

    public String getEffeteFlag() {
        return effeteFlag;
    }

    public void setEffeteFlag(String effeteFlag) {
        this.effeteFlag = effeteFlag;
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
        return "BimsStore{" +
                "bimsStoreId=" + bimsStoreId +
                ", bimsStoreName='" + bimsStoreName + '\'' +
                ", manageStaffNo='" + manageStaffNo + '\'' +
                ", manageStaffName='" + manageStaffName + '\'' +
                ", effeteFlag='" + effeteFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffName='" + createStaffName + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}


