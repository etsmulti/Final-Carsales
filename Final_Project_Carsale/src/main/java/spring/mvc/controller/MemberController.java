package spring.mvc.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.dao.*;
import spring.mvc.model.MemberBean;

@Controller
public class MemberController {

	@Autowired
	//private MemberDAO memberDAO;
	
	@RequestMapping(value = "/MemberLogin.me", method = RequestMethod.GET)
	public String memberLogin() {
		System.out.println("login 요청");
		return "member/member_login";
	}
	
	@RequestMapping(value = "/MemberLoginProcess.me", method = RequestMethod.GET)
	public String memberLoginProcess(@RequestParam("id") String id) {
		System.out.println("login 실행");
		String pw=null;
		int result=0;
		/*try {
			result=memberDAO.userCheck(id, pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		if(result==-1){}//실패
		else{} //성공
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/MemberJoin.me", method = RequestMethod.GET)
	public String memberJoin() {
		System.out.println("join 요청");
		return "member/member_join";
	}
	
	@RequestMapping(value = "/MemberJoinProcess.me", method = RequestMethod.GET)
	public String memberJoinProcess(@RequestParam("member") MemberBean mb) {
		System.out.println("join 실행");
		/*try {
			memberDAO.insertMember(mb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return "redirect:/";
	}
}

