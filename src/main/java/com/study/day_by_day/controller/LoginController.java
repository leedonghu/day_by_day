package com.study.day_by_day.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.study.day_by_day.domain.TestVO;
import com.study.day_by_day.service.LoginService;


@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loginPage(ModelAndView mav, Locale locale) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		mav.addObject("serverTime", formattedDate );
		
		mav.setViewName("/login");
		mav.addObject("test", 1);
		return mav;
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public void test(TestVO vo) {
		service.test(vo);
	}
}
