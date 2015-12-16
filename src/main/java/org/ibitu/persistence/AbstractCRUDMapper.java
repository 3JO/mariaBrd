package org.ibitu.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.springframework.beans.factory.annotation.Autowired;

abstract class AbstractCRUDMapper<V, K> implements CRUDMapper<V, K> {

	@Autowired
	protected SqlSession session;

	protected String namespace;

	public AbstractCRUDMapper() {

		String name = this.getClass().getName();
		this.namespace = name.substring(0, name.length() - 4);

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

	// paging step1 (이후 listCriteria 사용)
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
	public int cntPaging(Criteria cri)throws Exception {
		return session.selectOne(namespace + ".cntPaging", cri);
	}

}
