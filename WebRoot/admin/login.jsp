<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@ page import="java.text.SimpleDateFormat"%><%@ page import="java.util.*"%>	<%@ page import="tk.dao.QUser"%><%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><base href="<%=basePath%>"><title>page</title><meta http-equiv="pragma" content="no-cache"><meta http-equiv="cache-control" content="no-cache"><meta http-equiv="expires" content="0"><meta http-equiv="keywords" content="keyword1,keyword2,keyword3"><meta http-equiv="description" content="This is my page"></head><body><center>	<%= request.getParameter("login") %>	<%! String name=""; %> <%! String password=""; %>	<%  name=request.getParameter("login"); %>	<%  password=request.getParameter("password"); %>		<%	 QUser quser = new QUser();		 String pd=quser.getPassword(name);		 %>	<%if(null == password || password.equals("")){out.println("密码不能为空，请重新登录"); out.println("<br>经过五秒之后，网页会自动返回登录页面");response.setHeader("Refresh","5;URL=index.jsp");          }else if ( password.equals(pd) ) { session.setAttribute("login", "OK");response.sendRedirect("admin.jsp");SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日  HH:mm");session.setAttribute( "date",sdf.format(new Date()) );}else { out.println("账户或者密码错误，请重新登录"); out.println("<br>经过五秒之后，网页会自动返回登录页面");response.setHeader("Refresh","5;URL=index.jsp");          }  %></center></body></html>