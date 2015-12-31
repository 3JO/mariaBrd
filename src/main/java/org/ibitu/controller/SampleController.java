package org.ibitu.controller;

import org.ibitu.domain.SampleVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sample")
public class SampleController {

	@RequestMapping("/hello")
	public String sayHello(){
		return "hel";
	}
	
	@RequestMapping("/sendVO")
	public SampleVO sendVO(){
		
		SampleVO vo = new SampleVO();
		vo.setMno(123);
		vo.setFirstName("kk");
		vo.setLastName("zz");
		
		return vo;
	}
	
}
