package org.ibitu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.ibitu.domain.PageMaker;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.service.BoardService;
import org.ibitu.service.DBoardService;
import org.ibitu.service.QBoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//새로 건든거
	@Inject
	private BoardService service;
	
	@Inject
	private QBoardService service1;
	
	@Autowired
	private DBoardService service2;
	
	
	  
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}*/
	
	//새로 건든 부분
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String listPage(@ModelAttribute("cri")SearchCriteria cri,Model model)throws Exception{
		logger.info(cri.toString());
		
		
		model.addAttribute("list", service.listSearchCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCnt(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		
		model.addAttribute("list1", service1.listSearchCriteria(cri));
		PageMaker pageMaker1 = new PageMaker();
		pageMaker1.setCri(cri);
		pageMaker1.setTotalCnt(service1.listSearchCount(cri));
		model.addAttribute("pageMaker1", pageMaker1);
		
		
		
		model.addAttribute("list2", service2.listSearchCriteria(cri));
		PageMaker pageMaker2 = new PageMaker();
		pageMaker2.setCri(cri);
		pageMaker2.setTotalCnt(service2.listSearchCnt(cri));
		model.addAttribute("pageMaker", pageMaker2);
		
		return "home";
	}
	
	
}
