package org.ibitu.service;

import java.util.List;

import javax.inject.Inject;

import org.ibitu.domain.Criteria;
import org.ibitu.domain.QReplyVO;
import org.ibitu.persistence.QBoardMapper;
import org.ibitu.persistence.QReplyMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QReplyServiceImpl implements QReplyService {

  @Inject
  private QReplyMapper mapper;
  
  @Inject
  private QBoardMapper boardMapper;

  @Transactional
  @Override
  public void addReply(QReplyVO vo) throws Exception {

    mapper.create(vo);
    boardMapper.updateReplyCnt(vo.getBno(), 1);
  }

  @Override
  public List<QReplyVO> listReply(Integer bno) throws Exception {

    return mapper.list(bno);
  }

  @Override
  public void modifyReply(QReplyVO vo) throws Exception {

    mapper.update(vo);
  }

  @Transactional
  @Override
  public void removeReply(Integer rno) throws Exception {

	int bno = mapper.getBno(rno);
    mapper.delete(rno);
    boardMapper.updateReplyCnt(bno, -1);
  }

  @Override
  public List<QReplyVO> listReplyPage(Integer bno, Criteria cri) 
      throws Exception {

    return mapper.listPage(bno, cri);
  }

  @Override
  public int count(Integer bno) throws Exception {

    return mapper.count(bno);
  }

}
