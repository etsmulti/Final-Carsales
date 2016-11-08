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
	
	public int insertMember(MemberBean mb) throws SQLException{
		int result = 0;
		result = sqlSession.insert("member_insert");
		return result;
	}
	

	public MemberBean getMember(String id) throws SQLException{
		MemberBean member=null;

		member = sqlSession.selectOne("member_find",id);
		return member;
	}
	
	public int userCheck(String id, String pw) throws SQLException{
		MemberBean member=null;
		int result=-1;
		member = getMember(id);
		
		if(member.getMemberPw().equals(pw))
			result=1;
		
		return result;
	}
	
	public int confirmId(String id) throws SQLException{
		MemberBean member=null;
		int result=-1;
		member = getMember(id);
		
		if(member!=null)
			result=1;
		
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