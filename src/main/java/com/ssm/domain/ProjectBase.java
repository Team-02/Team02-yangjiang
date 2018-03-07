package com.ssm.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by dllo on 18/2/28.
 */
public class ProjectBase implements Serializable {
    private String prohId;//业务主键
    private String progName;//项目名称
    private String progType;//项目类型
    private String appOrgNo;//申请单位编号
    private String appOrgName;//申请单位名称
    private String UnteAppOrgNo;//联合单位编号
    private String UnteAppOrgName;//联合单位名称
    private BigDecimal cycle;//周期
    private BigDecimal totalBudget;//总预算
    private String purpose;//目的
    private String safeDesc;//安全性
    private String peliableDesc;//可靠性
    private String econDesc;//经济性
    private String otherDesc;//其他
    private String achievementDesc;//应用性
    private String realUser;//实际用户
    private String potentialUser;//潜在用户
    private String content;
    private String primeStaffNo;
    private String primeUserDesc;
    private String rightDesc;
    private String benefistDesc;
    private String fixedAssets;//固定资产
    private String acceptStand;
    private String engineerEvaluate;
    private String accordEvaluate;
    private String applicationEvaluate;
    private String totalEvaluate;
    private String pmsRequite;
    private String advice;//建议
    private String effectFlag;//是否有效
    private String createStaffNo;//创建人编号
    private String createStaffNam;//创建人姓名
    private String createDate;//创建人时间

    public ProjectBase() {
    }

    public ProjectBase(String prohId, String progName, String progType, String appOrgNo, String appOrgName, String unteAppOrgNo, String unteAppOrgName, BigDecimal cycle, BigDecimal totalBudget, String purpose, String safeDesc, String peliableDesc, String econDesc, String otherDesc, String achievementDesc, String realUser, String potentialUser, String content, String primeStaffNo, String primeUserDesc, String rightDesc, String benefistDesc, String fixedAssets, String acceptStand, String engineerEvaluate, String accordEvaluate, String applicationEvaluate, String totalEvaluate, String pmsRequite, String advice, String effectFlag, String createStaffNo, String createStaffNam, String createDate) {
        this.prohId = prohId;
        this.progName = progName;
        this.progType = progType;
        this.appOrgNo = appOrgNo;
        this.appOrgName = appOrgName;
        UnteAppOrgNo = unteAppOrgNo;
        UnteAppOrgName = unteAppOrgName;
        this.cycle = cycle;
        totalBudget = totalBudget;
        this.purpose = purpose;
        this.safeDesc = safeDesc;
        this.peliableDesc = peliableDesc;
        this.econDesc = econDesc;
        this.otherDesc = otherDesc;
        this.achievementDesc = achievementDesc;
        this.realUser = realUser;
        this.potentialUser = potentialUser;
        this.content = content;
        this.primeStaffNo = primeStaffNo;
        this.primeUserDesc = primeUserDesc;
        this.rightDesc = rightDesc;
        this.benefistDesc = benefistDesc;
        this.fixedAssets = fixedAssets;
        this.acceptStand = acceptStand;
        this.engineerEvaluate = engineerEvaluate;
        this.accordEvaluate = accordEvaluate;
        this.applicationEvaluate = applicationEvaluate;
        this.totalEvaluate = totalEvaluate;
        this.pmsRequite = pmsRequite;
        this.advice = advice;
        this.effectFlag = effectFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffNam = createStaffNam;
        this.createDate = createDate;
    }

    public String getProhId() {
        return prohId;
    }

    public void setProhId(String prohId) {
        this.prohId = prohId;
    }

    public String getProgName() {
        return progName;
    }

    public void setProgName(String progName) {
        this.progName = progName;
    }

    public String getProgType() {
        return progType;
    }

    public void setProgType(String progType) {
        this.progType = progType;
    }

    public String getAppOrgNo() {
        return appOrgNo;
    }

    public void setAppOrgNo(String appOrgNo) {
        this.appOrgNo = appOrgNo;
    }

    public String getAppOrgName() {
        return appOrgName;
    }

    public void setAppOrgName(String appOrgName) {
        this.appOrgName = appOrgName;
    }

    public String getUnteAppOrgNo() {
        return UnteAppOrgNo;
    }

    public void setUnteAppOrgNo(String unteAppOrgNo) {
        UnteAppOrgNo = unteAppOrgNo;
    }

    public String getUnteAppOrgName() {
        return UnteAppOrgName;
    }

    public void setUnteAppOrgName(String unteAppOrgName) {
        UnteAppOrgName = unteAppOrgName;
    }

    public BigDecimal getCycle() {
        return cycle;
    }

    public void setCycle(BigDecimal cycle) {
        this.cycle = cycle;
    }

    public BigDecimal getTotalBudget() {
        return totalBudget;
    }

