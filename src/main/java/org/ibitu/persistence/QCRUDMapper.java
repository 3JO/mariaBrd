package org.ibitu.persistence;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.domain.ReplyVO;
import org.ibitu.domain.SearchCriteria;

public interface QCRUDMapper<V, K> {

	public void create(V board) throws Exception;

	public V read(K key) throws Exception;

	public void update(V board) throws Exception;

	public void delete(K key) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	// paging step1 (이후 listCriteria 사용)
	// public List<BoardVO> listPage(int page) throws Exception;

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int cntPaging(Criteria cri) throws Exception;
	
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public void updateReplyCnt(Integer bno, int amount) throws Exception;

	public void updateViewCnt(Integer bno) throws Exception;
	
	public List<ReplyVO> list(Integer bno) throws Exception;

	public List<ReplyVO> listPage(
	      Integer bno, Criteria cri) throws Exception;

	public int count(Integer bno) throws Exception;
	
	public int getBno(Integer rno) throws Exception;
	
	public void addAttach(String fullName)throws Exception;
	  
	public List<String> getAttach(Integer bno)throws Exception;  
	   
	public void deleteAttach(Integer bno)throws Exception;
	 
	public void replaceAttach(String fullName, Integer bno)throws Exception;

}