package org.ibitu.persistence;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;

public interface UserMapper {

	public UserVO login(LoginDTO dto)throws Exception;
}
