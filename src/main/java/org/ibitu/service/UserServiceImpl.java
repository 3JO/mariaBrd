package org.ibitu.service;

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

}
