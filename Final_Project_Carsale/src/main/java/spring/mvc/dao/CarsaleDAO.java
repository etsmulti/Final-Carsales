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
			System.out.println("차판매 모든 리스트 호출");
		}
		
		System.out.println("차판매 자동차 대수 : "+carsalelist.size());
		
		for(int i=0;i<carsalelist.size();i++){
			System.out.println("차판매 리스트 : "+carsalelist.get(i));
		}
		
		return carsalelist;
	}

	public List<CarCorpBean> getCarcorpList() {
		List<CarCorpBean> carcorplist = new ArrayList<CarCorpBean>();
		carcorplist = sqlSession.selectList("carcorp_list_all");
		
		for(int i=0;i<carcorplist.size();i++){
			System.out.println("회사 : "+carcorplist.get(i).getCarcorp());
		}
		
		return carcorplist;
	}

	public List<CarModelBean> getCarmodelList() {
		List<CarModelBean> carmodellist = new ArrayList<CarModelBean>();
		carmodellist = sqlSession.selectList("carmodel_list_all");
		for(int i=0;i<carmodellist.size();i++){
			System.out.println("모델 : "+carmodellist.get(i).getCarmodel());
		}
		
		return carmodellist;
	}

	public List<CarMdetailBean> getCardetailList() {
		List<CarMdetailBean> cardetaillist = new ArrayList<CarMdetailBean>();
		cardetaillist = sqlSession.selectList("cardetail_list_all");
		
		System.out.println("상세개수 : "+cardetaillist.size());
		for(int i=0;i<cardetaillist.size();i++){
			System.out.println("상세 : "+cardetaillist.get(i).getCarDetail());
		}

		return cardetaillist;
	}


	public CarMdetailBean getCarMdetail(String carMNum) throws SQLException {

		CarMdetailBean carmdetail = null;

		return carmdetail;
	}

	public CarsaleBean getCarsale(int saleNum) throws SQLException {

		CarsaleBean carsale = null;

		return carsale;
	}

	public MemberBean getMember(String memberId){
		MemberBean member = null;

		return member;
	}
	

	public boolean insertCarsale(CarsaleBean csb) throws SQLException {
		String sql = null;
		boolean result = false;
		return result;
	}
}