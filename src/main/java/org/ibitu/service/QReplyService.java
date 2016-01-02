package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.Criteria;
import org.ibitu.domain.QReplyVO;

public interface QReplyService {

  public void addReply(QReplyVO vo) throws Exception;

  public List<QReplyVO> listReply(Integer bno) throws Exception;
 
  public void modifyReply(QReplyVO vo) throws Exception;

  public void removeReply(Integer rno) throws Exception;

  public List<QReplyVO> listReplyPage(Integer bno, Criteria cri) 
      throws Exception;

  public int count(Integer bno) throws Exception;
}
