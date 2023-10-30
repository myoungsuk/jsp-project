<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>로그인 화면입니다.</h3>
<form action="로그인세션설정.jsp?" method = "post">
    아 이 디: <input name="id" value="apple"><br>
    패스워드: <input name="pw" value="1234"><br>
    <button type="submit">로그인처리요청</button>

    String id2 = "apple";
    String pw2 = "1234";
    //id와 id2가 동일하고 pw와 pw2가 동일한지 비교해서 ==>string 비교

    if (id.equals(id2) && pw.equals(pw2)) {
        out.print("로그인 성공");
    } else {
        out.print("로그인 실패");
    }

</form>
</body>
</html>