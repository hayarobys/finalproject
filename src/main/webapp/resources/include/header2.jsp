<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8"/>
    <title>화면 상단 고정 메뉴 만드는 방법</title>
    <script defer src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <style>
        html, body {
            margin: 0px;
            padding: 0px;
            font-size: 12px;
        }
        
        #blog-header-container {
            position: fixed;
            top: 0px;
            left: 0px;
            
            width: 100%;
            height: 50px;
            
            background-color: #fff;
        }
        
        #blog-header-container h1 {
            position: static;
            top: 40px;
            left: 20px;
            
            font-size: 2.0em;
            font-weight: bold;
        }
        
        #menu-container {
            position: fixed;
            top: 150px;
            left: 0px;
            
            width:100%;
            height: 50px;
            padding-left: 20px;
            padding-top: 15px;
            box-sizing: border-box;
            
            background-color: #3a3b40;
            
            -webkit-transition: padding-left 200ms linear;
            -moz-transition: padding-left 200ms linear;
            -ms-transition: padding-left 200ms linear;
            -o-transition: padding-left 200ms linear;
            transition: padding-left 200ms linear;
        }
        #menu-container.fixed {
            padding-left: 70px;
            opacity: 0.95;
            -webkit-box-shadow: 0 1px 5px 1px rgba(0,0,0,0.2);
            box-shadow: 0 1px 5px 1px rgba(0,0,0,0.2);
        }
        #menu-container .menu-item {
            font-size: 1.4em;
            font-weight: bold;
            color: #fff;
        }
        #menu-container .menu-icon {
            display: block !important;
            position: absolute;
            left: -50px;
            top: 14px;
            
            font-size: 1.6em;
            font-weight: bold;
            color: #fff;
            
            -webkit-transition: left 300ms linear;
            -moz-transition: left 300ms linear;
            -ms-transition: left 300ms linear;
            -o-transition: left 300ms linear;
            transition: left 300ms linear;
        }
        #menu-container .menu-icon.on {
            left: 15px;
        }
        
        #blog-container {
            margin-top:0px;
            padding: 20px;
            font-size : 2em;
        }
    </style>
    <script>
        // 현재 스크롤바의 위치를 저장하는 변수 (px)
        var currentScrollTop = 0;
             
        // 비동기식 jQuery이므로 window load 후 jQuery를 실행해야 함
        window.onload = function() {
            // 새로고침 했을 경우를 대비한 메소드 실행
            scrollController();
             
            // 스크롤을 하는 경우에만 실행됨
            $(window).on('scroll', function() {
                scrollController();
            });
        }
             
        // 메인 메뉴의 위치를 제어하는 함수
        function scrollController() {
            currentScrollTop = $(window).scrollTop();
            if (currentScrollTop < 100) {
             //   $('#blog-header-container').css('top', -(currentScrollTop));
                $('#menu-container').css('top', -(currentScrollTop));
                if ($('#menu-container').hasClass('fixed')) {
                    $('#menu-container').removeClass('fixed');
                    $('#menu-container').addClass('satic');
                    $('#menu-container .menu-icon').removeClass('on');
                }
            } else {
                if (!$('#menu-container').hasClass('fixed')) {
                  //  $('#blog-header-container').css('top', -100);
                    $('#menu-container').css('top', 0);
                    $('#menu-container').addClass('fixed');
                    $('#menu-container .menu-icon').addClass('on');
                }
            }
        }
    </script>
</head>
<body>
    <div id="blog-header-container">
        <h1>블로그 화면 상단 메뉴 고정 테스트</h1>
    </div>
    <div id="menu-container">
        <div class="menu-icon" style="display: none;">shoes</div>
        <div class="menu-item">블로그 상단 메뉴 예시</div>
        <div class="menu-icon" style="display: none;">shoes</div>
    </div>
    <div id="blog-container">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Quisquam temporibus repellat voluptatem sit nulla commodi, maxime
		optio aperiam! Consequuntur necessitatibus iste amet id, nihil
		laboriosam voluptatem cum laudantium ab repudiandae. Lorem ipsum dolor
		sit amet, consectetur adipisicing elit. Maxime ipsum blanditiis, enim
		beatae, ipsam tempore, ullam voluptas consequuntur laborum, dolor
		nobis nam velit iure. Autem veniam atque quo, sunt veritatis! Lorem
		ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsum
		blanditiis, enim beatae, ipsam tempore, ullam voluptas consequuntur
		laborum, dolor nobis nam velit iure. Autem veniam atque quo, sunt
		veritatis! Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Maxime ipsum blanditiis, enim beatae, ipsam tempore, ullam voluptas
		consequuntur laborum, dolor nobis nam velit iure. Autem veniam atque
		quo, sunt veritatis! Lorem ipsum dolor sit amet, consectetur
		adipisicing elit. Maxime ipsum blanditiis, enim beatae, ipsam tempore,
		ullam voluptas consequuntur laborum, dolor nobis nam velit iure. Autem
		veniam atque quo, sunt veritatis! Lorem ipsum dolor sit amet,
		consectetur adipisicing elit. Maxime ipsum blanditiis, enim beatae,
		ipsam tempore, ullam voluptas consequuntur laborum, dolor nobis nam
		velit iure. Autem veniam atque quo, sunt veritatis!</p>

    </div>
</body>
</html>