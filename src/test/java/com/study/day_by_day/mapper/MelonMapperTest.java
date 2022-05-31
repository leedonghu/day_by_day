package com.study.day_by_day.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.ArrayList;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.study.day_by_day.domain.MelonVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class MelonMapperTest {
	
	@Autowired
	private MelonMapper mapper;
	
	@Test
	public void isEmpty() {
		assertNotNull(mapper);
		MelonVO vo = new MelonVO();
		assertNull(vo.getAlbum());
		
		
		
		
	}
	
	
}
