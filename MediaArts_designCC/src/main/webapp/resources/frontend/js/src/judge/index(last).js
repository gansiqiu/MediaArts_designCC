
//http://localhost:8080/design/reviewLogin?email=1223720954@qq.com&validCode=ed196ce2-0643-460f-8487-42bc3afd8dc7&round=9

var sliderFinalWidth = $(window).width() * 0.3, flag=0,imgSourse=[],imgPage=0, bgImg="", selectedImage = "", productionId;
//产品点击进入
function clk1(id, pageNo, event) {
	$.ajax({
		type : "get",
		url : "/design/production/getProductionDetailById/" + id,
		dataType : "json",
		success : function(data) {
			productionId = data.object.id;
			bgImg = data.object.thumb;
			imgSourse = JSON.parse(data.object.pimage);
			console.log(imgSourse);
			//内容数据
			document.getElementById("zy-cd-Id").innerHTML="作品ID：" + data.object.id;
			document.getElementById("zy-cd-title").innerHTML=data.object.title;
			document.getElementById("zy-cd-content").innerHTML=data.object.content;
			$("#zyScore").val(data.object.score); 
			for(var i = 0; i<imgSourse.length; i++)	{
				if(i == 0){
					$("#cd-slider").append("<li id='cd-slider_li' class='selected'><img class='img_1' style='width:100%;height:"+ $(window).height()*0.95+"px;' id='cd_img_"+ i +"'/></li>");
				}else{
					$("#cd-slider").append("<li><img style='width:100%;height:"+ $(window).height()*0.95+"px;' id='cd_img_"+ i +"'></li>");
				}
			}	
		}
	});
    var	maxQuickWidth = $(window).width() * 0.9;
	selectedImage = document.getElementById(id);
	var slectedImageUrl = imgSourse[0];
	$('body').addClass('overlay-layer');
	animateQuickView(selectedImage, sliderFinalWidth, maxQuickWidth, 'open');

	updateQuickView(slectedImageUrl);
}

// 点击空白处退出
$('body').on(
		'click',
		function(event) {
			if ($(event.target).is('.cd-close')
					|| $(event.target).is('body.overlay-layer')) {
				var	maxQuickWidth = $(window).width() * 0.9;
				closeQuickView(sliderFinalWidth, maxQuickWidth);
				$("#cd-slider").empty();
			}
		});
// 点击esc按键退出弹出层
$(document).keyup(function(event) {
	if (event.which == '27') {
		var	maxQuickWidth = $(window).width() * 0.9;
		closeQuickView(sliderFinalWidth, maxQuickWidth);
		$("#cd-slider").empty();
	}
});

// 点击左右按键
$('.cd-quick-view').on('click', '.cd-slider-navigation a', function() {
	updateSlider($(this));
});

$(window).on('resize', function() {
	if ($('.cd-quick-view').hasClass('is-visible')) {
		window.requestAnimationFrame(resizeQuickView);
	}
});
// 左右轮播
function updateSlider(navigation) {
	var sliderConatiner = navigation.parents('.cd-slider-wrapper').find('.cd-slider'),  
		activeSlider = sliderConatiner.children('.selected').removeClass('selected');
		//前一张还是后一张图片判断
		if (navigation.hasClass('cd-next')) {
				if(!activeSlider.is(':first-child')  && imgPage > 0){
					activeSlider.prev().addClass('selected');
					imgPage--;
					document.getElementById("cd_img_"+imgPage).setAttribute('src', imgSourse[imgPage]);
					$(".cd-next").popover("hide");
					$(".cd-prev").popover("hide");
				}else{
					sliderConatiner.children('li').eq(0).addClass('selected');
//					functions.ajaxReturnErrorHandler("当前为第一页");
					console.log("next",imgPage);
					$(".cd-next").popover("show");
					setTimeout(function(){$(".cd-next").popover("hide");},1000);
					$(".cd-prev").popover("hide");
				}
		} else {
			if(!activeSlider.is(':last-child') && imgPage < imgSourse.length-1){
				activeSlider.next().addClass('selected');
				imgPage++;
				document.getElementById("cd_img_"+imgPage).setAttribute('src', imgSourse[imgPage]);
				$(".cd-next").popover("hide");
				$(".cd-prev").popover("hide");
			}else{
				sliderConatiner.children('li').last().addClass('selected');
//				functions.ajaxReturnErrorHandler("当前为最后一页");
				console.log("prev",imgPage);
				$(".cd-prev").popover("show");
				setTimeout(function(){$(".cd-prev").popover("hide");},1000);
				$(".cd-next").popover("hide");
			}
		}
}

function updateQuickView(url) {
	$('.cd-quick-view .cd-slider li').removeClass('selected').find(
			'img[src="' + url + '"]').parent('li').addClass('selected');
}

