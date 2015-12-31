package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.persistence.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
    @Transactional
	@Override
	public void regist(BoardVO board) throws Exception {
		mapper.create(board);
		
		String[] files = board.getFiles();
		if(files == null){return;}
		for (String fileName : files){
			mapper.addAttach(fileName);
		}
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer bno) throws Exception{
		mapper.updateViewCnt(bno);
		return mapper.read(bno);
	}
	
  @Transactional
	@Override
	public void modify(BoardVO board) throws Exception {
		mapper.update(board);
		
		Integer bno = board.getBno();
		
		mapper.deleteAttach(bno);
		
		String[] files = board.getFiles();
		
		if(files == null){
			return;
		}
		
		for (String fileName : files) {
			mapper.replaceAttach(fileName, bno);
		}

	}

  @Transactional
	@Override
	public void remove(Integer bno) throws Exception {
	  	mapper.deleteAttach(bno);
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