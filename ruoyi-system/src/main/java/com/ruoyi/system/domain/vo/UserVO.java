package com.ruoyi.system.domain.vo;

import com.ruoyi.common.annotation.Excel;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 用户对象 sys_user
 *
 * @author ruoyi
 */
@ApiModel
public class UserVO {

    /**
     * 用户ID
     */
    @ApiModelProperty(value = "用户序号")
    private Long userId;

    /**
     * 用户账号
     */
    @ApiModelProperty(value = "登录名称")
    @Excel(name = "登录名称")
    private String userName;

    /**
     * 用户昵称
     */
    @ApiModelProperty(value = "用户名称")
    @Excel(name = "用户名称")
    private String nickName;

    /**
     * 帐号状态（0正常 1停用）
     */
    @ApiModelProperty(value = "帐号状态（0正常 1停用）", allowableValues = "0,1")
    private String status;

    @Override
    public String toString() {
        return "UserVO{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", nickName='" + nickName + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
