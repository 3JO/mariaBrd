package org.ibitu.service;

import org.ibitu.domain.UserVO;
import org.ibitu.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;
}
