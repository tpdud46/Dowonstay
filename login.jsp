<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/Login.css" />

 <script>
    function checkValue(){
        if(!document.loginInfo.id.value){
            alert("아이디를 입력하세요");
            document.loginInfo.id.focus();
            return false;
        }
        if(!document.loginInfo.password.value){
            alert("비밀번호를 입력하세요");
            document.loginInfo.password.focus();
            return false;
        }
        return true;
    }
</script>
</head>
<body>
<div class="login-wrapper">
<div class="box"></div>
<h2>Login</h2>
<form method="post" action="서버의url" id="login-form">
<input type="text" name="userName" placeholder="Email">
<input type="password" name="userPassword" placeholder="Password">
<label for="remember-check">
<input type="checkbox" id="remember-check"> 아이디 저장하기
</label>
<input type="submit" value="Login">
<input type="submit" value="카카오 로그인">
<input type="submit" value="네이버 로그인">
</form>

<%
                	String msg = request.getParameter("msg");
                	if(msg!=null && msg.equals("0")){
                		out.println("<script>alert('비밀번호가 맞지 않습니다.')</script>");
                	}else if(msg!=null && msg.equals("-1")){
                		out.println("<script>alert('아이디가 존재하지 않습니다.')</script>");
                	}
                %>
</div>
</body>
</html>