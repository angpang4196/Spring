package com.biz.dev.dao;

import org.apache.ibatis.annotations.Select;

import com.biz.dev.vo.Ora_ErrorVO;

public interface DevDao {

	@Select(DevSQL.DEV_FIND_BY_CODE)
	public Ora_ErrorVO findByCode(String or_er_code);

}
