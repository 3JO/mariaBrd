package org.ibitu.service;

import java.util.List;

import javax.inject.Inject;

import org.ibitu.domain.Criteria;
import org.ibitu.domain.ReplyVO;
import org.ibitu.persistence.BoardMapper;
import org.ibitu.persistence.ReplyMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyMapper mapper;
	
	@Inject
	private BoardMapper boardmapper;

	@Transactional
	@Override
	public void addReply(ReplyVO vo) throws Exception {
		mapper.create(vo);
		boardmapper.updateReplyCnt(vo.getBno(), 1);
	}

	@Override
	public List<ReplyVO> listReply(Integer bno) throws Exception {
		return mapper.list(bno);
	}

	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		mapper.update(vo);
	}

	@Transactional
	@Override
	public void removeReply(Integer rno) throws Exception {
		
		int bno = mapper.getBno(rno);
		mapper.delete(rno);
		boardmapper.updateReplyCnt(bno, -1);
	}

	@Override
	public List<ReplyVO> listReplyPage(Integer bno, Criteria cri) throws Exception {
		return mapper.listPage(bno, cri);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return mapper.count(bno);
	}

}
