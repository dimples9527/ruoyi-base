package com.ruoyi.web.controller.tool;

import com.ruoyi.common.core.controller.BaseController;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * swagger 接口
 * 
 * @author ruoyi
 */
@Api(tags = "若依系统管理接口模块")
@Controller
@RequestMapping("/tool/swagger")
public class SwaggerController extends BaseController
{
    @ApiOperation(value = "接口文档访问地址")
    @PreAuthorize("@ss.hasPermi('tool:swagger:view')")
    @GetMapping()
    public String index()
    {
        return redirect("/doc.html");
    }
}
