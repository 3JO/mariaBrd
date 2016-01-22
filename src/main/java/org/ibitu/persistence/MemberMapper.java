package org.ibitu.persistence;

import org.ibitu.domain.MemberVO;

public interface MemberMapper {
	
	public void createAccount(MemberVO vo)throws Exception;
	

}
