package org.ibitu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ibitu.domain.DReplyVO;
import org.ibitu.domain.PageMaker;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.service.DReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dreplies")
public class DReplyController {

	@Autowired
	private DReplyService service;
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> regist(@RequestBody DReplyVO vo) {

		ResponseEntity<String> entity = null;

		try {
			service.addReply(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	 @RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET)
	  public ResponseEntity<Map<String, Object>> listPage(@PathVariable("bno") Integer bno, @PathVariable("page") Integer page) {

	    ResponseEntity<Map<String, Object>> entity = null;
	    
	    try {
	    	SearchCriteria cri = new SearchCriteria();
	    	cri.setPage(page);
	    	
	    	PageMaker pageMaker = new PageMaker();
	    	pageMaker.setCri(cri);
	    	
	    	Map<String, Object> map = new HashMap<String, Object>();
	    	List<DReplyVO> list = service.listReplyPage(bno, cri);
	    	
	    	map.put("list", list);
	    	
	    	int replyCnt = service.count(bno);
	    	pageMaker.setTotalCnt(replyCnt);
	    	
	    	map.put("pageMaker", pageMaker);
	      
	    	entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
	    }

	    return entity;
	  }
	 
	 @RequestMapping(value = "/{rno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	 public ResponseEntity<String> update(@PathVariable("rno") Integer rno, @RequestBody DReplyVO vo) {
		 
		 ResponseEntity<String> entity = null;
		 try {
			 vo.setRno(rno);
			 service.modifyReply(vo);
			 entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		 return entity;
	 }
	 
	 @RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	 public ResponseEntity<String> remove(@PathVariable("rno") Integer rno) {
		 
		 ResponseEntity<String> entity = null;
		 try {
			 service.removeReply(rno);
			 entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		 return entity;
	 }
}
