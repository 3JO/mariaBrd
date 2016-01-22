package org.ibitu.service;

import org.ibitu.domain.MemberVO;
import org.ibitu.persistence.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void createAccount(MemberVO vo) throws Exception {
		mapper.createAccount(vo);
	}

}
