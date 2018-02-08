package com.ssm.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by dllo on 18/2/8.
 */
public class Process implements Serializable{

    private int id;
    private String processNumber,processName,deptName,currentLink,applicantPerson;
    private Date applyTime;
    private String print;

    public Process() {
    }

    @Override
    public String toString() {
        return "Process{" +
                "id=" + id +
                ", processNumber='" + processNumber + '\'' +
                ", processName='" + processName + '\'' +
                ", deptName='" + deptName + '\'' +
                ", currentLink='" + currentLink + '\'' +
                ", applicantPerson='" + applicantPerson + '\'' +
                ", applyTime=" + applyTime +
                ", print='" + print + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProcessNumber() {
        return processNumber;
    }

    public void setProcessNumber(String processNumber) {
        this.processNumber = processNumber;
    }

    public String getProcessName() {
        return processName;
    }

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getCurrentLink() {
        return currentLink;
    }

    public void setCurrentLink(String currentLink) {
        this.currentLink = currentLink;
    }

    public String getApplicantPerson() {
        return applicantPerson;
    }

    public void setApplicantPerson(String applicantPerson) {
        this.applicantPerson = applicantPerson;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    public String getPrint() {
        return print;
    }

    public void setPrint(String print) {
        this.print = print;
    }

    public Process(String processNumber, String processName, String deptName, String currentLink, String applicantPerson, Date applyTime, String print) {
        this.processNumber = processNumber;
        this.processName = processName;
        this.deptName = deptName;
        this.currentLink = currentLink;
        this.applicantPerson = applicantPerson;
        this.applyTime = applyTime;
        this.print = print;
    }
}
