<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

            <!DOCTYPE html>
            <html>

            <head>
                <%@ include file="../head.jsp"%>
                    <link href="resources/frontend/css/lib/kkpager_blue.css" type="text/css" rel="stylesheet">
                    <link href="resources/css/lib/jquery.toastmessage.css" type="text/css" rel="stylesheet">
                    <link href="resources/frontend/css/src/JMCSS/Home.css" type="text/css" rel="stylesheet">
                    <link href="resources/frontend/css/src/JMCSS/Header.css" type="text/css" rel="stylesheet">
            </head>

            <body>

                <%@ include file="header.jsp"%>
		    <div class="JMHome">
		      <div id="JMItem">
		          <img src="resources/frontend/images/JMImages/topShow.jpg">
		          <div id="JMInfo">
		              <span id="JMTitle_1">长沙-媒体艺术之都</span><br>
		              <span id="JMTitle_2">视觉形象设计大赛</span>
		          </div>
		          <div class="JMPhotosDiv">
		            <div class="JMMediaPhotos">
		              <ul class="JMMediaPhotosBox1">
		                <li class="JMMediaPhotostitle">
		                  <span style="font-size:28px;color:#4A4A4A;">Changsha</span><br>
		                  <span style="font-size:20px;color:#4A4A4A">Media Arts</span>
		                </li>
		                  <li class="JMMediaPhotos_1">
		                    <img src="resources/frontend/images/JMImages/topShow.jpg">
		                  </li>
		                <li class="JMMediaPhotos_2">
		                  <img src="resources/frontend/images/JMImages/topShow.jpg" alt="">
		              </ul>
		              <ul class="JMMediaPhotosBox2">
		                <li class="JMMediaPhotos_3">
		                  <img src="resources/frontend/images/JMImages/topShow.jpg" alt="">
		                <li class="JMMediaPhotos_4">
		                	<img src="resources/frontend/images/JMImages/topShow.jpg" alt="">
		                <li class="JMMediaPhotos_5">
		                	<img src="resources/frontend/images/JMImages/topShow.jpg" alt="">
		              </ul>
		            </div>
		          </div>
		      </div>
		
		      <!-- 大赛目标 -->
		      <div class="JMdasaimubiao">
		        <!-- 灰色背景 -->
		        <div class="JMgrayBG"></div>
		        <!-- 大赛目标 -->
		        <div class="JMDasaiBox1">
		            <h1 class="JMTitle">大赛目标</h1>
		            <p class="JMDasaiBox1Content1">集思广益，借助群众智慧搜集、整理、发掘反映长沙城市文化的媒体元素和艺术表现形式，为长沙城市文化积累IP资产；</p>
		            <p class="JMDasaiBox1Content2">以大赛为契机，通过线上、线下各类媒体渠道的宣传推广，提升公众对长沙城市文化与湖湘历史文化的关注度，扩大长沙“媒体艺术之都”这张城市名片的影响力；</p>
		            <p class="JMDasaiBox1Content3">利用大赛发掘优秀的媒体艺术人才和设计团队，为长沙“媒体艺术之都”视觉形象后续的落地工作及实施推广储备人才队伍。</p>
		        </div>
		        <!-- 蓝色框 -->
		        <div class="JMDasaiPhoto1">
		        </div>
		
		        <div class="JMDasaiBox2">
		          <div class="JMDasaiBox2Div1">
		            <img class="JMDasaiBox2Div1_photo1" src="resources/frontend/images/JMImages/topShow.jpg">
		            <p class="JMDasaiBox2Content1">2017年11月1日，长沙正式加入联合国教科文组织“创意城市网络”，成为我国首座获评世界“媒体艺术之都”称号的城市。“创意城市网络”致力于发挥全球创意产业对城市可持续发展的推动作用，分为媒体艺术、音乐、文学、美食、电影、设计、手工艺与民间艺术7个类别。</p>
		          </div>
		          <div class="JMDasaiBox2Div2">
		            <img class="JMDasaiBox2Div2_photo1" src="resources/frontend/images/JMImages/topShow.jpg">
		            <p class="JMDasaiBox2Content2">中国联合国教科文组织全国委员会秘书长杜越评价说：“长沙作为丝绸之路上的节点城市，拥有生动丰富的文化遗产和创新创意，发展文化创意将大有可为”。入选“创意城市网络”，获评“媒体艺术之都”，意味着长沙在自主创新、文化创意、传媒艺术等方面的努力，得到了国际社会和文化创意节的高度评价与认可。未来，长沙将进一步做优文创平台，做大文化产业，形成知名文化品牌，加快建设具有国际品质和湖湘文化特色的历史文化名城，将“媒体艺术之都”这张金色名片打造得更加绚丽。</p>
		          </div>
		          <img class="JMDasaiBox2Div2_photo3" src="resources/frontend/images/JMImages/topShow.jpg"alt="">
		        </div>
		      </div>
				
		      <img src="resources/frontend/images/JMImages/RaceProcess.png"/>
		      <img src="resources/frontend/images/JMImages/reward.png"/>
		

		      <!-- 新闻动态 -->
		      <div class="JMNewsInformation">
		        <section>NEWS | 新闻动态</section>
		        <div class="">
		          <ul id="JMList">
		          <!-- 
		            <li id="JMItem">
		              <a id="JMLink" href="#">
		                  <img id="JMThumb" src="../photos/logo0.png">
		                  <h3 id="JMTitle">湖南省老年服务产品设计大赛</h3>
		                  <span id="JMDate">2019-09-09</span>
		              </a>
		              <a id="JMLink" href="#">
		                  <img id="JMThumb" src="../photos/logo0.png">
		                  <h3 id="JMTitle">湖南省老年服务产品设计大赛</h3>
		                  <span id="JMDate">2019-09-09</span>
		              </a>
		  	        </li>
		  	      -->
		  	        <c:forEach items="${newsList}" var="item">
                        <li class="JMItem">
                            <a class="JMLink" href="news/newsDetail/${item.id}" target="_blank"> 
                            	<img class="JMThumb" src="resources/frontend/images/JMImages/logo.jpg">
                                <h3 class="JMTitle">${item.title}</h3> 
                                <span class="JMDate">${fn:substring(item.publishTime, 0, 10)}</span>
                            </a>
                        </li>
                    </c:forEach>
		          </ul>
		        </div>
		  		</div>
		  		<div id="JMTCenter">
		          <a id="JMBtn" style="margin: 20px auto;" href="news/news/1">查看更多 >></a>
		      </div>
		    </div>
    <img src="resources/frontend/images/JMImages/RaceProcess.png"/>

    <div class="JMFooter">&copy;长沙-媒体艺术之都视觉形象设计大赛</div>
		
		<script>
          var pageName = "index";
      </script>
      <script src="resources/js/lib/jquery-1.10.2.min.js"></script>
      <script src="resources/frontend/js/lib/kkpager.min.js"></script>
      <script src="resources/js/lib/jquery.toastmessage.js"></script>
      <script src="resources/js/lib/juicer-min.js"></script>
      <script src="resources/frontend/js/src/config.js"></script>
      <script src="resources/js/src/functions.js"></script>
      <script src="resources/frontend/js/src/header.js"></script>

  </body>
</html>
