package com.study.day_by_day.service;

import java.util.List;

import com.study.day_by_day.domain.Page1;

public interface BoardService {

	void insert(Page1 vo);

	List<Page1> getList();

}
