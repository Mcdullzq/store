<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body style="background-color: #f2f9fd">
  <%@include file="/common/utop.jsp"%>
<%--导航条--%>
<div class="width100" style="height: 45px;background: #dd4545;margin-top: 40px;position: relative;z-index:100;">
    <div class="width1200 center_yh relative_yh" style="height: 45px;">
        <div class="left_yh Selected" style="width: 230px;height: 45px;" id="hiddenShow">
            <img src="${ctx}/resource/user/images/cd.png" class="left_yh" style="margin-left: 24px;" alt=""/>
            <span class="block_yh left_yh fff" style="height: 45px;line-height: 44px;margin-left: 10px;">分类</span>
            <div class="downSlide">
                <c:forEach items="${lbs}" var="data" varStatus="1">
                    <div class="n1Nav">
                        <font>${data.father.name}</font>
                        <img src="${ctx}/resource/user/images/jt.png" alt="">
                        <div class="n2Nav">
                            <div class="n3Nav">
                                <h3>${data.father.name}</h3>
                                <c:forEach items="${data.childrens}" var="child" varStatus="11">
                                    <a href="${ctx}/item/shoplist?categoryIdTwo=${child.id}">${child.name}</a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="left_yh font16" id="pageNav">
            <a href="${ctx}/login/uIndex">首页</a>
            <a href="${ctx}/news/list">公告</a>
            <a href="${ctx}/message/add">留言</a>
        </div>
    </div>
</div>
<div class="width1200 center_yh hidden_yh" style="position: relative;z-index: 80;">
    <div class="example2" style="width: 1200px;height: 490px;overflow: hidden;margin-left: 230px;">
        <ul>
            <li><img src="${ctx}/resource/images/a.webp" alt=""></li>
            <li><img src="${ctx}/resource/images/b.webp" alt=""></li>
            <li><img src="${ctx}/resource/images/c.webp" alt=""></li>
            <li><img src="${ctx}/resource/images/d.webp" alt=""></li>
        </ul>
    </div>
    <script>
        $(function (){
           $(".example2").luara({width:"966",height:"490",interval:4500,selected:"selected",deriction:"left"});
        });
    </script>
</div>
<%--折扣商品--%>
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #dd4545;margin-top: 20px;">
        <font class="left_yh font20">折扣大促销</font>
    </div>
    <div class="width100 hidden_yh" style="height: 480px;">
        <div class="normalPic">
            <c:forEach items="${zks}" var="data" varStatus="1">
                <a href="${ctx}/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px;">${data.price}&nbsp;元</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin: 0 auto">
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<%--热门商品--%>
  <div class="width1200 center_yh hidden_yh">
      <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #dd4545;margin-top: 20px;">
          <font class="left_yh font20">热门商品</font>
      </div>
      <div class="width100 hidden_yh" style="height: 480px;">
          <div class="normalPic">
              <c:forEach items="${rxs}" var="data" varStatus="1">
                  <a href="${ctx}/item/view?id=${data.id}">
                      <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                      <p class="red font14" style="padding-left: 10px;">${data.price}&nbsp;元</p>
                      <img src="${data.url1}" width="105" height="118" alt="" style="margin: 0 auto">
                  </a>
              </c:forEach>
          </div>
      </div>
  </div>
  <%@include file="/common/ufooter.jsp"%>
</body>
</html>
