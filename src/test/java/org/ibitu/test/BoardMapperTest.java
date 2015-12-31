package org.ibitu.test;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
import org.ibitu.domain.SearchCriteria;
import org.ibitu.persistence.BoardMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardMapperTest extends DataSourceTest {

	@Autowired
	private BoardMapper mapper;

	@Test
	public void CreateTest() throws Exception {

		BoardVO vo = new BoardVO();
		for (int i = 0; i < 65; i++) {

			vo.setTitle("젤나가여" + i);
			vo.setContent("나는 죽음을" + i);
			vo.setWriter("테스터" + i);

			mapper.create(vo);
		}

	}

	@Test
	public void ReadTest() throws Exception {
		logger.info("RRRRRRRRRRRRRRRRRRRRRRRRR");
		logger.info(mapper.read(50).toString());

	}

	@Test
	public void UpdateTest() throws Exception {

		BoardVO vo = new BoardVO();
		vo.setBno(1);
		vo.setTitle("�젣紐⑹씠 �닔�젙�릺�뿀�뒿�땲�떎.");
		vo.setContent("�궡�슜�씠 �닔�젙�릺�뿀�뒿�땲�떎.");

		mapper.update(vo);

	}

	@Test
	public void DeleteTest() throws Exception {

		for (int j = 6; j <70; j++) {

			mapper.delete(j);	
		}

	}

	@Test
	public void listAllTest() throws Exception {
		logger.info(mapper.listAll().toString());
	}

	//
	// @Test
	// public void listPageTest() throws Exception {
	//
	// int page = 2;
	//
	// List<BoardVO> list = mapper.listPage(page);
	// logger.info("show this page List");
	// for (BoardVO vo : list) {
	// logger.info(vo.getBno() + ":" + vo.getTitle());
	//
	// }
	// logger.info("endendendendendendendendendendendendendend");
	// }

	@Test
	public void listCriteriaTest() throws Exception {

		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);

		List<BoardVO> list = mapper.listCriteria(cri);

		logger.info("show this page List");
		for (BoardVO vo : list) {
			logger.info(vo.getBno() + ":" + vo.getTitle());

		}
		logger.info("endendendendendendendendendendendendendend");
	}
	
	@Test
	public void testDynamic1()throws Exception{
		SearchCriteria cri = new SearchCriteria();
		
		cri.setPage(1);
		cri.setKeyword("글");
		cri.setSearchType("t");
		
		logger.info("==========================");
		List<BoardVO> list = mapper.listSearch(cri);
		
		for (BoardVO boardVO : list) {
			logger.info(boardVO.getBno()+": "+boardVO.getTitle());
		}
		
		logger.info("===========================");
		
		logger.info("count: "+mapper.listSearchCount(cri));
	}

}
