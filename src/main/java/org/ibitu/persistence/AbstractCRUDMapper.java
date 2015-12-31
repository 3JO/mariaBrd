package org.ibitu.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.domain.SearchCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

abstract class AbstractCRUDMapper<V, K> implements CRUDMapper<V, K> {

	@Autowired
	protected SqlSession session;

	protected String namespace;

	public AbstractCRUDMapper() {

		String name = this.getClass().getName();
		this.namespace = name.substring(0, name.length() - 4);
		System.out.println("-----------");
		System.out.println(name);
		System.out.println("-----------");

	}

	@Override
	public void create(V board) throws Exception {
		session.insert(namespace + ".create", board);

	}

	@Override
	public V read(K key) throws Exception {
		return session.selectOne(namespace + ".read", key);
	}

	@Override
	public void update(V board) throws Exception {
		session.update(namespace + ".update", board);
	}

	@Override
	public void delete(K key) throws Exception {
		session.delete(namespace + ".delete", key);

	}

	@Override
	public List<BoardVO> listAll() throws Exception {

		return session.selectList(namespace + ".listAll");
	}

	// paging step1 (�씠�썑 listCriteria �궗�슜)
	// @Override
	// public List<BoardVO> listPage(int page) throws Exception {
	//
	// if(page<=0) {
	// page = 1;
	// }
	//
	// page = (page - 1) * 10;
	//
	// return session.selectList(namespace + ".listPage", page);
	// }

	// paging step2
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int cntPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".cntPaging", cri);
	}

	@Override
	public void updateViewCnt(Integer bno) throws Exception {

		session.update(namespace + ".updateViewCnt", bno);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);

	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("bno", bno);
		paramMap.put("amount", amount);

		session.update(namespace + ".updateReplyCnt", paramMap);

	}

	@Override
	public void addAttach(String fullName) throws Exception {
		session.insert(namespace + ".addAttach", fullName);
	}
	
	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return session.selectList(namespace+".getAttach", bno);
	}
	

	@Override
	public void deleteAttach(Integer bno) throws Exception {
		session.delete(namespace+".deleteAttach", bno);
	}

	@Override
	public void replaceAttach(String fullname, Integer bno) throws Exception {

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("bno", bno);
		paramMap.put("fullname", fullname);

		session.update(namespace + ".replaceAttach", paramMap);

	}


}
