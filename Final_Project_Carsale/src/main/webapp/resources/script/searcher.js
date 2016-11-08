/*
 * 검색 모듈의 국산차 수입차 변경되는 부분
*/
$(function() {
	$("ul.panel li:not(" + $("ul.tab li a.selected").attr("href") + ")").hide();
	$("ul.tab li a").click(function() {
		$("ul.tab li a").removeClass("selected");
		$(this).addClass("selected");
		$("ul.panel li").hide();
		$($(this).attr("href")).show();
		initSearcher(); // 국산차, 수입차 버튼 클릭시 선택된 값 모두 초기화
		return false;
	});
});

function initSearcher() {
	$(".viewList").hide();

	$("#smaker").removeClass("selected");
	$("#smaker").html("제조사");
	$("#dmaker").val("");

	$("#dmodel").val("");
	$("#smodel").removeClass("selected");
	$("#smodel").html("모델");

	$("#ddetail").val("");
	$("#sdetail").removeClass("selected");
	$("#sdetail").html("상세 모델");
	

	$(".overseas #smaker").removeClass("selected");
	$(".overseas #smaker").html("제조사");
	$(".overseas #dmaker").val("");

	$(".overseas #dmodel").val("");
	$(".overseas #smodel").removeClass("selected");
	$(".overseas #smodel").html("모델");

	$(".overseas #ddetail").val("");
	$(".overseas #sdetail").removeClass("selected");
	$(".overseas #sdetail").html("상세 모델");
}
/*
 * 검색 버튼 클릭시 폼의 데이터들을 post 값으로 전달
*/
function goSearch(){
	 $("#searchFrm").attr({
         "action" : "./CarsaleList.cs",
         "method" : "post"
     });
	$("#searchFrm").submit();
} 

/*
 * 제조사, 모델, 상세 모델을 눌렀을 때 xml 파일에서 해당되는 내용을 불러온다.
*/
function viewTestSch(choice) {
	var xhttp = new XMLHttpRequest();
	var file = null;
	if (choice == 0 || choice == 3) // 제조사
		file = "resources/xml/car_corp.xml";
	else if (choice == 1 || choice == 4) // 모델
		file = "resources/xml/car_model.xml";
	else if (choice == 2 || choice == 5) // 상세 모델
		file = "resources/xml/car_detail.xml";

	xhttp.onreadystatechange = function() { // 파일을 불러오면 실행
		if (this.readyState == 4 && this.status == 200) {
			if (choice == 0 || choice == 3) {
				corpFunction(this, choice); // 제조사 리스트 불러줌
				document.getElementById("corpList").style.display = "";
				document.getElementById("modelList").style.display = "none";
				document.getElementById("detailList").style.display = "none";
			}

			else if (choice == 1 || choice == 4) {
				modelFunction(this); // 모델 리스트 불러줌
				document.getElementById("corpList").style.display = "none";
				document.getElementById("modelList").style.display = "";
				document.getElementById("detailList").style.display = "none";
			}

			else if (choice == 2 || choice == 5) {
				detailFunction(this); // 상세 모델 리스트 불러줌
				document.getElementById("corpList").style.display = "none";
				document.getElementById("modelList").style.display = "none";
				document.getElementById("detailList").style.display = "";
			}
		}
	};

	xhttp.open("GET", file, true); //GET 방식으로 파일을 불러옴 
	xhttp.send();
}

function corpFunction(xml, choice) {
	var numOfDomestic = 6; // 국산차 갯 수
	var startOfOverseas = 20; // 해외차 번호는 20번부터
	var i = 0;
	var num = 0;
	var xmlDoc = xml.responseXML;

	var list = "<span class=\"listTitle\"><strong>제조사</strong>를 선택하세요.</span>";
	var x = xmlDoc.getElementsByTagName("row");
	
	/*
	 * 국산차와 수입차가 하나의 XML 파일에 있기때문에
	 * 국산차 만을 불러오기 위해
	 * 국산차 갯수를 직접 지정해줌
	*/
	
	if (choice == 0) { // 국산차 일 때(국산차는 0부터 5까지, 총 6대일때)
		i = 0;
		num = numOfDomestic;
	} else if (choice == 3) { // 수입차 일 때(나머지)
		i = numOfDomestic;
		num = x.length;
	}
	
	list+="<ul>";
	for (var j=1; i < num; i++,j++) {
			var corp_num = x[i].getElementsByTagName("column")[0].childNodes[0].nodeValue;
			var corp_name = x[i].getElementsByTagName("column")[1].childNodes[0].nodeValue;
			list += "<li><a href=\"javascript:setNext('" + corp_name + "/"
					+ corp_num + "','','maker');\" title=\'"+corp_name+"\'>" + corp_name + "</a></li>";
		if(j%10==0){ // 10개마다 ul 태그 생성
			list+="</ul><ul>";
		}
	}
	list+="</ul>";
	
	document.getElementById("corpList").innerHTML = list;
}

