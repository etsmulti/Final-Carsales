package spring.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.dao.CarsaleDAO;
import spring.mvc.model.CarsaleBean;


@Controller
public class CarsaleController {

	@Autowired
	private CarsaleDAO carsaleDAO;
	
	@Autowired
	private CarsaleBean carsaleBean;
	
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
	
	@RequestMapping("/CarsaleInsert.cs")
	public String carsale_insert(HttpServletRequest request, HttpServletResponse response) {
		return "carsale/carsale_add";
	}
	
	
	@RequestMapping("/CarsaleInsertProcess.cs")
	public ModelAndView carsale_insert_process(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		Date date1 = new Date();


		String dateString = request.getParameter("saleBuycarDate");
		// String 을 Date로 변경 방법 java.util.date 로 변경
		// System.out.println("날짜 String (dateString): "+ dateString);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		// use SimpleDateFormat to define how to PARSE the INPUT
		try {
			date1 = sdf.parse(dateString);
//			System.out.println("date1 :" + date1);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		int num = carsaleDAO.getSaleNum() + 1;
		int readcount = 1;
		String imagepath = "img/carsale/" + num + "/";
		String imagemain = imagepath + "1.jpg";
		int imgnum = 20;

		// System.out.println("salenum : " + num);

		carsaleBean.setSaleNum(num);
		carsaleBean.setCarDetailNum(request.getParameter("carDetailNum"));
		carsaleBean.setMemberId(request.getParameter("memberId"));
		carsaleBean.setSaleCarNumber(request.getParameter("saleCarNumber"));
		carsaleBean.setSaleTitle(request.getParameter("saleTitle"));

		carsaleBean.setSaleCarColor(request.getParameter("saleCarColor"));
		carsaleBean.setSaleCarPrice(Integer.parseInt(request.getParameter("saleCarPrice")));
		carsaleBean.setSaleContent(request.getParameter("saleContent"));
		carsaleBean.setSaleReadcount(readcount);
		carsaleBean.setSaleUseKm(request.getParameter("saleUseKm"));

		carsaleBean.setSaleImagePath(imagepath);
		carsaleBean.setSaleImageNum(imgnum);
		carsaleBean.setSaleImageMain(imagemain);
		carsaleBean.setSaleBuycarDate(date1);

		// System.out.println("날짜 : " + date1);
		// System.out.println("request.getParameter(saleTitle) : "
		// +request.getParameter("saleTitle"));

		try {

			carsaleDAO.insertCarsale(carsaleBean);
			//request.getSession().setAttribute("carnum", num);
//			

			// System.out.println("DB입력 성공");
			
			mav.addObject("carnum", num);
			System.out.println("insert 컨트롤러 : "+num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mav.setViewName("/carsale/carsale_add_img");
		
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
	
	@RequestMapping(value = "/CarsaleDetail.cs", method = RequestMethod.GET)
	public ModelAndView carsale_detail(@RequestParam("num") String num,
			HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();		
		int saleNum = 0;
		
        try {
        	saleNum =Integer.parseInt(request.getParameter("num"));		
        	carsaleBean = carsaleDAO.getCarsale(saleNum);
        	request.setAttribute("carsale", carsaleBean);
			request.setAttribute("carmdetail", carsaleDAO.getCarMdetail(carsaleBean.getCarDetailNum()));
			request.setAttribute("member", carsaleDAO.getMember(carsaleBean.getMemberId()));			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
        
		mav.setViewName("carsale/carsale_detail");
		
		return mav;
	}
	
	@RequestMapping(value="/fileUpload.cs", method=RequestMethod.POST)  //메서드와 home.jsp가 연결되었다.
	public String fileUpload(MultipartHttpServletRequest  mRequest)     //파일 업로드 메서드 , 원래 클래스를 만들어도 되지만 메서드로 해본다.
	{
		System.out.println("fileUpload() 메서드 실행");
		boolean isSuccess = false;
		ModelAndView mav = new ModelAndView();
				
		int carnum = Integer.parseInt(mRequest.getParameter("carnum"));
		
		System.out.println("carnum : " +carnum);
		
		String uploadPath = "C:/workspaces/Final_Project_Carsale/src/main/webapp/resources/img/carsale/" +carnum +"/"  ;

		System.out.println("uploadPath = "+uploadPath);

		// 절대 경로로 업로드 패스를 해주었다.
		
		File dir = new File(uploadPath);
		
		if(!dir.isDirectory()){
			dir.mkdir();  //디렉토리가 없으면 만들어라
			System.out.println("디렉토리 생성 : " + uploadPath);
		}
		
		Iterator<String> iter =  mRequest.getFileNames();
		// import java.util.Iterator;
		/*
		 * 데이터를 꺼내올때 컬렉션프로엠워크에서 꺼내올때 사용
		 * 이터레이터타입으로 데이터를 꺼내오면 정형화된 소스코드로 되어 있다.  인터페이스고 이때 제공되는 메서드를 이용해서 사용한다.
		 * iter.hasNext()  데이터가 있는지 없는지를 판단한다. 있으면 true값을 반환 한다.
		 * 있다면 꺼내올때 String uploadFileName = iter.next();
		 */
		int i = 0;
		while(iter.hasNext() ) {
			String uploadFileName = iter.next();
			MultipartFile  mFile = mRequest.getFile(uploadFileName);
			String orignalFileName = mFile.getOriginalFilename();  //브라우저에서 전송된 파일의 이름을 반환해 준다.
			String saveFileName = orignalFileName;
			i++;
			if(saveFileName != null && !saveFileName.equals("")) {
//				if(new File(uploadPath+saveFileName).exists()) {
//					saveFileName = saveFileName + "_" + System.currentTimeMillis();//밀리세컨으로 해서 같은 이름이 되기 힘들다.					
//				}
				
				try {
					saveFileName = i+".jpg";
					mFile.transferTo(new File(uploadPath+saveFileName));
					isSuccess = true;
					//mFile.transferTo(new File(uploadPath+saveFileName)); 이걸 실행하는 순간 데이터를 서버에 전송되서 저장된다.
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					isSuccess = false;
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					isSuccess = false;
				}
				
				if(isSuccess) {
					System.out.printf("%d 번째 정보 오리지날 파일이름 : %s, 변경 파일이름  %s \n ",  i,  orignalFileName, saveFileName  );
					
				} else{
					System.out.println("사진저장 실패");
				}
				
			}
		}
		
//		String num = "" + carnum;
		
//		mav.addObject("num", num);
//		mav.setViewName("carsale/carsale_detail");
//		
//		return mav;
		
		
/*        try {        	
        	carsaleBean = carsaleDAO.getCarsale(carnum);
        	mRequest.setAttribute("num", num);
        	mRequest.setAttribute("carsale", carsaleBean);
        	mRequest.setAttribute("carmdetail", carsaleDAO.getCarMdetail(carsaleBean.getCarDetailNum()));
        	mRequest.setAttribute("member", carsaleDAO.getMember(carsaleBean.getMemberId()));			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}*/
        
//		mav.setViewName("carsale/carsale_detail");
		return "redirect:./CarsaleDetail.cs?num="+carnum;
	}		
}