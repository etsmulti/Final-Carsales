package spring.mvc.dao;

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
	public int insertBoard(BoardBean boardDTO) {
		boardDTO.setBoardNum(getBoardLastNum() + 1);

		int result = this.sqlSession.insert("board_insert", boardDTO);

		return result;
	}

	/*
	 * public List<BoardBean> getBoardList(int page, int limit) { int startrow =
	 * (page - 1) * 7 + 1; int endrow = startrow + limit - 1;
	 * 
	 * Map<String, Integer> map = new HashMap<String, Integer>();
	 * map.put("startrow", startrow); map.put("endrow", endrow); List<BoardBean>
	 * list = this.sqlSession.selectList("board_list", map); return list; }
	 */

	public List<BoardBean> getBoardList() {
		List<BoardBean> list = this.sqlSession.selectList("board_list");
		return list;
	}

	public int getBoardHit() {
		int count = 0;
		count = this.sqlSession.selectOne("board_hit");
		return count;
	}

	
	/////////////// list가 0 일 때 null이 반환되는 경우 에러 방지를 위해 
	// String으로 반환하여 int 변환  
	public int getBoardLastNum() {
		String res = this.sqlSession.selectOne("board_last_num");
		if (res == null)
			res = "0";

		int last_num = Integer.parseInt(res);

		return last_num;
	}

	public BoardBean getBoardDetail(int num) {
		BoardBean bb = this.sqlSession.selectOne("board_detail", num);
		return bb;
	}

	public boolean deleteBoard(int num) {
		this.sqlSession.delete("board_delete", num);
		return true;
	}

	public boolean countGood(int num) {
		BoardBean bb = this.sqlSession.selectOne("board_detail", num);
		this.sqlSession.update("count_good", bb);
		return true;		
	}
	

	public boolean countHit(int num) {
		BoardBean bb = this.sqlSession.selectOne("board_detail", num);
		this.sqlSession.update("count_hit", bb);
		return true;
	}

	public boolean isBoardWriter(int num) {
		return true;
	}

}