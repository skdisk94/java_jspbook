<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Form 5-11</title>
<style>
    input[type=text]{color: red;}
    input:hover, textarea:hover{background: aliceblue;}
    input[type=text]:focus, input[type=email]:focus{font-size: 120%;}
    label{display: block;
          padding: 5px;}
    label span{display: inline-block;
               width: 90px;
               text-align: right;
               padding: 10px;}
  </style>
</head>
<body>
<h3>CONTACT US</h3>
  <hr>
  <form>
    <label><span>Name</span><input type="text" placeholder="Elvis"></label>
    <label><span>Email</span><input type="email"placeholder="elvis@graceland.com"></label>
    <label><span>Comment</span><textarea placeholder="메세지를 남겨주세요."></textarea></label>
    <label><span><input type="submit"value="submit"></span></label>
  </form>
</body>
</html>