package org.ibitu.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.DBoardVO;
import org.ibitu.domain.SearchCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DBoardMapperImpl implements DBoardMapper {
	
	@Autowired
	private SqlSession session;
	
	private static String namespace = "org.ibitu.persistence.DBoardMapper";
	
	@Override
	public void create(DBoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public DBoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(DBoardVO vo) throws Exception {
		session.update(namespace+".update", vo);

	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace+".delete", bno);

	}

	@Override
	public List<DBoardVO> listSearch(SearchCriteria cri) throws Exception {
		
		return session.selectList(namespace+".listSearch", cri);
	}
	
	@Override
	public int listSearchCnt(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCnt", cri);
	}
	
	@Override
	public void uptReplyCnt(Integer bno, int amount) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("amount", amount);
		
		session.update(namespace + ".uptReplyCnt", paramMap);
	}
	
	@Override
	public void uptViewCnt(Integer bno) throws Exception {
		
		session.update(namespace + ".uptViewCnt", bno);
	}


}
