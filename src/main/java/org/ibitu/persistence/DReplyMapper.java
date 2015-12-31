package org.ibitu.persistence;

import java.util.List;

import org.ibitu.domain.DReplyVO;
import org.ibitu.domain.SearchCriteria;

public interface DReplyMapper {

//	public List<DReplyVO> list(Integer bno) throws Exception;
	
	public void create(DReplyVO vo) throws Exception;
	
	public void update(DReplyVO vo) throws Exception;
	
	public void delete(Integer rno) throws Exception;
	
	public List<DReplyVO> listPage(Integer bno, SearchCriteria cri) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
	public int getBno(Integer rno) throws Exception;
	
}
