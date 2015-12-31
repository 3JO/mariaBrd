package org.ibitu.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.DReplyVO;
import org.ibitu.domain.SearchCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DReplyMapperImpl implements DReplyMapper {
	
	@Autowired
	private SqlSession session;
	
	private static String namespace = "org.ibitu.persistence.DReplyMapper"; 
	
//	@Override
//	public List<DReplyVO> list(Integer bno) throws Exception {
//		return session.selectList(namespace + ".list", bno);
//	}
	
	@Override
	public List<DReplyVO> listPage(Integer bno, SearchCriteria cri) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("bno", bno);
		paramMap.put("cri", cri);
		
		return session.selectList(namespace + ".listPage", paramMap);
	}
	
	@Override
	public int count(Integer bno) throws Exception {
		
		return session.selectOne(namespace + ".count", bno);

	}

	@Override
	public void create(DReplyVO vo) throws Exception {
		session.insert(namespace + ".create", vo);

	}

	@Override
	public void update(DReplyVO vo) throws Exception {
		session.update(namespace + ".update", vo);

	}

	@Override
	public void delete(Integer rno) throws Exception {
		session.delete(namespace + ".delete", rno);
	}
	
	@Override
	public int getBno(Integer rno) throws Exception {
		return session.selectOne(namespace + ".getBno", rno);
	}

}
