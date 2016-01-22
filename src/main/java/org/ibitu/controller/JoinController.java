package org.ibitu.controller;

import java.util.Locale;

import org.ibitu.domain.DBoardVO;
import org.ibitu.domain.QBoardVO;
import org.ibitu.domain.SearchCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/join/*")
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("dd");
		return "/join/membership";
	}


//	@RequestMapping(value = "/", method = RequestMethod.POST)
//	public String join(UserVO vo, RedirectAttributes rttr) throws Exception {
//		logger.info("regist post.......");
//		logger.info(vo.toString());
//
//		service.regist(vo);
//
//		rttr.addFlashAttribute("msg", "success");
//		return "redirect:/dboard/list";
//	}

}
