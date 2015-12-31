package org.ibitu.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;
import org.springframework.stereotype.Repository;

@Repository
public class QUserMapperImpl implements QUserMapper {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.ibitu.mapper.UserMapper";
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

}
