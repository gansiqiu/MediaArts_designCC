<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="JMHeader">
        
        <div class = "JMLogo">
			<a href=""><img alt="" src="resources/frontend/images/JMImages/logo.png"></a>
			</div>
		<div class="JMNoticeBoard">
			<div class="JMNoticeBoardLeft"><a href="user/register">报名参赛</a></div>
			<div class="JMNoticeBoardRight">
               <div class="JMItem">
			        <span id="countDown" class="countDown"></span>
                 		  征稿截止剩余天数
               </div>    
			</div>
			
		</div>

      <div class="JMTopNav">
			<ul class="JMMenu">
				<li class="JMItem"><a class="JMLink" href="index" data-page-name="index">首页</a></li>
				<li class="JMItem"><a class="JMLink" href="news/news/1" data-page-name="news">新闻</a></li>
				<li class="JMItem"><a class="JMLink" href="rule/rules" data-page-name="rule">章程</a></li>
				<li class="JMItem"><a class="JMLink" href="judge/judge" data-page-name="judge">评委</a></li>
				
				
			</ul>
			
			<ul class="JMUserMenu">
				<c:if test="${!empty sessionScope.userId}">
					<li class="JMItem"><a href="production/works" class="JMLink JM20C7BE">[ ${sessionScope.realname} ]</a></li>
					<li class="JMItem"><a class="JMLink" href="logout">退出</a></li>
				</c:if>
				<c:if test="${empty sessionScope.userId}">
					<li class="JMItem"><a class="JMLink JMIconUser" href="login"></a></li>
				</c:if>
			</ul>

		</div>
</div>


