package org.ibitu.persistence;

import org.ibitu.domain.BoardVO;
import org.springframework.stereotype.Repository;

@Repository
public class BoardMapperImpl extends AbstractCRUDMapper<BoardVO, Integer> implements BoardMapper {

}
