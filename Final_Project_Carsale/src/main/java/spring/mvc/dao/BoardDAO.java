package spring.mvc.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.model.BoardBean;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public BoardDAO() {
	}

	// 글등록
	public int boardInsert(BoardBean boardDTO) {
		boardDTO.setBoardNum(getBoardLastNum()+1);
		
		int result = this.sqlSession.insert("board_insert", boardDTO);
		
		return result;
	}

/*	public List<BoardBean> getBoardList(int page, int limit) {
		int startrow = (page - 1) * 7 + 1;
		int endrow = startrow + limit - 1;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startrow", startrow);
		map.put("endrow", endrow);
		List<BoardBean> list = this.sqlSession.selectList("board_list", map);
		return list;
	}
	*/
	
	public List<BoardBean> getBoardList() {
		List<BoardBean> list = this.sqlSession.selectList("board_list");
		return list;
	}
	
	public int getBoardCount() {
			int count=0;
			count=this.sqlSession.selectOne("board_count");
			return count;
	}
	
	public int getBoardLastNum() {
		String res=this.sqlSession.selectOne("board_last_num");
		if(res==null)
			res="0";
		
		int last_num = Integer.parseInt(res);
		
		return last_num;
}

	
	public BoardBean getBoardDetail(int num) {
		BoardBean bb = this.sqlSession.selectOne("board_detail",num);
		return bb;
	}
	
	public boolean boardDelete(int num) {
		this.sqlSession.delete("board_delete",num);
		return true;
	}

	public boolean isBoardWriter(int num) {
		return true;
	}

}