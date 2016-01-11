package org.ibitu.persistence;

import java.util.List;

import org.ibitu.domain.DBoardVO;
import org.ibitu.domain.SearchCriteria;

public interface DBoardMapper {

	public void create(DBoardVO vo) throws Exception;

	public DBoardVO read(Integer bno) throws Exception;

	public void update(DBoardVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<DBoardVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCnt(SearchCriteria cri) throws Exception;

	public void uptReplyCnt(Integer bno, int amount) throws Exception;

	public void uptViewCnt(Integer bno) throws Exception;

	public void addAttach(String fullName) throws Exception;

	public List<String> getAttach(Integer bno) throws Exception;
	
	public void deleteAttach(Integer bno) throws Exception;
	
	public void replaceAttach(String fullName, Integer bno)throws Exception;
		
}