function resizeQuickView() {
	var quickViewLeft = ($(window).width() - $('.cd-quick-view').width()) / 2, quickViewTop = ($(
			window).height() - $('.cd-quick-view').height()) / 2;
	$('.cd-quick-view').css({
		"top" : quickViewTop,
		"left" : quickViewLeft,
	});
}
// 关闭弹出层
function closeQuickView(finalWidth, maxQuickWidth) {	
	$("#cd-slider").empty();
	var close = $('.cd-close'),
	activeSliderUrl = bgImg; // 返回后恢复原来的图片内容
	if (!$('.cd-quick-view').hasClass('velocity-animating')
			&& $('.cd-quick-view').hasClass('add-content')) {
		selectedImage.childNodes[1].setAttribute('src', activeSliderUrl);
		animateQuickView(selectedImage, finalWidth, maxQuickWidth, 'close');
		$(".zyHeader").slideDown();
		imgPage = 0;
	} else {
		closeNoAnimation(selectedImage, finalWidth, maxQuickWidth);
		$(".zyHeader").slideDown();
	}
}
// 显示弹出层
function animateQuickView(image, finalWidth, maxQuickWidth, animationType) {
	$(".cd-next").popover("hide");
	$(".cd-prev").popover("hide");
	$(".zyHeader").slideUp();
	var parentListItem = image, 
		topSelected = image.offsetTop - $(window).scrollTop(),//元素离顶端的距离
		leftSelected = image.offsetLeft, 			//点击处离左边的距离
		widthSelected = image.offsetWidth, 			//图片宽度
		heightSelected = image.offsetHeight, 		//图片高度
		windowWidth = $(window).width(),			//页面宽度
		windowHeight = $(window).height(),			//页面高度
		finalLeft = (windowWidth - maxQuickWidth) / 2, 	
		finalHeight = finalWidth * heightSelected / widthSelected, 
		finalTop = (windowHeight - windowHeight*0.95) / 2, 
		quickViewWidth = (windowWidth * .8 < maxQuickWidth) ? windowWidth * .8 : maxQuickWidth, 
		quickViewLeft = (windowWidth - quickViewWidth) / 2;
	//判断是开启还是关闭
	if (animationType == 'open') {
		parentListItem.classList.add('empty-box');
		$('.cd-quick-view').css({
			"top" : topSelected,
			"left" : leftSelected,
			"width" : widthSelected,
		}).velocity({
			'top' : finalTop + 'px',
			'left' : quickViewLeft + 'px',
			'width' : quickViewWidth + 'px',
		}, 1000, [ 400, 20 ], function() {
			$('.cd-quick-view').addClass('animate-width').velocity({
				'left' : quickViewLeft + 'px',
				'width' : quickViewWidth + 'px',
			}, 300, 'ease', function() {
				$('.cd-quick-view').addClass('add-content');
				document.getElementById("cd_img_0").setAttribute('src', imgSourse[0]);
			});
		}).addClass('is-visible');
	} else {
		$('.cd-quick-view').removeClass('add-content').velocity({
			'top' : finalTop + 'px',
			'left' : quickViewLeft + 'px',
			'width' : quickViewWidth + 'px',
		}, 300, 'ease', function() {
			$('body').removeClass('overlay-layer');
			$('.cd-quick-view').removeClass('animate-width').velocity({
				"top" : topSelected,
				"left" : leftSelected,
				"width" : widthSelected,
			}, 300, 'ease', function() {
				$('.cd-quick-view').removeClass('is-visible');
				parentListItem.classList.remove('empty-box');
				$("#cd-slider").empty();
			});
		});
	}
}
function closeNoAnimation(image, finalWidth, maxQuickWidth) {
	 var parentListItem = image,
		topSelected = image.offsetTop - document.documentElement.scrollTop, 
		leftSelected = image.offsetLeft,
		widthSelected = offsetWidth;
	$('body').removeClass('overlay-layer');
	parentListItem.classList.remove('empty-box');
	$('.cd-quick-view').velocity("stop").removeClass(
			'add-content animate-width is-visible').css({
		"top" : topSelected,
		"left" : leftSelected,
		"width" : widthSelected,
	});
}
//分数保存按键
$("#zySaveScore").bind("click", function(){
	var scoreValue = $("#zyScore").val(),
        reg=/^[0-9]+$/;
    if(reg.test(scoreValue)){
        //functions.showLoading();
        $.ajax({
        	//review/updateReviewScore
            url:config.ajaxUrls.judgeScore,
            type:"post",
            data:{
                score:parseInt(scoreValue),
                userId:judgeId,
                round:round,
                productionId:productionId
            },
            success:function(response){
                if (response.success) {
                	document.getElementById(productionId).childNodes[5].innerHTML = scoreValue;
                	$().toastmessage("showSuccessToast",config.messages.optSuccess);
                	var	maxQuickWidth = $(window).width() * 0.9;
            		closeQuickView(sliderFinalWidth, maxQuickWidth);
            		$("#cd-slider").empty();
                } else {
                    functions.ajaxReturnErrorHandler(response.message);
                }
            },
            error:function(){
                functions.ajaxErrorHandler();
            }
        })
    }else{
        $().toastmessage("showErrorToast",config.messages.scoreError);
	   }
    
});
//function getPageNo() {
//    var hash=location.hash;
//    hash=hash.substring(1);
//    return hash;
//}



