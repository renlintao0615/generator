package ${package.Service};

import ${package.Entity}.${entity};

/**
 * <p>
 * ${table.comment!} 服务类
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if kotlin>
interface ${table.serviceName} : ${superServiceClass}<${entity}>
<#else>
public interface ${table.serviceName}{

	public int add(${table.entityName} ${table.entityName?lower_case});
	
	public int update(${table.entityName} ${table.entityName?lower_case});
	
	public int delete(int id);

	public List<${table.entityName}> select(${table.entityName} ${table.entityName?lower_case});
}
</#if>
