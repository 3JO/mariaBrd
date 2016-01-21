package org.ibitu.service;

import java.util.Date;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String uid, String sessionId, Date next) throws Exception;
	
	public UserVO checkLoginBefore(String value);
}
