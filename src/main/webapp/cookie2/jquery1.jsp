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
            $("#b1").click(function(){
                var year = $("#year").val();
                var age = 2021 - year + 1;
                alert("당신의 나이는 " + age + "입니다.");
            });

            $("#b2").click(function(){
                var w = $("#w").val();
                var h = $("#h").val();
                var area = w * h;
                alert("사각형의 면적은 " + area + "입니다.");
            });
        });
    </script>
</head>


<body>
태어난 해 입력 : <input name="year" id="year" value="2000">
<button id="b1">나이계산</button>
<br>
사각형의 면적
<br>
가로 : <input name="w" id="w"> <br>
세로 : <input name="h" id="h">
<button id="b2">사각형의 면적계산</button>
<br>


</body>
</html>