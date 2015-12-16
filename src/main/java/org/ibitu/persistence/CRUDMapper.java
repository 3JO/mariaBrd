package org.ibitu.persistence;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;

public interface CRUDMapper<V, K> {

	public void create(V board) throws Exception;

	public V read(K key) throws Exception;

	public void update(V board) throws Exception;

	public void delete(K key) throws Exception;

	public List<BoardVO> listAll() throws Exception;

	// paging step1 (이후 listCriteria 사용)
	// public List<BoardVO> listPage(int page) throws Exception;

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int cntPaging(Criteria cri) throws Exception;
}