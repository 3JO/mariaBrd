package org.ibitu.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;
import org.springframework.stereotype.Repository;

@Repository
public class UserMapperImpl implements UserMapper {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.ibitu.mapper.UserMapper";
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace+".login", dto);
	}

	@Override
	public void keepLogin(String uid, String sessionId, Date next) {
		Map <String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("uid", uid);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next",next);
		
		session.update(namespace+".keepLogin",paramMap);
	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {
		return session.selectOne(namespace+".checkUserWithSessionKey",value);
	}

}
