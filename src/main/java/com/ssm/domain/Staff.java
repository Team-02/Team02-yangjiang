package com.ssm.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/5.
 */
public class Staff implements Serializable {
    private String id;
    private String name;
    private String password;
    private String loginName;
    private String email;

    public Staff() {
    }

    public Staff(String id, String name, String password, String loginName, String email) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.loginName = loginName;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", loginName='" + loginName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
