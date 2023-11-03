<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="../js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#b1').click(function() {
                let dollarValue =  $('#won').val()
                $.ajax({
                    url: "dollar.jsp",
                    data: {dollar: dollarValue},
                    success: function (x) {
                        $('div').html(x)
                    }
                });
            });//b1
            $('#b2').click(function() {
                let wonValue = $('#dollar').val()
                $.ajax({
                    url: "won.jsp",
                    data: {won: wonValue},
                    success: function (x) {
                        $('div').html(x)
                    }
                });
            });//b2
            $('#b4').click(function () {
                let testValue = $('#test').val()
                //alert('테스트중입니다.')
                //비동기통신으로 요청해서 결과받아서 div에 넣어보자.
                //test.jsp?test=hong
                $.ajax({
                    url: "test.jsp",
                    data: {test: testValue},
                    success: function (x) {
                        $('div').html(x)
                    }
                })
            })//b4
        });
    </script>
</head>
<body bgcolor="pink">
<h3>비동기통신으로 서버와 통신하기</h3>

달러를 원화로 : <input type="text" id="won">
<button style="color: blue; background: yellow;" id='b1'>확인</button>
<hr color="red">
원화를 달러로 : <input type="text" id="dollar">
<button style="color: blue; background: fuchsia;" id='b2'>확인</button>

<hr color="green">
<div style="background: yellow"></div>

</body>
</html>