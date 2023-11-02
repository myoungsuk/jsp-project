<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <script type="text/javascript" src="../js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
       $(function(){
           $.ajax({
               url:"ok.jsp",
               success: function(result) {
                     $('#d1').html(result);
               }
           });
           $.ajax({
               url:"weather.jsp",
               success: function(result) {
                   $('#d2').html(result);
               }
           });
           $.ajax({
               url:"tour.jsp",
               success: function(result) {
                   $('#d3').html(result);
               }
           });
         });
    </script>
</head>


<body bgcolor="pink">
<h3>비동기통신으로 서버와 통신하기</h3>
ajax테스트 : <input type="text" id='test'>
<button id='b4'>ajax테스트(test.jsp)</button>
<br>

결제금액 :
<input type="text" id="money">
<br> 1)계좌이체, 2)신용카드, 3)휴대폰결제
<br> 결제수단 :
<input type="text" id="choice">
<button style="color: blue; background: green;" id='b1'>결제하기</button>
<hr color="red">
회원가입할 id입력 :
<input type="text" id="id">
<button style="color: blue; background: yellow;" id='b2'>회원가입시 id중복 체크</button>
<hr color="red">
인증받을 전화번호 입력 :
<input type="text" id="tel">
<button style="color: blue; background: fuchsia;" id='b3'>인증번호 받기</button>
<hr color="green">
<div></div>

</body>
</html>