package org.ibitu.persistence;

import java.util.Date;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;

public interface UserMapper {

	public UserVO login(LoginDTO dto)throws Exception;
	
	public void keepLogin(String uid,String sessionId, Date next);
	
	public UserVO checkUserWithSessionKey(String value);
	
}
