package ${package.Mapper};

import ${package.Entity}.${entity};
import java.util.List;

/**
 * <p>
 * ${table.comment!} Mapper 接口
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if kotlin>
interface ${table.mapperName} : ${superMapperClass}<${entity}>
<#else>
public interface ${table.mapperName}{
	public int add(${table.entityName} ${table.entityName?lower_case});
	
	public int update(${table.entityName} ${table.entityName?lower_case});
	
	public int delete(int id);

	public List<${table.entityName}> select(${table.entityName} ${table.entityName?lower_case});
}
</#if>
