<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp"%>
                    <link href="resources/frontend/css/src/JMCSS/Judge.css" type="text/css" rel="stylesheet">
                    <link href="resources/frontend/css/src/JMCSS/Header.css" type="text/css" rel="stylesheet">
</head>
<body>

		<%@ include file="header.jsp"%>
		<div id="JMJudge">
			<ul class="JMList2" >
				<c:forEach items="${judgeList}" var="item">
	
				<li class="JMItem">
					<a class="JMLink" href="judge/judgeDetail/${item.id}"> 
						<img class="JMThumb" src="${item.headicon}">
						<div class="JMInfo">
							<h3 class="JMTitle">${item.name}</h3>
							<!--<span class="zyCountry">中国</span>-->
							<div class="JMExcerpt">${item.subTitle}</div>
						</div>
					</a>
					<hr class="JMJudgeLine">
				</li>
	
			</c:forEach>
			
				
			</ul>
		</div>
<script>
		var pageName = "judge";
	</script>
	<script src="resources/js/lib/jquery-1.10.2.min.js"></script>
	<script src="resources/frontend/js/src/config.js"></script>
	<script src="resources/frontend/js/src/header.js"></script>
</body>
</html>