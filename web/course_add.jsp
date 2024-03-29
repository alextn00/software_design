<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width" initial-scale="1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
<title>학생경력관리시스템</title>
</head>

<body>
 <!-- 네비게이션 -->
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="summary.jsp">학생경력관리시스템</a>

  </div>
	 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		 <ul class="nav navbar-nav">
			 <!-- Link 메뉴 -->
			 <li><a href="personal_check.jsp">개인정보확인</a></li>
			 <li><a href="summary.jsp">학적정보확인</a></li>
			 <li><a href="graduation_criteria.jsp">졸업요건충족확인</a></li>
			 <li><a href="logout.jsp">로그아웃</a></li>
			 <!-- DropDown 형식의 메뉴 -->
		 </ul>
		 <ul class="nav navbar-nav navbar-right">
			 <li class="dropdown">
				 <a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">메뉴<span class="caret"></span></a>
				 <ul class="dropdown-menu">
					 <li><a href="course_check.jsp">교과 정보 확인</a></li>
					 <li><a href="course_add.jsp">교과 정보 수정</a></li>
					 <li><a href="noncourse_check.jsp">비교과 정보 확인</a></li>
					 <li><a href="noncourse_modify.jsp">비교과 정보 수정</a></li>
				 </ul>
			 </li>
		 </ul>
	 </div>
	 </div>
 </nav>
 
 <!-- 과목 추가 -->
<div class = "modal-dialog">
	<div class = "modal-content">
		<div class = "modal-header">
			<h1 style="text-align: center;">과목 추가</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "course_add.jsp" method = "post">
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> 수강 년도 </label>
						<select name = "lectureYear" class = "form-control">
						<option value="2011">2011</option>
                    	<option value="2012">2012</option>
	                    <option value="2013">2013</option>
	                    <option value="2014">2014</option>
	                    <option value="2015">2015</option>
	                    <option value="2016">2016</option>
	                    <option value="2017">2017</option>
	                    <option value="2018">2018</option>
	                    <option value="2019"selected>2019</option>
	                    <option value="2020">2020</option>
	                    <option value="2021">2021</option>
	                    <option value="2022">2022</option>
	                    <option value="2023">2023</option>
						</select>
					</div>
					
					<div class = "form-group col-sm-6">
						<label> 수강 학기 </label>
						<select name = "lectureSemester" class = "form-control">
						<option value="1학기">1학기</option>
                    	<option value="여름학기">여름학기</option>
	                    <option value="2학기"selected>2학기</option>
	                    <option value="겨울학기">겨울학기</option>
	                    </select>
	                </div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> 교과 구분 </label>
						<select name = "selectLecture" class = "form-control">
						<option value=""selected>선택</option>
						<option value="교양">교양</option>
                    	<option value="기본소양">기본소양</option>
	                    <option value="전공기반">전공기반</option>
	                    <option value="공학전공">공학전공</option>
	                    </select>
	                </div>
					
					<div class = "form-group col-sm-6">
						<label> 과목 코드 </label>
						<input type = "text" name = "code" class = "form-control">
					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> 학점 </label>
						<select name = "credit" class = "form-control">
						<option value=""selected>선택</option>
						<option value="1">1</option>
                    	<option value="2">2</option>
	                    <option value="3">3</option>
	                    <option value="6">6</option>
						</select>
					</div>
					
					<div class = "form-group col-sm-6">
						<label> 성적 </label>
						<select name = "grade" class = "form-control">
						<option value=""selected>선택</option>
						<option value="A+">A+</option>
                    	<option value="A0">A0</option>
	                    <option value="A-">A-</option>
	                    <option value="B+">B+</option>
	                    <option value="B0">B0</option>
                    	<option value="B-">B-</option>
	                    <option value="C+">C+</option>
	                    <option value="C0">C0</option>
	                    <option value="C-">C-</option>
	                    <option value="D+">D+</option>
	                    <option value="D0">D0</option>
	                    <option value="D-">D-</option>
	                    <option value="F">F</option>
	                    </select>
	                </div>
				</div>
				
				<div class = "form-group">
					<label>과목명</label>
					<input type = "text" name = "lectureName" class = "form-control" maxlength = "20">
				</div>
				
				 <div class = "modal-footer">
			    	<button type = "button" class = "btn btn-secondary"> 취소 </button>
			    	<button type = "submit" class = "btn btn-primary"> 저장</button>
			    </div>
			</form>
		</div>
	</div>
</div>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <!-- 부트스트랩 JS  -->
 <script src="js/bootstrap.js"></script>
</body>
</html>
