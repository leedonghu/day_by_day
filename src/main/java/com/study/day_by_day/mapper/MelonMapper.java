package com.study.day_by_day.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.day_by_day.domain.MelonVO;

@Mapper
public interface MelonMapper {

	

	int insertChart(MelonVO mvo);

	int updateChart(MelonVO mvo);

}
