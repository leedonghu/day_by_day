package com.study.day_by_day.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.day_by_day.domain.TestVO;
import com.study.day_by_day.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginMapper mapper;
	
	@Override
	public void test(TestVO vo) {
		mapper.test(vo);
		
	}

}
