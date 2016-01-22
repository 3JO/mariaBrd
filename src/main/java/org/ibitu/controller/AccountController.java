package org.ibitu.controller;

import javax.inject.Inject;

import org.ibitu.domain.MemberVO;
import org.ibitu.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/account/*")
public class AccountController {

	@Inject
	private MemberService service; 
	
	@RequestMapping(value="/createAccount",method=RequestMethod.GET)
	public void registAccountGET()throws Exception{
		System.out.println("create GET");
	}
	
	@RequestMapping(value="/createAccount", method=RequestMethod.POST)
	public String registAccountPost(MemberVO vo,Model model)throws Exception{
		service.createAccount(vo);
		
		System.out.println(" cA service");
		
		model.addAttribute("mem",vo);
		System.out.println(" cA model");

		return "redirect:/";
	}
	
}
