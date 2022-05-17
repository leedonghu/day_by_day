package com.study.day_by_day.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.study.day_by_day.domain.TestVO;

@Mapper
public interface LoginMapper {
	public void test(TestVO vo);
}
