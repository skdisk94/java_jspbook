<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table Form 5-10</title>
<style>
    table{border-collapse: collapse; }
    td, th{text-align:left;
           padding: 5px;
           height: 15px;
           width: 100px;}
    thead, tfoot{background: darkgray;
                 color: yellow;}
    tbody tr:nth-child(even){background: aliceblue;}
    tbody tr:hover{background: pink;}
  </style>
</head>
<body>
<h3>2017년 1학기 성적</h3>
  <hr>
  <table>
    <thead>
      <tr><th>이름</th><th>HTML</th><th>CSS</th></tr>
    </thead>
    <tfoot>
      <tr><th>합</th><th>310</th><th>249</th></tr>
    </tfoot>
    <tbody>
      <tr><td>황기태</td><td>80</td><td>70</td></tr>
      <tr><td>이재문</td><td>95</td><td>99</td></tr>
      <tr><td>이병은</td><td>85</td><td>90</td></tr>
      <tr><td>김남윤</td><td>50</td><td>40</td></tr>
    </tbody>
  </table>
</body>
</html>