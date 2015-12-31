package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.DReplyVO;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.persistence.DBoardMapper;
import org.ibitu.persistence.DReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DReplyServiceImpl implements DReplyService {
	
	@Autowired
	private DReplyMapper rMapper;
	
	@Autowired
	private DBoardMapper bMapper;
	
	@Transactional
	@Override
	public void addReply(DReplyVO vo) throws Exception {
		
		rMapper.create(vo);
		bMapper.uptReplyCnt(vo.getBno(), 1);
	}

	@Override
	public List<DReplyVO> listReplyPage(Integer bno, SearchCriteria cri) throws Exception {
		return rMapper.listPage(bno, cri);
	}
	
	@Override
	public int count(Integer bno) throws Exception {
		return rMapper.count(bno);

	}

	@Override
	public void modifyReply(DReplyVO vo) throws Exception {
		rMapper.update(vo);

	}

	@Transactional
	@Override
	public void removeReply(Integer rno) throws Exception {
		
		int bno = rMapper.getBno(rno);
		rMapper.delete(rno);
		bMapper.uptReplyCnt(bno, -1);
	}
	
	
	
	
}
