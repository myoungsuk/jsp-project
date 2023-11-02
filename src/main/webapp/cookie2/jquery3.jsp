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
                url:"jquery0.jsp",
                type:"get",
                success:function(){
                    alert("ajax성공!!---1")
                },
                error:function(){
                    alert("에러발생");
                }
            });
            $.ajax({
                url:"jquery1.jsp",
                type:"get",
                success:function(){
                    alert("ajax성공!!---2")
                },
                error:function(){
                    alert("에러발생");
                }
            });
            $.ajax({
                url:"jquery4.jsp",
                type:"get",
                success:function(result){
                    alert("ajax성공!!---3")
                    alert(result);
                },
                error:function(){
                    alert("에러발생");
                }
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