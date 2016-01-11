package org.ibitu.service;

import java.util.List;

import org.ibitu.domain.DBoardVO;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.persistence.DBoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DBoardServiceImpl implements DBoardService {
	
	@Autowired
	private DBoardMapper mapper;
	
	@Transactional
	@Override
	public void regist(DBoardVO vo) throws Exception {
		mapper.create(vo);
		String[] files = vo.getFiles();
		if(files==null){ return; }
		
		for(String fileName : files){
			mapper.addAttach(fileName);
		}
	}
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public DBoardVO read(Integer bno) throws Exception {
		mapper.uptViewCnt(bno);
		return mapper.read(bno);
	}
	
	@Transactional
	@Override
	public void modify(DBoardVO vo) throws Exception {
		mapper.update(vo);
		
		Integer bno = vo.getBno();
		
		mapper.deleteAttach(bno);
		
		String[] files = vo.getFiles();
		
		if(files==null) { return; }
		
		for (String fileName : files){
			mapper.replaceAttach(fileName, bno);
		}

	}

	@Override
	public void remove(Integer bno) throws Exception {
		mapper.deleteAttach(bno);
		mapper.delete(bno);
	}

	@Override
	public List<DBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return mapper.listSearch(cri);
	}
	
	@Override
	public int listSearchCnt(SearchCriteria cri) throws Exception {
		return mapper.listSearchCnt(cri);
	}
	
	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return mapper.getAttach(bno);
	}
}
