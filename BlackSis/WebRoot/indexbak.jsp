<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ page import="java.io.File"%><%@ page import="jxl.*"%><%@ page import="tk.network.socket.GetIp"%><%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html>  <head>    <base href="<%=basePath%>">        <title>项目首页</title>	<meta http-equiv="pragma" content="no-cache">	<meta http-equiv="cache-control" content="no-cache">	<meta http-equiv="expires" content="0">    	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">	<meta http-equiv="description" content="This is my page">	<!--	<link rel="stylesheet" type="text/css" href="styles.css">	-->	<!--谷歌统计  --><script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-11858407-5']);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script><style type="text/css">p {	text-align: center;	color: black;	font-family: arial;}</style></head>    <body>     <p>This is 黑妹子 项目首页. </p>          <p>     <%          String url1 = "8sis.tk";        String ip1 = null;		        ip1 = GetIp.hostGetIp(url1);                out.print("本 [host]主机数据库访问地址: 为:<a href='http://");        out.print(ip1+"/Xiang.Mu/mysql/'> http://"+ip1+"/Xiang.Mu/mysql/ </a>");                %>     </p>         <p>项目访问地址: </br>    <a href="http://<%=ip1 %>:8080/BlackSis/" title="http://<%=ip1 %>:8080/BlackSis/">http://<%=ip1 %>:8080/BlackSis/</a>     </p>         <p>项目  ip地址为:    <input value="<%=ip1 %> " name="123" id="123">    </p>        <%    Workbook book = null;		try {			String strPath= application.getRealPath("/") + "文档/周报/项目周报.xls";			book = Workbook.getWorkbook(new File(strPath));					//获得第一个工作表对象		Sheet sheet=book.getSheet(0);		//得到第一列第一行的单元格        int rows = sheet.getRows();        out.println("<table border='1'><tr>");        for(int i = 0; i < rows; i++) {		Cell cell1=sheet.getCell(0,i);		String result=cell1.getContents();			out.println("<td>"+result+"</td>");        }        out.println("</tr><tr>");        for(int i = 0; i < rows; i++) {    		Cell cell1=sheet.getCell(1,i);    		String result=cell1.getContents();    			out.println("<td>"+result+"</td>");        }        out.println("</tr><tr>");        for(int i = 0; i < rows; i++) {    		Cell cell1=sheet.getCell(2,i);    		String result=cell1.getContents();    			out.println("<td>"+result+"</td>");        }        out.println("</tr></table>");		} catch (Exception e) {			//e.printStackTrace();		}        book.close();         %>      <p> 项目要求:</p>   <p>这是一个画家的个人网站的项目 我们计划通过这个项目实践基于html5（或者随便什么技术~~）的响应时页面设计。      这里有一些参考和备选资源参考：http://etchapps.com/资源（可用可不用）http://packery.metafizzy.co/中间会用到一些特性包括webfont等，因为这个网站将最主要是英文和德文版本，所以会是个很漂亮的东西中文版本也有但是相对可以妥协一些 <p>      目前文件包中包含了：1. 首页的设计 2. 详情页的设计 3. 网站的基本结构树其中，首页的设计是相对成型的，而详情页部分和其他的一些页面逻辑还有待补充 </p>      </p>    <p> 项目效果图请移步 >>>> : <a href="http://<%=ip1 %>/Xiang.Mu/项目效果图" title="http://<%=ip1 %>/Xiang.Mu/项目效果图">http://<%=ip1 %>/Xiang.Mu/项目效果图</a></p>  <p>  欢迎微信收听黑妹子 ： 定期会收到黑妹子小组研发信息，以及可以和兔动机器人聊天~~ </p>  <p>  <img src="./js_css_image/images/Atmlogo.jpg" ></p> <p>  黑妹子小组官方App下载： </p><p>  iOS版本：https://itunes.apple.com/cn/app/you-yao-qi-man-hua/id557522169?mt=8</p> <p> <a href="./app/heimeizi.apk">::点击下载安卓版本::</a></p>   </body></html>