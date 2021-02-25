package com.ruoyi.framework.dialect;

import com.github.pagehelper.Page;
import com.github.pagehelper.dialect.AbstractHelperDialect;
import com.github.pagehelper.util.MetaObjectUtil;

import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.session.RowBounds;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.hutool.core.util.StrUtil;

/**
 * @author zhongyj <1126834403@qq.com><br/>
 * @date 2021/2/25
 */
public class CacheDialect extends AbstractHelperDialect {
    @Override
    public Object processPageParameter(MappedStatement ms, Map<String, Object> paramMap, Page page, BoundSql boundSql, CacheKey pageKey) {
        paramMap.put(PAGEPARAMETER_FIRST, page.getStartRow());
        paramMap.put(PAGEPARAMETER_SECOND, page.getEndRow());
        //处理pageKey
        pageKey.update(page.getStartRow());
        pageKey.update(page.getEndRow());
        //处理参数配置
        if (boundSql.getParameterMappings() != null) {
            List<ParameterMapping> newParameterMappings = new ArrayList<>(boundSql.getParameterMappings());
            newParameterMappings.add(new ParameterMapping.Builder(ms.getConfiguration(), PAGEPARAMETER_FIRST, long.class).build());
            newParameterMappings.add(new ParameterMapping.Builder(ms.getConfiguration(), PAGEPARAMETER_SECOND, long.class).build());
            MetaObject metaObject = MetaObjectUtil.forObject(boundSql);
            metaObject.setValue("parameterMappings", newParameterMappings);
        }
        return paramMap;
    }

    @Override
    public String getPageSql(String sql, Page page, CacheKey pageKey) {
        StringBuilder result = new StringBuilder(sql.length() + 200);
        result.append("SELECT TOP ALL")
                .append(" %vid AS rowId,* FROM ( ")
                .append("SELECT TOP ALL * FROM (")
                .append(sql)
                .append(")");

        if (StrUtil.isNotBlank(page.getOrderBy())) {
            result.append(" ORDER BY ").append(page.getOrderBy());
        }

        result.append(" ) AS tvl WHERE %vid > ?  AND %vid <= ?");
        return result.toString();
    }

    @Override
    public String getPageSql(MappedStatement ms, BoundSql boundSql, Object parameterObject, RowBounds rowBounds, CacheKey pageKey) {
        String sql = boundSql.getSql();
        Page page = getLocalPage();
        //支持 order by
        /*String orderBy = page.getOrderBy();
        if (StringUtil.isNotEmpty(orderBy)) {
            pageKey.update(orderBy);
            sql = OrderByParser.converToOrderBySql(sql, orderBy);
        }
        if (page.isOrderByOnly()) {
            return sql;
        }*/
        return getPageSql(sql, page, pageKey);
    }
}
