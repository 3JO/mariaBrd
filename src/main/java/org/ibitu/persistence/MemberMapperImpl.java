package org.ibitu.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberMapperImpl implements MemberMapper {
	
	@Inject
	private SqlSession session;
	public static String namespace = "org.ibitu.persistence.MemberMapper";
	
	@Override
	public void createAccount(MemberVO vo) throws Exception {
		session.insert(namespace+".createAccount", vo);
	}

}
