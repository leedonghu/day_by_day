package com.study.day_by_day.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.day_by_day.domain.Page1;
import com.study.day_by_day.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void insert(Page1 vo) {
		// TODO Auto-generated method stub
		mapper.insert(vo);
	}

	@Override
	public List<Page1> getList() {
		List<Page1> list = mapper.getList();
		return list;
	}

	@Override
	public void delete(Page1 vo) {
		mapper.delete(vo);
		
	}

}
