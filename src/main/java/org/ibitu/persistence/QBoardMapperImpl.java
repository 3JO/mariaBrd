package org.ibitu.persistence;

import org.ibitu.domain.BoardVO;
import org.springframework.stereotype.Repository;

@Repository
public class QBoardMapperImpl extends QAbstractCRUDMapper<BoardVO, Integer> implements QBoardMapper {

}
