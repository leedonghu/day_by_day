package com.study.day_by_day.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.day_by_day.domain.CrawlingDAO;
import com.study.day_by_day.domain.MelonVO;
import com.study.day_by_day.mapper.MelonMapper;

@Service
public class MelonServiceImpl implements MelonService {
	
	@Autowired
	private MelonMapper mapper;
	
	@Override
	public ArrayList<MelonVO> getMelonChart() {
		
		CrawlingDAO cdao = new CrawlingDAO();
		ArrayList<MelonVO> mc = cdao.Crawling();
		
		
		
		

		
		return mc;
	}

}
