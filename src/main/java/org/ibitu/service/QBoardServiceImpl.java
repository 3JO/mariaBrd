package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.persistence.QBoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QBoardServiceImpl implements QBoardService {

	@Autowired
	private QBoardMapper mapper;
	
	@Transactional
	@Override
	public void regist(BoardVO board) throws Exception {
		mapper.create(board);
		
		String[] files = board.getFiles();
		
		if(files == null) { return; }
		
		for (String fileName : files) {
			mapper.addAttach(fileName);
		}

	}

	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer bno) throws Exception {

		mapper.updateViewCnt(bno);
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

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return mapper.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		 return mapper.listSearchCount(cri);
	}


	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		
		return mapper.getAttach(bno);
	}
}