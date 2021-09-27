package com.webproject.population.service;

import java.util.List;

import com.webproject.population.mapper.BoardMapper;
import com.webproject.population.vo.BoardVO;

import lombok.Setter;

public class BoardServiceImpl implements BoardService {

	@Setter
	private BoardMapper boardMapper;

	@Override
	public int writeBoard(BoardVO board) {
		
		//boardDao.insertBoard(board);
		boardMapper.insertBoard(board);
		
		return 0;
	}

	@Override
	public List<BoardVO> findAll() {
		
		//List<BoardVO> boards = boardDao.selectAll();
		List<BoardVO> boards = boardMapper.selectAll();
		
		return boards;
	}

	@Override
	public BoardVO findBoardByBoardNo(int boardNo) {
		BoardVO board = boardMapper.selectBoardByBoardNo(boardNo);
		return board;
	}
	
	@Override
	public void increaseBoardReadCount(int boardNo) {
		boardMapper.updateBoardReadCount(boardNo);
	}
	
	@Override
	public void deleteBoard(int boardNo) {
		boardMapper.updateBoardDeleted(boardNo);
	}

	@Override
	public void updateBoard(BoardVO board) {
		boardMapper.updateBoard(board);
	}
	
}