package com.biz.menu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.biz.menu.model.DropMenuDto;

public interface MenuDao {
	
	@Select(" SELECT * FROM tbl_menu WHERE menu_p_id IS NULL" )
	@Results(value= {
			@Result(property="menu_id", column="menu_id"),
			@Result(property="sub_menus", column="menu_id", many=@Many(select="getSubMenus"))
	})
	public List<DropMenuDto> getMenus();
	
	@Select(" SELECT * FROM tbl_menu WHERE menu_p_id = #{menu_id} ")
	public List<DropMenuDto> getSubMenus(String menu_id);

}