    public void setTotalBudget(BigDecimal totalBudget) {
        this.totalBudget = totalBudget;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getSafeDesc() {
        return safeDesc;
    }

    public void setSafeDesc(String safeDesc) {
        this.safeDesc = safeDesc;
    }

    public String getPeliableDesc() {
        return peliableDesc;
    }

    public void setPeliableDesc(String peliableDesc) {
        this.peliableDesc = peliableDesc;
    }

    public String getEconDesc() {
        return econDesc;
    }

    public void setEconDesc(String econDesc) {
        this.econDesc = econDesc;
    }

    public String getOtherDesc() {
        return otherDesc;
    }

    public void setOtherDesc(String otherDesc) {
        this.otherDesc = otherDesc;
    }

    public String getAchievementDesc() {
        return achievementDesc;
    }

    public void setAchievementDesc(String achievementDesc) {
        this.achievementDesc = achievementDesc;
    }

    public String getRealUser() {
        return realUser;
    }

    public void setRealUser(String realUser) {
        this.realUser = realUser;
    }

    public String getPotentialUser() {
        return potentialUser;
    }

    public void setPotentialUser(String potentialUser) {
        this.potentialUser = potentialUser;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPrimeStaffNo() {
        return primeStaffNo;
    }

    public void setPrimeStaffNo(String primeStaffNo) {
        this.primeStaffNo = primeStaffNo;
    }

    public String getPrimeUserDesc() {
        return primeUserDesc;
    }

    public void setPrimeUserDesc(String primeUserDesc) {
        this.primeUserDesc = primeUserDesc;
    }

    public String getRightDesc() {
        return rightDesc;
    }

    public void setRightDesc(String rightDesc) {
        this.rightDesc = rightDesc;
    }

    public String getBenefistDesc() {
        return benefistDesc;
    }

    public void setBenefistDesc(String benefistDesc) {
        this.benefistDesc = benefistDesc;
    }

    public String getFixedAssets() {
        return fixedAssets;
    }

    public void setFixedAssets(String fixedAssets) {
        this.fixedAssets = fixedAssets;
    }

    public String getAcceptStand() {
        return acceptStand;
    }

    public void setAcceptStand(String acceptStand) {
        this.acceptStand = acceptStand;
    }

    public String getEngineerEvaluate() {
        return engineerEvaluate;
    }

    public void setEngineerEvaluate(String engineerEvaluate) {
        this.engineerEvaluate = engineerEvaluate;
    }

    public String getAccordEvaluate() {
        return accordEvaluate;
    }

    public void setAccordEvaluate(String accordEvaluate) {
        this.accordEvaluate = accordEvaluate;
    }

    public String getApplicationEvaluate() {
        return applicationEvaluate;
    }

    public void setApplicationEvaluate(String applicationEvaluate) {
        this.applicationEvaluate = applicationEvaluate;
    }

    public String getTotalEvaluate() {
        return totalEvaluate;
    }

    public void setTotalEvaluate(String totalEvaluate) {
        this.totalEvaluate = totalEvaluate;
    }

    public String getPmsRequite() {
        return pmsRequite;
    }

    public void setPmsRequite(String pmsRequite) {
        this.pmsRequite = pmsRequite;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
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

    public String getCreateStaffNam() {
        return createStaffNam;
    }

    public void setCreateStaffNam(String createStaffNam) {
        this.createStaffNam = createStaffNam;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "ProjectBase{" +
                "prohId='" + prohId + '\'' +
                ", progName='" + progName + '\'' +
                ", progType='" + progType + '\'' +
                ", appOrgNo='" + appOrgNo + '\'' +
                ", appOrgName='" + appOrgName + '\'' +
                ", UnteAppOrgNo='" + UnteAppOrgNo + '\'' +
                ", UnteAppOrgName='" + UnteAppOrgName + '\'' +
                ", cycle=" + cycle +
                ", totalBudget=" + totalBudget +
                ", purpose='" + purpose + '\'' +
                ", safeDesc='" + safeDesc + '\'' +
                ", peliableDesc='" + peliableDesc + '\'' +
                ", econDesc='" + econDesc + '\'' +
                ", otherDesc='" + otherDesc + '\'' +
                ", achievementDesc='" + achievementDesc + '\'' +
                ", realUser='" + realUser + '\'' +
                ", potentialUser='" + potentialUser + '\'' +
                ", content='" + content + '\'' +
                ", primeStaffNo='" + primeStaffNo + '\'' +
                ", primeUserDesc='" + primeUserDesc + '\'' +
                ", rightDesc='" + rightDesc + '\'' +
                ", benefistDesc='" + benefistDesc + '\'' +
                ", fixedAssets='" + fixedAssets + '\'' +
                ", acceptStand='" + acceptStand + '\'' +
                ", engineerEvaluate='" + engineerEvaluate + '\'' +
                ", accordEvaluate='" + accordEvaluate + '\'' +
                ", applicationEvaluate='" + applicationEvaluate + '\'' +
                ", totalEvaluate='" + totalEvaluate + '\'' +
                ", pmsRequite='" + pmsRequite + '\'' +
                ", advice='" + advice + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffNam='" + createStaffNam + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}
