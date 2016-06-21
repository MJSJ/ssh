
//提交订单
$("#submit-order").click(function(){
	
	if(/登录/.test($("#logexit a").text())){
		var clickEvent = document.createEvent("HTMLEvents");
		clickEvent.initEvent("click",true,true);
		clickEvent.eventType="message";
		$("#logexit a")[0].dispatchEvent(clickEvent);
	}
	
	
	var roomId = $(".roomtype-ul .roomtype-selected .roomId").text();
	var hotelId = $("#hotelId").val();
	var selected = $(".date-roomtype tbody .selected a");
	var num = $("#num").val().slice(0,-1);
	var inDays = [];
	var month = $(".month-active a").text();
	month = month.replace(/年\d*月/,function(day){
		day = day.slice(1,-1);
		if(day.length<2){
			day = "0" + day;
		} 
		return day;
	});

	(function(){
		var i = 0;
		var l = selected.length;
		for(;i<l;i++){
			var day = $(selected[i]).text();
			if(day.length<2){
				day = "0" + day;
			} 
			inDays.push(month+day);
		}
	})();
	var days = (inDays.join(","));
	
	//没有选择日期
	var unit_price = $(".roomtype-selected .roomPrice").text();
	if(days.trim()==""){
		$("#hotel-orderForm #dateError").show();
	}else if(unit_price.trim()==""){
		$("#typeError").show();
		
	}else{
		$("#days").val(days);
		$("#roomId").val(roomId);
		$("#back-num").val(num);
		$("#hotel-orderForm").submit();
	}
});


$(function(){
		
	(function(){
	var d = new Date();
	var year = d.getFullYear();
	var month = d.getMonth();
	$.each($(".banner a"),function(i,n){
			$(n).text(year+"年"+(month+1+i)+"月");
		});
		createCalendar(year,month+1);
	})();
		
		
		//初始化价格
	(function(){
		var l = $(".roomtype-ul li").length;
		
		
		for(var i=0;i<l;i++){
			$(".roomtype-ul li:eq('"+i+"')").data("price",i*100+99);
		}
	})();
		
		
		function createCalendar(year,month){
			var weekday = new Date(year,month-1,1).getDay();//当前月第一天
		var days = new Date(year,month,0).getDate();//当前月天数
			var str = "";
			var j = 0;
  		for(var i=1;i<43;i++){
  			if(i==1){
  				str+='<tr>';
  			}else if((i)%7==1){
  				str+='</tr><tr>';
  			}
  			if(j<days&&i>weekday){
  				str+='<td><a href="javascript:void(0)">' + (j+1) + '</a></td>';
  				j++;
  			}else{
  				str+='<td></td>';
  			}
  		}
  		str+='</tr>';
  		$(".date-roomtype tbody").html(str);
		}
		
		
		$(".banner").delegate("li","click",function(){
			$(".banner .month-active").removeClass("month-active");
			$(this).addClass("month-active");
			var date = $(this).find("a").text();
			var year = date.substring(0,date.indexOf("年"));
			var month = date.substring(date.indexOf("年")+1,date.indexOf("月"));
			createCalendar(year,month);
		});
		
		
		//订房日期  //动态生成的td用代理
		$(".date-roomtype tbody").delegate("td","click",function(){
			if($(this).hasClass("selected")){
				$(this).removeClass("selected");
			}else{
				$(this).addClass("selected");
			}
			//修改天数
			var days = $(".date-roomtype .selected").length;
			
			//隐藏错误提示
			if(days>0){
				$("#dateError").hide();
			}
			
			//var unit_price = $(".roomtype-selected").data("price");
			var unit_price = $(".roomtype-selected .roomPrice").text();
			var num = $("#num").val().substr(0,1);
			$("#date-num").val(days+"天");
			//修改金额
			$("#price").val("￥"+unit_price*days*num);
			//$("#price").val();
		});
		//房间类型导航
		$(".roomtype-ul").delegate("li","click",function(e){
			$(".roomtype-ul li").removeClass("roomtype-selected");
			$(this).addClass("roomtype-selected");
			$("#typeError").hide();
			var price = $(this).data("price");
			$("#price").val("￥"+price*$("#num").val().substr(0,1)*$(".date-roomtype .selected").length);
		});
		$("#num").change(function(){
			var num = this.value.substr(0,1);
			$("#price").val("￥"+$(".roomtype-selected").data("price")*num*$(".date-roomtype .selected").length);
		});
		
		//图片轮播
		$(".link-next").click(function(){
		
			$(".pic-roll").offset({
				left:$(".pic-roll").offset().left-($(".pic-roll img").width()+3)
			});
			var active = $(".pic-roll .active");
			active.removeClass("active");
			active.next().addClass("active");
			$("figure img").attr("src",$(".pic-roll .active img").attr("src"));
		});
		
		$(".link-prev").click(function(){
			$(".pic-roll").offset({
				left:$(".pic-roll").offset().left+($(".pic-roll img").width()+3)
			});
			var active = $(".pic-roll .active");
			active.removeClass("active");
			active.prev().addClass("active");
		$("figure img").attr("src",$(".pic-roll .active img").attr("src"));
		});
		
		$(".pic-roll").delegate("li","mouseover",function(){
			$(this).siblings().removeClass("active");
			$(this).addClass("active");
			var img = $(this).find("img").attr("src");
			$("figure img").attr("src",img);
		});
		
		
		
	});
	
$("#checkOrder").click(function(){
	document.location.href="order/checkOrderAction";
});

$("#info").click(function(){
	document.location.href="toInfoAction";
});




$("#personalComment").click(function(){
	$(".comment-box").toggle();
});

$("#closeComment").click(function(){
	$(".comment-box").hide();
});

$("#commit").click(function(){
	var content = $("#commentIpt").val();
	$.post("comment/addComment",{"content":content},function(data){
		if(data.result=="评论成功"){
			var comments = data.comments;
			var html = [];
			for(var comment in comments){
				html.push('<li class="comment-li"><span class="comment-man">'+comments[comment].customer.name+'</span>');
				html.push('<div class="comment-content"><p class="comment-p">'+comments[comment].content+'</p>');
				html.push('<time class="comment-time">('+comments[comment].time+')</time></div></li>');
			}
			html = html.join("");
			$(".comment-box").nextAll(".comment-li").remove();
			$(".comment-box").after(html);
		}
		
		$(".comment-box").hide();
		
		$("#commentResult .modal-body h4").text(data.result);
		$("#commentResult").addClass("in").css({
			"display":" block",
			"padding-right": "17px",
			"text-align":"center"
		});
		setTimeout(function(){
			$("#commentResult").removeClass("in").css({
				"display":"none",
				"padding-right": "0"
			});
		},2000);
	})
});