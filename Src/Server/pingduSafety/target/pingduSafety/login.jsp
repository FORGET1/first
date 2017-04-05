<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>平度安监</title>
<style>
    body,ul,li,h3{
        margin: 0;
        padding: 0;
        list-style: none;
        font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica,Arial,PingFang SC,Source Han Sans CN,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,sans-serif;
        color: #4d4d4d;
        font-size: 14px;
    }
    .ct{
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        z-index: -2;
        background-image: url(views/public/img/login-bg.jpg);
        background-size: cover; 
        background-repeat: no-repeat;
    }
    .shadow{
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
        background-color: rgba(0,0,0,0.4);
    }
    .header{
        height: 70px;
        background-image: linear-gradient(to bottom,#f2f2f2,#cccccc);
        box-shadow: 0 0 5px black;
    }
    .title-bar{
        width: 1000px;
        margin: 0 auto;
    }
    .title-bar>.logo{
        display: inline-block;
    }
    .title-bar>.logo>img{
        width: 50px;
        height: 50px;
        margin-bottom: -5px;
    }
    .title-bar>.title{
        margin-left: 20px;
        display: inline-block;
    }
    .title-bar>.title>h3{
        font-size: 24px;
        margin: 0;
        padding: 0;
        margin-top: 10px;
    }
    .title-bar>.title>p{
        margin: 0;
        padding: 0;
        font-size: 12px;
    }
    .content{
        width: 1000px;
        height: 650px;
        margin: 0 auto;
        position: relative;
    }
    .login-panel{
        position: absolute;
        right: 0px;
        top: 200px;
        height: 300px;
        width: 240px;
        background-image: linear-gradient(to bottom,#f2f2f2,#cccccc);
        box-shadow: 0 1px 5px black;
        border-radius: 3px;
    }
    .login-panel>form{
        margin-top: 20px;
        margin-left: 30px;
    }
    .login-panel>form>ul>li>label{
        font-weight: 900;
        line-height: 40px;
    }
    .login-panel>form>ul>li>input{
        /*text-indent: 15px;*/
        width: 180px;
        outline:0px;
        background-color: inherit;
        border: none;
        border-bottom: 1px solid #4d4d4d;
        color: #4d4d4d;
    }
    .login-panel>form>button{
        margin-top: 30px;
        width: 100px;
        height: 30px;
        background-image: linear-gradient(to top,#009245,#39b54a);
        color: white;
        border: none;
        border-radius: 20px;
        outline:0px;
        position: absolute;
        left: 50%;
        margin-left: -50px;
        box-shadow: 0px 2px 1px gray;
    }
    .login-panel>form>button:active{
        background-image: linear-gradient(to bottom,#009245,#39b54a);
        box-shadow: 0px 0px 2px gray inset;
    }

    .footer{
        position: fixed;
        bottom: 0;
        color: white;
        text-align: center;
        font-size: 12px;
        height: 70px;
        width: 100%;
    }
</style>
<link href="views/public/css/public.css" rel="stylesheet">
<link href="views/public/css/sslAlert1.0.css" rel="stylesheet">
</head>
<body>
<div class="ct"></div>
    <div class="shadow"></div>
    <div class="header">
        <div class="title-bar">
            <div class="logo">
                <img src="views/public/img/logo.png" alt="">
            </div>
            <div class="title">
                <h3>平度市安全生产监督管理系统</h3>
                <p>Pingdu City Safety Production Supervision and Management System</p>
            </div>
            <div class="slogan"></div>
        </div>
    </div>
    <div class="content">
        <div class="login-panel">
            <form action="">
                <ul>
                    <li>
                        <label for="userCode">用户工号</label>
                        <br/>
                        <input type="text" id="userCode" onfocus="inContent(this)">
                    </li>
                    <li>
                        <label for="password">密码</label>
                        <br/>
                        <input type="password" id="password" onfocus="inContent(this)">
                    </li>
                    <li>
                        <label for="captcha">验证码</label>
                        <a id="captcha_a"><img alt="验证码" src="captcha.do" id="captcha-img"></a>
                        <br/>
                        <input type="text" id="captcha" onfocus="inContent(this)">
                    </li>
                </ul>
                <button type="button" onclick="login()">登陆</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <span>--&nbsp;山东京友电子有限公司&nbsp;--</span>
    </div>

</body>
<script type="text/javascript" src="views/public/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="views/public/js/sslAlert1.0.js"></script>
<script type="text/javascript" src="views/public/js/login/md5.js"></script>
<script type="text/javascript" src="views/public/js/login/login.js"></script>
</html>