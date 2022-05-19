package com.study.day_by_day.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.study.day_by_day.domain.Page1;
import com.study.day_by_day.domain.TestVO;
import com.study.day_by_day.service.BoardService;
import com.study.day_by_day.service.LoginService;


@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService service;
	
	@Autowired
	private BoardService bService;
	
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
	
	@RequestMapping(value = "/page/1", method = RequestMethod.GET)
	public ModelAndView page1(ModelAndView mav) {
		
		List<Page1> list = bService.getList();
		mav.addObject("list", list);
		mav.setViewName("/page1");
		return mav;
	}
	
	@RequestMapping(value = "/page/1/insert", method = RequestMethod.POST)
	public String page1Insert(Page1 vo) {
		bService.insert(vo);
		System.out.println(vo.getContent());
		System.out.println(vo.getName());
		return "redirect:/page/1";
	}
}
