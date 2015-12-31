package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.DReplyVO;
import org.ibitu.domain.SearchCriteria;

public interface DReplyService {
	
	public void addReply(DReplyVO vo) throws Exception;
	
	public List<DReplyVO> listReplyPage(Integer bno, SearchCriteria cri) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
	public void modifyReply(DReplyVO vo) throws Exception;
	
	public void removeReply(Integer rno) throws Exception;

}
