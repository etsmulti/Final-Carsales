package spring.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.model.BoardBean;

@Repository
public class BoardDAO {
	/* myBatis 객체 주입(설정파일-admin_board2.xml) */
	@Autowired
	private SqlSessionTemplate sqlSession;

	public BoardDAO() {
	}

	// 글등록
	public boolean boardInsert(BoardBean boardDto) {
		return true;
	}

	public List<BoardBean> getBoardList(int page, int limit) {
		int startrow = (page - 1) * 7 + 1;
		int endrow = startrow + limit - 1;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startrow", startrow);
		map.put("endrow", endrow);
		List<BoardBean> list = this.sqlSession.selectList("aBoard_list", map);
		return list;
	}

	public BoardBean getBoardDetail(int num) {
		return new BoardBean();
	}

	public boolean boardDelete(int num) {
		return true;
	}

	public boolean isBoardWriter(int num) {
		return true;
	}

}