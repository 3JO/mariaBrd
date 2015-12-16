package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.persistence.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public void regist(BoardVO board) throws Exception {
		mapper.create(board);

	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return mapper.read(bno);
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		mapper.update(board);

	}

	@Override
	public void remove(Integer bno) throws Exception {
		mapper.delete(bno);

	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return mapper.listAll();
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return mapper.listCriteria(cri);
	}
	
	@Override
	public int listCntCriteria(Criteria cri) throws Exception {
		return mapper.cntPaging(cri);
	}
}