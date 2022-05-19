package com.study.day_by_day.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.day_by_day.domain.Page1;

@Mapper
public interface BoardMapper {

	void insert(Page1 vo);

	List<Page1> getList();

}
