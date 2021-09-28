package com.webproject.population.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.cj.Session;
import com.webproject.population.service.BoardService;
import com.webproject.population.vo.BoardVO;

@Controller
@RequestMapping(path = {"/board" })

public class BoardController {

	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@GetMapping(path = { "/list" })
	public String list(Model model) {
		
		// 데이터 조회 시작
		List<BoardVO> boards = boardService.findAll();
		System.out.println(boards.size());
		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장
		model.addAttribute("boards", boards);
		
		return "board/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() {
		
		return "board/write";
	}
	
	@PostMapping(path= {"/write"})
	public String write(BoardVO board) {
		
		boardService.writeBoard(board);
		
		return "redirect:list";
	}
	
	@GetMapping(path = {"/detail" })
	public String detail(int boardNo, Model model) {
		
		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if(board == null) {
			return "redirect:list";
		}
		
		boardService.increaseBoardReadCount(boardNo);
		board.setReadCount(board.getReadCount() + 1);
		
		model.addAttribute("board", board);
		
		return "board/detail";
	}
	
	@GetMapping(path = { "/delete" })
	public String delete(int boardNo) {
		
		boardService.deleteBoard(boardNo);
		
		return "redirect:list";
	}
	
	@GetMapping(path = { "/edit" })
	public String showEditForm(int boardNo, Model model) {
		
		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if (board == null) {
			return "redirect:list";
		}
		
		model.addAttribute("board", board);
		
		return "board/edit";
	}
	
	@PostMapping(path = { "/update" })
	public String update(BoardVO board) {
		
		boardService.updateBoard(board);
		
		return "redirect:detail?boardNo=" + board.getBoardNo();
	}
	
}
