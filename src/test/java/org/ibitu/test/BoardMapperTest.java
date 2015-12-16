package org.ibitu.test;

import java.util.List;

import org.ibitu.domain.BoardVO;
import org.ibitu.domain.Criteria;
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

			vo.setTitle("제목 또 추가 " + i);
			vo.setContent("내용도 더 추가 " + i);
			vo.setWriter("tester" + i);

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
		vo.setTitle("제목이 수정되었습니다.");
		vo.setContent("내용이 수정되었습니다.");

		mapper.update(vo);

	}

	@Test
	public void DeleteTest() throws Exception {

		mapper.delete(16);

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

}
