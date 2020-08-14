package ${package.ServiceImpl};

import ${package.Entity}.${entity};
import ${package.Mapper}.${table.mapperName};
import ${package.Service}.${table.serviceName};
import ${superServiceImplClassPackage};
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>
 * ${table.comment!} 服务实现类
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
@Service
<#if kotlin>
open class ${table.serviceImplName} : ${superServiceImplClass}<${table.mapperName}, ${entity}>(), ${table.serviceName} {

}
<#else>
public class ${table.serviceImplName} implements ${table.serviceName} {
	@Autowired
	private ${table.mapperName} ${table.mapperName?lower_case};
	
	@Override
	public int add(${table.entityName} ${table.entityName?lower_case})
	{
		return ${table.mapperName?lower_case}.add(${table.entityName?lower_case});
	}
	
	@Override
	public int update(${table.entityName} ${table.entityName?lower_case})
	{
		return ${table.mapperName?lower_case}.update(${table.entityName?lower_case});
	}
	
	@Override
	public int delete(int id)
	{
		return ${table.mapperName?lower_case}.delete(id);
	}

	@Override
	public List<${table.entityName}> select(${table.entityName} ${table.entityName?lower_case})
	{
		return ${table.mapperName?lower_case}.select(${table.entityName?lower_case});
	}
}
</#if>
