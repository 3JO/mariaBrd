package org.ibitu.controller;

import java.util.List;

import javax.inject.Inject;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.PageMaker;
import org.ibitu.domain.QBoardVO;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.service.QBoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/qboard/*")
public class QBoardController {

  private static final Logger logger = LoggerFactory.getLogger(QBoardController.class);

  @Inject
  private QBoardService service;

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    logger.info(cri.toString());

//     model.addAttribute("list", service.listCriteria(cri));
    model.addAttribute("list", service.listSearchCriteria(cri));
        
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);
    
//     pageMaker.setTotalCnt(service.listCntCriteria(cri));
    pageMaker.setTotalCnt(service.listSearchCount(cri));
    
    model.addAttribute("pageMaker", pageMaker);
  }

  @RequestMapping(value = "/read", method = RequestMethod.GET)
  public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") SearchCriteria cri, Model model)
      throws Exception {

    model.addAttribute("QboardVO",service.read(bno));
  }

  @RequestMapping(value = "/remove", method = RequestMethod.POST)
  public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    service.remove(bno);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/qboard/list";
  }

  @RequestMapping(value = "/modify", method = RequestMethod.GET)
  public void modifyPagingGET(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    model.addAttribute("QboardVO",service.read(bno));
  }

  @RequestMapping(value = "/modify", method = RequestMethod.POST)
  public String modifyPagingPOST(QBoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    logger.info(cri.toString());
    service.modify(board);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    logger.info(rttr.toString());

    return "redirect:/qboard/list";
  }

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public void registGET() throws Exception {

    logger.info("regist get ...........");
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registPOST(QBoardVO board, RedirectAttributes rttr) throws Exception {

    logger.info("regist post ...........");
    logger.info(board.toString());

    service.regist(board);

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/qboard/list";
  }
  
  @RequestMapping("/getAttach/{bno}")
  @ResponseBody
  public List<String> getAttach(@PathVariable("bno")Integer bno)throws Exception{
	  
	  return service.getAttach(bno);
  }

//   @RequestMapping(value = "/list", method = RequestMethod.GET)
//   public void listPage(@ModelAttribute("cri") SearchCriteria cri,
//   Model model) throws Exception {
//  
//   logger.info(cri.toString());
//  
//   model.addAttribute("list", service.listCriteria(cri));
//  
//   PageMaker pageMaker = new PageMaker();
//   pageMaker.setCri(cri);
//  
//   pageMaker.setTotalCnt(service.listCntCriteria(cri));
//  
//   model.addAttribute("pageMaker", pageMaker);
//   }

}