function modelFunction(xml) {
	var i;
	var j=1;
	var xmlDoc = xml.responseXML;

	var list = "<span class=\"listTitle\"><strong>모델</strong>을 선택하세요.</span><ul>";
	var x = xmlDoc.getElementsByTagName("row");
	for (i = 0; i < x.length; i++) {
		if (x[i].getElementsByTagName("column")[1].childNodes[0].nodeValue == document
				.getElementById('dmaker').value) {
			var modelnum = x[i].getElementsByTagName("column")[0].childNodes[0].nodeValue;
			var modelname = x[i].getElementsByTagName("column")[2].childNodes[0].nodeValue;
			list += "<li><a href=\"javascript:setNext('" + modelname + "/"
					+ modelnum + "','','model');\" title=\'"+modelname+"\'>" + modelname + "</a></li>";
			j++;
		}
		if(j%10==0){
			list+="</ul><ul>";
		}

	}
	list += "</ul>";
	
	document.getElementById("modelList").innerHTML = list;
}

function detailFunction(xml) {
	var i;
	var xmlDoc = xml.responseXML;

	var list = "<span class=\"listTitle\"><strong>상세 정보</strong>를 선택하세요.</span><ul>";
	var x = xmlDoc.getElementsByTagName("row");

	for (i = 0; i < x.length; i++) {
		if ((x[i].getElementsByTagName("column")[1].childNodes[0].nodeValue == document
				.getElementById('dmodel').value)
				&& x[i].getElementsByTagName("column")[2].childNodes[0].nodeValue == document
						.getElementById('dmaker').value) {

			var detail_num = x[i].getElementsByTagName("column")[0].childNodes[0].nodeValue;
			var detail_name = x[i].getElementsByTagName("column")[3].childNodes[0].nodeValue;
			list += "<li><a href=\"javascript:setNext('" + detail_name + "/"
					+ detail_num + "','','detail');\" title=\'"+detail_name+"\'>" + detail_name
					+ "</a></li>";
		}
	}
	list += "</ul>";
	document.getElementById("detailList").innerHTML = list;
}

/*
 * 리스트의 제조사, 모델, 상세 모델을 눌렀을 때 실행 되는 함수
 * 인자 값으로 data(ex:'현대/01') midval(현재 사용 x) type(ex:'maker') 을 사용함
*/
var setNext = function(data, midval, type) {
	if (type == "maker") {
		if(parseInt(data.split("/")[1])<20){ // data의 '/' 이후 값이 20보다 작을 때. 즉, 국산차 일때
			$(".domestic #smaker").addClass("selected");
			$(".domestic #smaker").html(data.split("/")[0]);

			// 제조사 리스트 클릭시 모델, 상세모델 값 초기화
			$(".domestic #smodel").removeClass("selected");
			$(".domestic #smodel").html("모델");
			$(".domestic #sdetail").removeClass("selected");
			$(".domestic #sdetail").html("상세 모델");
		}
		else{ // 해외차 일 때
			$(".overseas #smaker").addClass("selected");
			$(".overseas #smaker").html(data.split("/")[0]);

			// 제조사 리스트 클릭시 모델, 상세모델 값 초기화
			$(".overseas #smodel").removeClass("selected");
			$(".overseas #smodel").html("모델");
			$(".overseas #sdetail").removeClass("selected");
			$(".overseas #sdetail").html("상세 모델");
		}

		// form의 히든 값 지정(제조사는 전달된 값, 나머지는 초기화)
		$("#dmaker").val(data.split("/")[1]);
		$("#dmodel").val("");
		$("#ddetail").val("");

		// 모델의 내용을 출력 해줌
		viewTestSch(1);

	} else if (type == "model") {

		if(parseInt(data.split("/")[1])<2000) {
			$(".domestic #smodel").addClass("selected");
			$(".domestic #smodel").html(data.split("/")[0]);

			// 모델 리스트 클릭시 상세모델 값 초기화
			$(".domestic #sdetail").removeClass("selected");
			$(".domestic #sdetail").html("상세 모델");
		}
		else{
			$(".overseas #smodel").addClass("selected");
			$(".overseas #smodel").html(data.split("/")[0]);

			// 모델 리스트 클릭시 상세모델 값 초기화
			$(".overseas #sdetail").removeClass("selected");
			$(".overseas #sdetail").html("상세 모델");
		}


		$("#dmodel").val(data.split("/")[1]);
		viewTestSch(2);

	} else if (type == "detail") {
		if(parseInt(data.split("/")[1])<200000) {
			$(".domestic #sdetail").addClass("selected");
			$(".domestic #sdetail").html(data.split("/")[0]);
		}
		else{
			$(".overseas #sdetail").addClass("selected");
			$(".overseas #sdetail").html(data.split("/")[0]);
		}

		$("#ddetail").val(data.split("/")[1]);

	}
}
