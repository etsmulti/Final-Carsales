package spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.dao.*;
import spring.mvc.model.BoardBean;

@Controller
public class BoardController {

	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping(value = "/boardList.bo", method = RequestMethod.GET)
	public ModelAndView board_list() {
		System.out.println("게시물 리스트 호출");
		
		ModelAndView mav = new ModelAndView();
	//	mav.addObject("list", boardDAO.getBoardList());
		mav.setViewName("board/board_list");
		
		return mav;
	}
	
	@RequestMapping(value = "/boardDetail.bo", method = RequestMethod.GET)
	public ModelAndView board_detail(@RequestParam("num") int num) {
		System.out.println("게시물 상세 호출");
		
		ModelAndView mav = new ModelAndView();
	//	mav.addObject("boardDetail", boardDAO.getBoardDetail(num));
		mav.setViewName("board/board_detail");
		
		return mav;
	}
	
	@RequestMapping(value = "/boardWrite.bo", method = RequestMethod.GET)
	public String board_write() {
		System.out.println("게시물 쓰기 호출");
		
		return "board/board_write";
	}
	
	@RequestMapping(value = "/boardWriteProcess.bo", method = RequestMethod.GET)
	public String board_write_process() {
		System.out.println("게시물 쓰기 실행");
		BoardBean boardBean=null;
	//	boardDAO.boardInsert(boardBean);
		return "board/board_write";
	}
	
}

