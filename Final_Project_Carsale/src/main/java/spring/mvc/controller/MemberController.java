package spring.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.dao.*;
import spring.mvc.model.MemberBean;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO memberDAO;

	@RequestMapping(value = "/MemberLogin.me", method = RequestMethod.GET)
	public String memberLogin() {
		System.out.println("login 요청");
		return "member/member_login";
	}

	/////////////////////////////////// 로그인
	@RequestMapping(value = "/MemberLoginProcess.me", method = RequestMethod.POST)
	public ModelAndView memberLoginProcess(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		HttpSession session = request.getSession();

		System.out.println("login 실행");

		String id = request.getParameter("MEMBER_ID");
		String pw = request.getParameter("MEMBER_PW");

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		int result = 0;
		try {
			result = memberDAO.userCheck(id, pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("<script>");
		if (result == -1) {// 존재하지 않는 아이디
			out.println("alert('로그인에 실패하였습니다. 아이디가 존재하지 않습니다.');");
			out.println("history.go(-1);");
		} else if(result == 0){// 비밀번호 틀림
			out.println("alert('로그인에 실패하였습니다. 비밀번호가 틀렸습니다.');");
			out.println("history.go(-1);");
		} else{// 성공시
			session.setAttribute("id", id); // 세션 로그인 유지

			out.println("location='./'");
		}

		out.println("</script>");
		out.close();
		return null;

	}

	///////////////////////////////////////// 로그 아웃
	@RequestMapping(value = "/MemberLogout.me", method = RequestMethod.GET)
	public ModelAndView memberLogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("logout 요청");
		HttpSession session = request.getSession();

		// 세션 종료
		session.invalidate();

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<script>");
		out.println("alert('로그아웃 되었습니다.')");
		out.println("location='./'");
		out.println("</script>");
		return null;
	}

	@RequestMapping(value = "/MemberJoin.me", method = RequestMethod.GET)
	public String memberJoin() {
		System.out.println("join 요청");
		return "member/member_join";
	}

	///////////////////////////////////////// 회원 가입
	@RequestMapping(value = "/MemberJoinProcess.me", method = RequestMethod.POST)
	public String memberJoinProcess(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		System.out.println("join 실행");

		MultipartRequest multi = null;

		int fileSize = 5 * 1024 * 1024;

		String savePath = "C:\\workspaces\\Final_Project_Carsale\\src\\main\\webapp\\resources\\img\\profile";
		// 이진파일 업로드 서버 경로

		multi = new MultipartRequest(request, savePath, fileSize, "UTF-8");

		MemberBean mb = new MemberBean();
		mb.setMemberId(multi.getParameter("id"));
		mb.setMemberPw(multi.getParameter("pw"));
		mb.setMemberName(multi.getParameter("name"));
		mb.setMemberJumin1(Integer.parseInt(multi.getParameter("jumin_front")));
		mb.setMemberJumin2(Integer.parseInt(multi.getParameter("jumin_back")));
		mb.setMemberEmail(multi.getParameter("email") + "@" + multi.getParameter("naver"));
		mb.setMemberEmailGet(multi.getParameter("MEMBER_EMAIL_GET"));
		mb.setMemberMobile(multi.getParameter("mobile"));
		mb.setMemberPhone(multi.getParameter("phone"));
		mb.setMemberZipcode(multi.getParameter("zip_front") + "-" + multi.getParameter("zip_back"));
		mb.setMemberAddr1(multi.getParameter("addr_front"));
		mb.setMemberAddr2(multi.getParameter("addr_back"));
		mb.setMemberAdmin(0);
		mb.setMemberJoinDate(new Date(System.currentTimeMillis()));

		File UpFile = multi.getFile("member_image");

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
			String refileName = "PROFILE" + mb.getMemberId() + "." + fileExtension;// 새로운
																					// 파일명을
																					// 저장
			String fileDBName = "/" + refileName;
			// 데이터 베이스에 저장될 레코드 값

			UpFile.renameTo(new File(savePath + "/" + refileName));
			// 변경된 이진파일로 실제 업로드
			mb.setMemberImage(fileDBName);
		}

		memberDAO.insertMember(mb);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('회원가입이 완료되었습니다.');");
		out.println("location.href='./MemberLogin.me';");
		out.println("</script>");
		out.close();

		return "redirect:/";
	}

	/////////////////////////////////// 아이디 확인
	@RequestMapping(value = "/MemberIDCheck.me", method = RequestMethod.GET)
	public ModelAndView memberIDCheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MemberBean mb = null;
		System.out.println("아이디 확인");
		int check=0;
		
		String id = request.getParameter("id");

		try {
			mb = memberDAO.getMember(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("./member/member_idchk");

		
		if(mb==null) check = 0;
		else 		 check = 1;
		
		request.setAttribute("id", id);
		request.setAttribute("check", check);
		
		return mav;

	}
	
	/////////////////////////////////// 우편번호 검색
	@RequestMapping(value = "/Zipcode.me", method = RequestMethod.GET)
	public ModelAndView zipcode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("./member/member_zipcode");

		return mav;

	}
}
