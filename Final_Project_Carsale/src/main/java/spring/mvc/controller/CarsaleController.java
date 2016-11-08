package spring.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.dao.CarsaleDAO;


@Controller
public class CarsaleController {

	@Autowired
	private CarsaleDAO carsaleDAO;
	
	@RequestMapping(value = "/CarsaleList.cs", method = RequestMethod.GET)
	public ModelAndView carsale_list_get(HttpServletRequest
   		 request, HttpServletResponse response) {
		System.out.println("자동차 리스트 호출");

		String carcorpNum = request.getParameter("dmaker");
		String carmodelNum = request.getParameter("dmodel");
		String cardetailNum = request.getParameter("ddetail");
		
		System.out.println("요청 : "+carcorpNum+ carmodelNum+ cardetailNum);
		
		ModelAndView mav = new ModelAndView();
		request.setAttribute("carsaleList", carsaleDAO.getCarsaleList(carcorpNum, carmodelNum, cardetailNum));
		request.setAttribute("carcorpList", carsaleDAO.getCarcorpList());
		request.setAttribute("carmodelList", carsaleDAO.getCarmodelList());
		request.setAttribute("cardetailList", carsaleDAO.getCardetailList());
	
		mav.setViewName("carsale/carsale_list");
		
		return mav;
	}
	
	@RequestMapping(value = "/CarsaleList.cs", method = RequestMethod.POST)
	public ModelAndView carsale_list_post(HttpServletRequest
	   		 request, HttpServletResponse response) {
		System.out.println("자동차 리스트 호출");

		String carcorpNum = request.getParameter("dmaker");
		String carmodelNum = request.getParameter("dmodel");
		String cardetailNum = request.getParameter("ddetail");
		
		System.out.println("요청 : "+carcorpNum+ carmodelNum+ cardetailNum);
		
		ModelAndView mav = new ModelAndView();
		request.setAttribute("carsaleList", carsaleDAO.getCarsaleList(carcorpNum, carmodelNum, cardetailNum));
		request.setAttribute("carcorpList", carsaleDAO.getCarcorpList());
		request.setAttribute("carmodelList", carsaleDAO.getCarmodelList());
		request.setAttribute("cardetailList", carsaleDAO.getCardetailList());
	
		mav.setViewName("carsale/carsale_list");
		
		return mav;
	}
	
	@RequestMapping(value = "/CarsaleDetail.cs", method = RequestMethod.POST)
	public ModelAndView carsale_detail(@RequestParam("dmaker") String dmaker) {
		System.out.println("자동차 상세 호출");
		
		ModelAndView mav = new ModelAndView();
		//mav.addObject("list", carsaleDAO.getCarsale(saleNum));
		mav.setViewName("carsale/carsale_detail");
		
		return mav;
	}
}