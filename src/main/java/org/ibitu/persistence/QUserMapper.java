package org.ibitu.persistence;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;

public interface QUserMapper {

	public UserVO login(LoginDTO dto)throws Exception;
	
}
