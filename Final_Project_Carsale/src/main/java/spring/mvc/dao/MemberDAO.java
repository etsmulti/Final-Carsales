package spring.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.model.MemberBean;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDAO() {	}
	
	// 멤버 저장
	public int insertMember(MemberBean mb) throws SQLException{
		int result = 0;
		result = sqlSession.insert("member_insert",mb);
		return result;
	}
	
	// 아이디 찾기
	public MemberBean getMember(String id) throws SQLException{
		MemberBean member=null;
		System.out.println("id : "+id);
		member = sqlSession.selectOne("member_find",id);
		return member;
	}
	
	// 멤버 찾기(로그인)
	public int userCheck(String id, String pw) throws SQLException{
		MemberBean member=null;
		int result=0;
		member = getMember(id);
		
		
		if(member==null) // 멤버가 없다
			result = -1;
		else if(member.getMemberPw().equals(pw)) //로그인 성공
			result = 1;
		else
			result = 0;//멤버가 있는데 비밀번호가 틀리다
		
		return result;
	}
	
	public void updateMember(MemberBean mb) throws SQLException{
		
	}
	
	public int deleteMember(String id, String pw) throws SQLException{
		String sql=null;
		int x=-1;
		
		return x;
	}	
	
	
	public boolean isAdmin(String id){
		int member_admin=0;
		boolean result = false;
		return result;
	}
	
	public List searchZipcode(String searchdong){
		List zipcodeList=new ArrayList();
		
		return zipcodeList;
	}
}