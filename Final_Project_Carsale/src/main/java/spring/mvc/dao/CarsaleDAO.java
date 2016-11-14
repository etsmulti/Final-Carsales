package spring.mvc.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.model.CarCorpBean;
import spring.mvc.model.CarMdetailBean;
import spring.mvc.model.CarModelBean;
import spring.mvc.model.CarsaleBean;
import spring.mvc.model.MemberBean;

@Repository
public class CarsaleDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public CarsaleDAO() {
	
	}

	public List<CarsaleBean> getCarsaleList(String carcorpNum, String carmodelNum, String cardetailNum) {
		List<CarsaleBean> carsalelist = new ArrayList<CarsaleBean>();
		
		System.out.println("DAO 요청 : "+carcorpNum+ carmodelNum+ cardetailNum);
		
		if (cardetailNum != "") {
			carsalelist = sqlSession.selectList("carsale_list_by_detail",cardetailNum);
		} else if (carmodelNum != "") {
			carsalelist = sqlSession.selectList("carsale_list_by_model",carmodelNum);
		} else if (carcorpNum != "") {
			carsalelist = sqlSession.selectList("carsale_list_by_corp",carcorpNum);
		}else{
			carsalelist = sqlSession.selectList("carsale_list_all");
		}
		
		System.out.println("차판매 자동차 대수 : "+carsalelist.size());
		
		return carsalelist;
	}

	public List<CarCorpBean> getCarcorpList() {
		List<CarCorpBean> carcorplist = new ArrayList<CarCorpBean>();
		carcorplist = sqlSession.selectList("carcorp_list_all");
	
		return carcorplist;
	}

	public List<CarModelBean> getCarmodelList() {
		List<CarModelBean> carmodellist = new ArrayList<CarModelBean>();
		carmodellist = sqlSession.selectList("carmodel_list_all");

		return carmodellist;
	}

	public List<CarMdetailBean> getCardetailList() {
		List<CarMdetailBean> cardetaillist = new ArrayList<CarMdetailBean>();
		cardetaillist = sqlSession.selectList("cardetail_list_all");

		return cardetaillist;
	}


	public CarMdetailBean getCarMdetail(String carMNum) throws SQLException {
		return sqlSession.selectOne("selectCarMdetail",  carMNum);
	}

	public CarsaleBean getCarsale(int saleNum) throws SQLException {
		return sqlSession.selectOne("selectCarsale",  saleNum);
	}

	public MemberBean getMember(String memberId){
		return sqlSession.selectOne("selectMember",  memberId);
	}
	

	public void insertCarsale(CarsaleBean csb) throws SQLException {
		 sqlSession.insert("insertCarsale", csb);
	}
	
    public int getSaleNum() {
		String res = sqlSession.selectOne("maxsaleNum");
				
		if (res == null)
			res = "0";

		int maxsaleNum = Integer.parseInt(res);

		return maxsaleNum;
	}
}