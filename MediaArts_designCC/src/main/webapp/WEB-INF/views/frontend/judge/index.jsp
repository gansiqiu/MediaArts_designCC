<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.page import="java.util.Hashtable" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../head.jsp"%>
<link href="resources/frontend/css/lib/kkpager_blue.css" type="text/css"
	rel="stylesheet">
<link href="resources/css/lib/jquery.toastmessage.css" type="text/css"
	rel="stylesheet">
	
<link href="resources/frontend/css/src/main.css" type="text/css"
	rel="stylesheet">
<link href="resources/frontend/css/src/index.css" type="text/css"
	rel="stylesheet">
<link href="resources/frontend/css/src/bootstrap.min.css" type="text/css"
	rel="stylesheet">


<script>
	var judgeId = "${judgeId}";
	var productionId = '${production.id}';
	var round = "${round}";
</script>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<!-- 弹出层内容块 -->
	<div class="cd-quick-view" id="cd-quick-view" style="width:100%;height:95%;">
		<!-- 图片 -->
		<div class="cd-slider-wrapper" style="width:50%;">
			<!--滑动组件-->
			<ul class="cd-slider" id="cd-slider" style="width:100%;">
			</ul>
			<!--左右按钮-->
			<ul class="cd-slider-navigation">
				<li><a class="cd-next btn btn-info" role="button" data-placement="bottom" data-animation = "true" 
						data-toggle="popover" data-trigger="focus" data-container="body" data-content="当前为第一页">Prev</a></li>
				<li><a class="cd-prev btn btn-info" role="button" data-placement="bottom" data-animation = "true" 
						data-toggle="popover" data-trigger="focus" data-container="body" data-content="当前为最后一页">Next</a></li>
			</ul>
		</div>
		<!--内容-->
		<div class="cd-item-info" style="width:48%;min-height:100%;">
			<div class="zyPanel zyMargin150">
				<h4 class="zyPanelTitle">评审作品</h4>
				<p class="zytext" style="font-size:12px;margin-right:100px;max-width:75%;">注：评分制度百分之，请输入0-100之间的数字，不能包含特殊字符</p>
				<p class="zytext" style="font-size:12px;max-width:75%;">点击“保存”按钮保存评分，如果已经过了评分截止日期，不能再进行分数保存。</p>
				<div class="zyScoreContainer" >
					<input type="text" id="zyScore" />
					<button class="zyBtn" id="zySaveScore">保存</button>
				</div>
			</div>
			<h4 id="zy-cd-Id" style="color: #e9608d;"></h4>
			<h4 id="zy-cd-title" style="color: #e9608d;"></h4>
			<p id="zy-cd-content" style="font-size:16px;margin-right:40px;text-indent:2em"></p>
		</div>
		<a id="cd-close" class="cd-close">Close</a>
	</div>
	
	
	<div class="zyPanel zyMargin60">

		<p class="zytext">
			尊敬的评委您好！<br> 请点击作品开始评分，点击“保存”按钮来保存您的打分。<br> 截止日期前，都可以修改打分。<br>
			所有通过该链接的打分都将视作您的个人行为，请勿与他人分享该链接。
		</p>
		

		<ul class="zyList3" id="zyFilter">
			<li class="zyItem zyActive" data-value="0">全部作品</li>
			<li class="zyItem" data-value="1">已打分</li>
			<li class="zyItem" data-value="2">未打分</li>
		</ul>
		
		<ul class="cd-items cd-container" id="ZyList">
		</ul>
		<%@ include file="../loading.jsp"%>

		<script>
			var pageName = "judge";
		</script>
	</div>
	<div id="kkpager"></div>
	<script type="text/template" id="zyListTpl">
      	{@each items as i}
			<li class="zyItem cd-item " id="$ZY{i.id}"  style="width: 31%;margin: 1.1%;"> 
					<img class="zyThumb" src="$ZY{i.thumb}">
					<h3 class="zyTitle" style="margin: 20px 0px 10px 0px;font-size: 18px;color: #6d6d6d;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">$ZY{i.title}</h3>
					{@if i.score!=0}
                    <span class="zy20C7BE" style="font-size:32px">$ZY{i.score}</span>
                    {@else}
                    <span class="zy20C7BE" style="font-size:32px">未打分</span>
                    {@/if}
					<a class="cd-trigger" id=$ZY{i.id} onclick="clk1($ZY{i.id},$ZY{pageNo},event)" style="color:gray;font-size:1.5em;text-decoration:none;cursor: pointer; ">点击进行评分</a>
			</li>
        {@/each}
        </script>
	<%@ include file="../loading.jsp"%>

	<script>
		var pageName = "judge";
	</script>

	<script src="resources/js/lib/jquery-1.10.2.min.js"></script>
	<script src="resources/frontend/js/lib/kkpager.min.js"></script>
	<script src="resources/js/lib/jquery.toastmessage.js"></script>
	<script src="resources/js/lib/juicer-min.js"></script>
	<script src="resources/frontend/js/src/config.js"></script>
	<script src="resources/js/src/functions.js"></script>
	<script src="resources/frontend/js/src/judge/index.js"></script>
	<script src="resources/frontend/js/src/header.js"></script>
	<script src="resources/frontend/js/src/judge/index.js"></script>
	<script src="resources/js/lib/modernizr.js"></script>
	<script src="resources/js/lib/velocity.min.js"></script>
	<script src="resources/js/lib/lazyLoad.js"></script>
	<script src="resources/js/lib/bootstrap.min.js"></script>
	<script src="resources/frontend/js/src/judge/index(last).js"></script>
	

	
</body>
</html>