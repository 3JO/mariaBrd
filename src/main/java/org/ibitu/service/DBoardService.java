package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.DBoardVO;
import org.ibitu.domain.SearchCriteria;

public interface DBoardService {
	
	public void regist(DBoardVO vo) throws Exception;
	
	public DBoardVO read(Integer bno) throws Exception;
	
	public void modify(DBoardVO vo) throws Exception;
	
	public void remove(Integer bno) throws Exception;
	
	public List<DBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	
	public int listSearchCnt(SearchCriteria cri) throws Exception;
}
