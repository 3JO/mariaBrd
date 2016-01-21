package org.ibitu.service;

import java.util.Date;

import javax.inject.Inject;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;
import org.ibitu.persistence.UserMapper;
import org.springframework.stereotype.Service;
@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserMapper mapper;
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return mapper.login(dto);
	}

	@Override
	public void keepLogin(String uid, String sessionId, Date next) throws Exception {
		mapper.keepLogin(uid, sessionId, next);
	}

	@Override
	public UserVO checkLoginBefore(String value) {
		// TODO Auto-generated method stub
		return mapper.checkUserWithSessionKey(value);
	}

}
