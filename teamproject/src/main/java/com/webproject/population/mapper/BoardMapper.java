package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.BoardVO;

@Mapper
public interface BoardMapper {

	void insertBoard(BoardVO board);

	List<BoardVO> selectAll();

	BoardVO selectBoardByBoardNo(int boardNo);

	void updateBoardReadCount(int boardNo);

	void updateBoardDeleted(int boardNo);

	void updateBoard(BoardVO board);

}
