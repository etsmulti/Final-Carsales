package spring.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;

import spring.mvc.dao.BoardDAO;
import spring.mvc.model.BoardBean;

@Controller
public class BoardController {

	@Autowired
	private BoardDAO boardDAO;

	///////////////////////////////////////// 게시물 리스트
	@RequestMapping(value = "/BoardList.bo", method = RequestMethod.GET)
	public ModelAndView board_list(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("게시물 리스트 호출");
		/*
		 * int page=1; int limit=7;
		 * 
		 * if(request.getParameter("page")!=null){
		 * page=Integer.parseInt(request.getParameter("page")); }
		 */

		// int listcount=boardDAO.getBoardCount();

		List<BoardBean> boardList = boardDAO.getBoardList(); // 리스트를 받아 옴

		String board_title = null;
		BoardBean bb;

		for (int i = 0; i < boardList.size(); i++) {
			// SpringBoardBean board=boardList.get(i);//게시물 목록을 받아옴
			bb = boardList.get(i);// 게시물 목록을 받아옴
			board_title = bb.getBoardSubject();// 게시물 제목을 저장

			if (board_title.length() >= 14) {// 문자열 길이가 14자 이상이면
				board_title = board_title.substring(0, 14) + "...";
				// 0이상 14미만 사이의 문자열을 반환+... 으로 처리
			}
		}

		/*
		 * //총 페이지 수. int maxpage=(int)((double)listcount/limit+0.95); //0.95를
		 * 더해서 올림 처리. //현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...) int startpage =
		 * (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1; //현재 페이지에 보여줄 마지막
		 * 페이지 수.(10, 20, 30 등...) int endpage = maxpage;
		 * 
		 * if (endpage>startpage+10-1) endpage=startpage+10-1;
		 * 
		 * request.setAttribute("page", page); //현재 페이지 수.
		 * request.setAttribute("maxpage", maxpage); //최대 페이지 수.
		 * request.setAttribute("startpage", startpage); //현재 페이지에 표시할 첫 페이지 수.
		 * request.setAttribute("endpage", endpage); //현재 페이지에 표시할 끝 페이지 수.
		 * request.setAttribute("listcount",listcount); //총게시물수.
		 */ request.setAttribute("list", boardList);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/board_list");

		return mav;
	}

	//////////////////////////////// 게시물 디테일
	@RequestMapping(value = "/BoardDetail.bo", method = RequestMethod.GET)
	public ModelAndView board_detail(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("게시물 상세 호출");
		int num = Integer.parseInt(request.getParameter("num"));

		BoardBean bb = boardDAO.getBoardDetail(num);
		boardDAO.countHit(num);

		request.setAttribute("boardDetail", bb);

		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/board_detail");

		return mav;
	}

	@RequestMapping(value = "/BoardWrite.bo", method = RequestMethod.GET)
	public String board_write() {
		System.out.println("게시물 쓰기 호출");

		return "board/board_write";
	}

	//////////////////////////////////////////////////////// 글쓰기 실행
	@RequestMapping(value = "/BoardWriteProcess.bo", method = RequestMethod.POST)
	public String board_write_process(MultipartHttpServletRequest  request) throws IOException {
		System.out.println("게시물 쓰기 실행");
		HttpSession session = request.getSession();

		MultipartRequest multi = null;

		int fileSize = 5 * 1024 * 1024;

		String savePath = "C:/workspaces/Final_Project_Carsale/src/main/webapp/resources/file";
		
		// 이진파일 업로드 서버 경로

		multi = new MultipartRequest(request, savePath, fileSize, "UTF-8");

		BoardBean bb = new BoardBean();

		bb.setBoardSubject(multi.getParameter("title"));
		bb.setMemberId((String) session.getAttribute("id"));
		bb.setBoardContent(multi.getParameter("content"));

		File UpFile = multi.getFile("board_file");

		if (UpFile != null) {// 첨부한 이진파일 있다면
			String fileName = UpFile.getName();// 첨부한 이진파일명 저장

			File saveFolder = new File(savePath);
			if (!(saveFolder.exists())) {// 폴더 경로가 없다면
				saveFolder.mkdir();// 폴더를 생성
			}

			/**** 확장자 구하기 시작 ****/
			int index = fileName.lastIndexOf(".");
			String fileExtension = fileName.substring(index + 1);
			/**** 확장자 구하기 끝 ***/
			String refileName = "FILE_" + bb.getBoardNum() + "." + fileExtension;// 새로운
																				// 파일명을
																				// 저장
			String fileDBName = "/" + refileName;
			// 데이터 베이스에 저장될 레코드 값

			UpFile.renameTo(new File(savePath + "/" + refileName));
			// 변경된 이진파일로 실제 업로드
			bb.setBoardFile01(fileDBName);
		}

		int result = boardDAO.insertBoard(bb);
/*
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");

		if (result != 0) {
			out.println("alert('게시글이 등록되었습니다.');");
		} else {
			out.println("alert('게시글이 등록에 실패하였습니다.');");
		}

		out.println("location.href='./boardList.bo';");
		out.println("</script>");
		out.close();
*/
		return null;
	}

	/////////////////////////////////////////// 글지우기
	@RequestMapping(value = "/BoardDelete.bo", method = RequestMethod.GET)
	public String board_delete_process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("게시물 지우기 실행");
		HttpSession session = request.getSession();

		boolean result = this.boardDAO.deleteBoard(Integer.parseInt(request.getParameter("num")));
		// 글번호를 기준으로 레코드 삭제

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");

		if (result) {
			out.println("alert('게시글이 삭제되었습니다.');");
		} else {
			out.println("alert('게시글 삭제에 실패하였습니다.');");
		}

		out.println("location.href='./boardList.bo';");
		out.println("</script>");
		out.close();

		return null;
	}

	/////////////////////////////////////////// 따봉 누르기
	@RequestMapping(value = "/BoardGoodCount.bo", method = RequestMethod.GET)
	public String board_good_get(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("따봉 누르기");
		int board_num =Integer.parseInt(request.getParameter("num")) ;

		boolean result = this.boardDAO.countGood(board_num);
		// 글번호를 기준으로 레코드 삭제
		BoardBean bb = boardDAO.getBoardDetail(board_num);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(bb.getBoardGood());
		out.close();

		return null;
	}
}
