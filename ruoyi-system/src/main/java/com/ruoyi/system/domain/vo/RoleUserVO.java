package com.ruoyi.system.domain.vo;

import com.ruoyi.common.annotation.Excel;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 角色表 sys_role
 *
 * @author ruoyi
 */
@ApiModel
public class RoleUserVO  {

    /**
     * 角色ID
     */
    @ApiModelProperty(value = "角色序号")
    private Long roleId;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色编号")
    private String roleKey;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称")
    private String roleName;

    /**
     * 角色排序
     */
    @ApiModelProperty(value = "角色排序", hidden = true)
    @Excel(name = "角色排序")
    private String roleSort;

    /**
     * 角色状态（0正常 1停用）
     */
    @ApiModelProperty(value = "角色状态（0正常 1停用）", allowableValues = "0,1")
    @Excel(name = "角色状态", readConverterExp = "0=正常,1=停用")
    private String status;

    @ApiModelProperty(value = "用户")
    private List<UserVO> children;

    @Override
    public String toString() {
        return "RoleUserVO{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", roleSort='" + roleSort + '\'' +
                ", status='" + status + '\'' +
                ", children=" + children +
                '}';
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleSort() {
        return roleSort;
    }

    public void setRoleSort(String roleSort) {
        this.roleSort = roleSort;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRoleKey() {
        return roleKey;
    }

    public void setRoleKey(String roleKey) {
        this.roleKey = roleKey;
    }

    public List<UserVO> getChildren() {
        return children;
    }

    public void setChildren(List<UserVO> children) {
        this.children = children;
    }
}
