
create table ruoyi.gen_table
(
    table_id BIGINT(19) default $i(^ruoyi.gentableD),
    table_name VARCHAR(200) default '$c(0)',
    table_comment VARCHAR(500) default '$c(0)',
    sub_table_name VARCHAR(64),
    sub_table_fk_name VARCHAR(64),
    class_name VARCHAR(100) default '$c(0)',
    tpl_category VARCHAR(200) default '"crud"',
    package_name VARCHAR(100),
    module_name VARCHAR(30),
    business_name VARCHAR(30),
    function_name VARCHAR(50),
    function_author VARCHAR(50),
    gen_type VARCHAR(1) default '0',
    gen_path VARCHAR(200) default '"/"',
    options VARCHAR(1000),
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

create table ruoyi.gen_table_column
(
    column_id BIGINT(19) default $i(^ruoyi.gentablecolumnD),
    table_id VARCHAR(64),
    column_name VARCHAR(200),
    column_comment VARCHAR(500),
    column_type VARCHAR(100),
    java_type VARCHAR(500),
    java_field VARCHAR(200),
    is_pk VARCHAR(1),
    is_increment VARCHAR(1),
    is_required VARCHAR(1),
    is_insert VARCHAR(1),
    is_edit VARCHAR(1),
    is_list VARCHAR(1),
    is_query VARCHAR(1),
    query_type VARCHAR(200) default '"EQ"',
    html_type VARCHAR(200),
    dict_type VARCHAR(200) default '$c(0)',
    sort INTEGER,
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3)
);

# drop table ruoyi.sys_config;

create table ruoyi.sys_config
(
    config_id INTEGER default $i(^ruoyi.sysconfigD)
        constraint SYS_CONFIGPKey2
        primary key,
    config_name VARCHAR(100) default '$c(0)',
    config_key VARCHAR(100) default '$c(0)',
    config_value VARCHAR(500) default '$c(0)',
    config_type VARCHAR(1) default '"N"',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

INSERT INTO ruoyi.sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-02-24 09:18:55.000', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO ruoyi.sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-02-24 09:18:55.000', '', null, '初始化密码 123456');
INSERT INTO ruoyi.sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2021-02-24 09:18:55.000', 'admin', '2021-02-25 17:29:17.000', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO ruoyi.sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark) VALUES (4, '二次验证实体实现', 'sys.user.verification.entity', 'com.ruoyi.framework.verification.domain.PhoneVerification.java', 'N', 'admin', '2021-04-28 16:22:26.000', 'admin', '2021-04-28 16:23:40.000', null);
INSERT INTO ruoyi.sys_config (config_id, config_name, config_key, config_value, config_type, create_by, create_time, update_by, update_time, remark) VALUES (5, '二次验证服务实现', 'sys.user.verification.service', 'PhoneVerificationServiceImpl', 'N', 'admin', '2021-04-28 16:24:49.000', '', null, null);

# drop table ruoyi.sys_dept;

create table ruoyi.sys_dept
(
    dept_id BIGINT(19) default $i(^ruoyi.sysdeptD)
        constraint SYS_DEPTPKey2
        primary key,
    parent_id BIGINT(19) default 0,
    ancestors VARCHAR(50) default '$c(0)',
    dept_name VARCHAR(30) default '$c(0)',
    order_num INTEGER default 0,
    leader VARCHAR(20),
    phone VARCHAR(11),
    email VARCHAR(50),
    status VARCHAR(1) default '0',
    del_flag VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3)
);

INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (1, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', 'admin', '2021-04-13 11:27:56.000');
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (2, 1, '0,1', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (3, 1, '0,1', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (4, 2, '0,1,2', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (5, 2, '0,1,2', '1', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (6, 2, '0,1,2', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (7, 2, '0,1,2', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (8, 2, '0,1,2', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:36.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (9, 3, '0,1,3', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:37.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (10, 3, '0,1,3', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-24 09:18:37.000', '', null);
INSERT INTO ruoyi.sys_dept (dept_id, parent_id, ancestors, dept_name, order_num, leader, phone, email, status, del_flag, create_by, create_time, update_by, update_time) VALUES (11, 1, '0,1', '研发部', 1, null, null, null, '0', '0', 'admin', '2021-02-25 17:12:59.000', '', null);

# drop table ruoyi.sys_dict_data;

create table ruoyi.sys_dict_data
(
    dict_code BIGINT(19) default $i(^ruoyi.sysdictdataD)
        constraint SYS_DICT_DATAPKey2
        primary key,
    dict_sort INTEGER default 0,
    dict_label VARCHAR(100) default '$c(0)',
    dict_value VARCHAR(100) default '$c(0)',
    dict_type VARCHAR(100) default '$c(0)',
    css_class VARCHAR(100),
    list_class VARCHAR(100),
    is_default VARCHAR(1) default '"N"',
    status VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-02-24 09:18:52.000', '', null, '性别男');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-02-24 09:18:52.000', '', null, '性别女');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '性别未知');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '显示菜单');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '隐藏菜单');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '正常状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '停用状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '正常状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '停用状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '默认分组');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-02-24 09:18:53.000', '', null, '系统分组');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '系统默认是');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '系统默认否');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '通知');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '公告');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '正常状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '关闭状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '新增操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '修改操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '删除操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '授权操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '导出操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '导入操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '强退操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-24 09:18:54.000', '', null, '生成操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:55.000', '', null, '清空操作');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-02-24 09:18:55.000', '', null, '正常状态');
INSERT INTO ruoyi.sys_dict_data (dict_code, dict_sort, dict_label, dict_value, dict_type, css_class, list_class, is_default, status, create_by, create_time, update_by, update_time, remark) VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-02-24 09:18:55.000', '', null, '停用状态');

# drop table ruoyi.sys_dict_type;

create table ruoyi.sys_dict_type
(
    dict_id BIGINT(19) default $i(^ruoyi.sysdicttypeD)
        constraint SYS_DICT_TYPEPKey2
        primary key,
    dict_name VARCHAR(100) default '$c(0)',
    dict_type VARCHAR(100) default '$c(0)'
        constraint SYS_DICT_TYPEUnique3
        unique,
    status VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-02-24 09:18:50.000', '', null, '用户性别列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-02-24 09:18:50.000', '', null, '菜单状态列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-02-24 09:18:51.000', '', null, '系统开关列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-02-24 09:18:51.000', '', null, '任务状态列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-02-24 09:18:51.000', '', null, '任务分组列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-02-24 09:18:51.000', '', null, '系统是否列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-02-24 09:18:51.000', '', null, '通知类型列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-02-24 09:18:52.000', '', null, '通知状态列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-02-24 09:18:52.000', '', null, '操作类型列表');
INSERT INTO ruoyi.sys_dict_type (dict_id, dict_name, dict_type, status, create_by, create_time, update_by, update_time, remark) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-02-24 09:18:52.000', '', null, '登录状态列表');

# drop table ruoyi.sys_job;

create table ruoyi.sys_job
(
    job_id BIGINT(19) default $i(^ruoyi.sysjobD)
        constraint SYS_JOBPKey4
        primary key,
    job_name VARCHAR(64) default '$c(0)',
    job_group VARCHAR(64) default '"DEFAULT"',
    invoke_target VARCHAR(500) not null,
    cron_expression VARCHAR(255) default '$c(0)',
    misfire_policy VARCHAR(20) default '3',
    concurrent VARCHAR(1) default '1',
    status VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500) default '$c(0)'
);

INSERT INTO ruoyi.sys_job (job_id, job_name, job_group, invoke_target, cron_expression, misfire_policy, concurrent, status, create_by, create_time, update_by, update_time, remark) VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-02-24 09:18:55.000', '', null, '');

# drop table ruoyi.sys_job_log;

create table ruoyi.sys_job_log
(
    job_log_id BIGINT(19) default $i(^ruoyi.sysjoblogD)
        constraint SYS_JOB_LOGPKey5
        primary key,
    job_name VARCHAR(64) not null,
    job_group VARCHAR(64) not null,
    invoke_target VARCHAR(500) not null,
    job_message VARCHAR(500),
    status VARCHAR(1) default '0',
    exception_info VARCHAR(2000) default '$c(0)',
    create_time TIMESTAMP(23,3)
    );

# drop table ruoyi.sys_logininfor;

create table ruoyi.sys_logininfor
(
    info_id BIGINT(19) default $i(^ruoyi.syslogininforD)
        constraint SYS_LOGININFORPKey2
        primary key,
    user_name VARCHAR(50) default '$c(0)',
    ipaddr VARCHAR(50) default '$c(0)',
    login_location VARCHAR(255) default '$c(0)',
    browser VARCHAR(50) default '$c(0)',
    os VARCHAR(50) default '$c(0)',
    status VARCHAR(1) default '0',
    msg VARCHAR(255) default '$c(0)',
    login_time TIMESTAMP(23,3)
    );

# drop table ruoyi.sys_menu;

create table ruoyi.sys_menu
(
    menu_id BIGINT(19) default $i(^ruoyi.sysmenuD)
        constraint SYS_MENUPKey3
        primary key,
    menu_name VARCHAR(50) not null,
    parent_id BIGINT(19) default 0,
    order_num INTEGER default 0,
    path VARCHAR(200) default '$c(0)',
    component VARCHAR(255),
    is_frame INTEGER default 1,
    is_cache INTEGER default 0,
    menu_type VARCHAR(1) default '$c(0)',
    visible VARCHAR(1) default '0',
    status VARCHAR(1) default '0',
    perms VARCHAR(100),
    icon VARCHAR(100) default '"#"',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500) default '$c(0)'
);

INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (1, '系统管理', 0, 2, 'system', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-02-24 09:18:38.000', 'admin', '2021-03-03 16:41:14.000', '系统管理目录');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (2, '系统监控', 0, 3, 'monitor', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-02-24 09:18:38.000', 'admin', '2021-03-03 16:41:20.000', '系统监控目录');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (3, '系统工具', 0, 4, 'tool', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-02-24 09:18:38.000', 'admin', '2021-03-03 16:41:26.000', '系统工具目录');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (4, '组织架构', 0, 6, 'organization', '', 1, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-02-24 09:18:38.000', 'admin', '2021-03-18 19:32:40.000', '若依官网地址');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (5, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-02-24 09:18:38.000', '', null, '用户管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (6, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-02-24 09:18:38.000', '', null, '角色管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (7, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-02-24 09:18:38.000', '', null, '菜单管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (8, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-02-24 09:18:38.000', '', null, '部门管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (9, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-02-24 09:18:38.000', '', null, '岗位管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (10, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-02-24 09:18:38.000', '', null, '字典管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (11, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-02-24 09:18:38.000', '', null, '参数设置菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (12, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-02-24 09:18:38.000', '', null, '通知公告菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (13, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-02-24 09:18:38.000', '', null, '日志管理菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (14, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-02-24 09:18:38.000', '', null, '在线用户菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (15, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '1', '', 'job', 'admin', '2021-02-24 09:18:38.000', 'admin', '2021-03-18 20:29:50.000', '定时任务菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (16, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-02-24 09:18:38.000', '', null, '数据监控菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (17, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-02-24 09:18:38.000', '', null, '服务监控菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (18, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-02-24 09:18:38.000', '', null, '缓存监控菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (19, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-02-24 09:18:39.000', '', null, '表单构建菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (20, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-02-24 09:18:39.000', '', null, '代码生成菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (21, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-02-24 09:18:39.000', 'admin', '2021-02-26 10:05:03.000', '系统接口菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (22, '操作日志', 13, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-02-24 09:18:39.000', '', null, '操作日志菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (23, '登录日志', 13, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-02-24 09:18:39.000', '', null, '登录日志菜单');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (24, '用户查询', 5, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (25, '用户新增', 5, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (26, '用户修改', 5, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (27, '用户删除', 5, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (28, '用户导出', 5, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (29, '用户导入', 5, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-02-24 09:18:39.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (30, '重置密码', 5, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (31, '角色查询', 6, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (32, '角色新增', 6, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (33, '角色修改', 6, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (34, '角色删除', 6, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (35, '角色导出', 6, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-02-24 09:18:40.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (36, '菜单查询', 7, 1, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:40.000', 'admin', '2021-03-11 16:38:48.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (37, '菜单新增', 7, 2, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:40.000', 'admin', '2021-03-11 16:38:55.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (38, '菜单修改', 7, 3, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:38:40.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (39, '菜单删除', 7, 4, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:39:01.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (40, '部门查询', 8, 1, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:05:19.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (41, '部门新增', 8, 2, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:05:34.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (42, '部门修改', 8, 3, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:35.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (43, '部门删除', 8, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-02-24 09:18:41.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (44, '岗位查询', 9, 1, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:02.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (45, '岗位新增', 9, 2, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:08.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (46, '岗位修改', 9, 3, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:14.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (47, '岗位删除', 9, 4, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:22.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (48, '岗位导出', 9, 5, '', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:41.000', 'admin', '2021-03-11 16:06:28.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (49, '字典查询', 10, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-02-24 09:18:41.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (50, '字典新增', 10, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (51, '字典修改', 10, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (52, '字典删除', 10, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (53, '字典导出', 10, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (54, '参数查询', 11, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (55, '参数新增', 11, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (56, '参数修改', 11, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (57, '参数删除', 11, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (58, '参数导出', 11, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (59, '公告查询', 12, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (60, '公告新增', 12, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (61, '公告修改', 12, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (62, '公告删除', 12, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (63, '操作查询', 22, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (64, '操作删除', 22, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (65, '日志导出', 22, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (66, '登录查询', 23, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (67, '登录删除', 23, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (68, '日志导出', 23, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-02-24 09:18:42.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (69, '在线查询', 14, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (70, '批量强退', 14, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (71, '单条强退', 14, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (72, '任务查询', 15, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (73, '任务新增', 15, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (74, '任务修改', 15, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (75, '任务删除', 15, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (76, '状态修改', 15, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (77, '任务导出', 15, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-02-24 09:18:43.000', '', null, '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (78, '生成查询', 20, 1, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:43.000', 'admin', '2021-03-11 16:51:42.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (79, '生成修改', 20, 2, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:43.000', 'admin', '2021-03-11 16:51:49.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (80, '生成删除', 20, 3, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:43.000', 'admin', '2021-03-11 16:52:00.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (81, '导入代码', 20, 2, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:43.000', 'admin', '2021-03-11 16:51:55.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (82, '预览代码', 20, 4, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:44.000', 'admin', '2021-03-11 16:52:05.000', '');
INSERT INTO ruoyi.sys_menu (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark) VALUES (83, '生成代码', 20, 5, '#', '', 1, 0, 'F', '0', '0', '', '#', 'admin', '2021-02-24 09:18:44.000', 'admin', '2021-03-11 16:52:11.000', '');

# drop table ruoyi.sys_notice;

create table ruoyi.sys_notice
(
    notice_id INTEGER default $i(^ruoyi.sysnoticeD)
        constraint SYS_NOTICEPKey4
        primary key,
    notice_title VARCHAR(50) not null,
    notice_type VARCHAR(1) not null,
    notice_content VARCHAR(4096),
    status VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(255)
);

# drop table ruoyi.sys_oper_log;

create table ruoyi.sys_oper_log
(
    oper_id BIGINT(19) default $i(^ruoyi.sysoperlogD)
        constraint SYS_OPER_LOGPKey2
        primary key,
    title VARCHAR(50) default '$c(0)',
    business_type INTEGER default 0,
    method VARCHAR(100) default '$c(0)',
    request_method VARCHAR(10) default '$c(0)',
    operator_type INTEGER default 0,
    oper_name VARCHAR(50) default '$c(0)',
    dept_name VARCHAR(50) default '$c(0)',
    oper_url VARCHAR(255) default '$c(0)',
    oper_ip VARCHAR(50) default '$c(0)',
    oper_location VARCHAR(255) default '$c(0)',
    oper_param VARCHAR(2000) default '$c(0)',
    json_result VARCHAR(2000000) default '$c(0)',
    status INTEGER default 0,
    error_msg VARCHAR(2000) default '$c(0)',
    oper_time TIMESTAMP(23,3)
    );

# drop table ruoyi.sys_post;

create table ruoyi.sys_post
(
    post_id BIGINT(19) default $i(^ruoyi.syspostD)
        constraint SYS_POSTPKey6
        primary key,
    post_code VARCHAR(64) not null,
    post_name VARCHAR(50) not null,
    post_sort INTEGER not null,
    status VARCHAR(1) not null,
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

# drop table ruoyi.sys_role;

create table ruoyi.sys_role
(
    role_id BIGINT(19) default $i(^ruoyi.sysroleD)
        constraint SYS_ROLEPKey6
        primary key,
    role_name VARCHAR(30) not null,
    role_key VARCHAR(100) not null
        constraint Idxrolekey
        unique,
    role_sort INTEGER not null,
    data_scope VARCHAR(1) default '1',
    menu_check_strictly TINYINT(3) default 1,
    dept_check_strictly TINYINT(3) default 1,
    status VARCHAR(1) not null,
    del_flag VARCHAR(1) default '0',
    create_by VARCHAR(64) default '$c(0)',
    create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

# drop table ruoyi.sys_role_dept;

create table ruoyi.sys_role_dept
(
    role_id BIGINT(19) not null,
    dept_id BIGINT(19) not null,
    constraint SYS_ROLE_DEPTPKey3
        primary key (role_id, dept_id)
);

# drop table ruoyi.sys_role_menu;

create table ruoyi.sys_role_menu
(
    role_id BIGINT(19) not null,
    menu_id BIGINT(19) not null,
    constraint SYS_ROLE_MENUPKey3
        primary key (role_id, menu_id)
);

# drop table ruoyi.sys_user;

create table ruoyi.sys_user
(
    user_id BIGINT(19) default $i(^ruoyi.sysuserD)
        constraint SYS_USERPKey4
        primary key,
    dept_id BIGINT(19),
    user_name VARCHAR(30) not null,
    nick_name VARCHAR(30) not null,
    user_type VARCHAR(2) default '"00"',
    email VARCHAR(50) default '$c(0)',
    phonenumber VARCHAR(11) default '$c(0)',
    sex VARCHAR(1) default '0',
    avatar VARCHAR(100) default '$c(0)',
    password VARCHAR(100) default '$c(0)',
    status VARCHAR(1) default '0',
    del_flag VARCHAR(1) default '0',
    login_ip VARCHAR(50) default '$c(0)',
    login_date TIMESTAMP(23,3),
	create_by VARCHAR(64) default '$c(0)',
	create_time TIMESTAMP(23,3),
	update_by VARCHAR(64) default '$c(0)',
	update_time TIMESTAMP(23,3),
	remark VARCHAR(500)
);

# drop table ruoyi.sys_user_post;

create table ruoyi.sys_user_post
(
    user_id BIGINT(19) not null,
    post_id BIGINT(19) not null,
    constraint SYS_USER_POSTPKey3
        primary key (user_id, post_id)
);

# drop table ruoyi.sys_user_role;

create table ruoyi.sys_user_role
(
    user_id BIGINT(19) not null,
    role_id BIGINT(19) not null,
    constraint SYS_USER_ROLEPKey3
        primary key (user_id, role_id)
);

