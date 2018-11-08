package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `user` (
 *   `user_id` varchar(36) NOT NULL,
 *   `username` varchar(36) NOT NULL,
 *   `password` varchar(36) NOT NULL,
 *   `user_niko` varchar(36) NOT NULL DEFAULT '小萌新' COMMENT '昵称',
 *   `user_img` varchar(50) DEFAULT NULL COMMENT '用户头像',
 *   `user_email` varchar(36) NOT NULL,
 *   `user_sex` int(2) NOT NULL DEFAULT '1' COMMENT '1男2女',
 *   `user_telephone` bigint(12) DEFAULT NULL COMMENT '手机号',
 *   `user_role` int(2) NOT NULL DEFAULT '1' COMMENT '1普通用户，2管理员',
 *   `user_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常 2删除',
 *   PRIMARY KEY (`user_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class User implements Serializable {

    private String userId;
    private String username;
    private String password;
    private String userNiko;
    private String userImg;
    private String userEmail;
    private Integer userSex;
    private Long userTelephone;
    private Integer userRole;
    private Integer userFlag;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserNiko() {
        return userNiko;
    }

    public void setUserNiko(String userNiko) {
        this.userNiko = userNiko;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    public Long getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(Long userTelephone) {
        this.userTelephone = userTelephone;
    }

    public Integer getUserRole() {
        return userRole;
    }

    public void setUserRole(Integer userRole) {
        this.userRole = userRole;
    }

    public Integer getUserFlag() {
        return userFlag;
    }

    public void setUserFlag(Integer userFlag) {
        this.userFlag = userFlag;
    }
}
