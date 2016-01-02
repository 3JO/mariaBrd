package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.Criteria;
import org.ibitu.domain.QBoardVO;
import org.ibitu.domain.SearchCriteria;

public interface QBoardService {

	public void regist(QBoardVO board) throws Exception;

	public QBoardVO read(Integer bno) throws Exception;

	public void modify(QBoardVO board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<QBoardVO> listAll() throws Exception;
	
	public List<QBoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int listCntCriteria(Criteria cri) throws Exception;
	
	public List<QBoardVO> listSearchCriteria(SearchCriteria cri) 
		      throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<String> getAttach(Integer bno)throws Exception;

}
