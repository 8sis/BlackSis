<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><%@ page import="java.text.SimpleDateFormat"%><%@ page import="java.util.*"%>	<%@ page import="tk.dao.QUser"%><%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><base href="<%=basePath%>"><title>page</title><meta http-equiv="pragma" content="no-cache"><meta http-equiv="cache-control" content="no-cache"><meta http-equiv="expires" content="0"><meta http-equiv="keywords" content="keyword1,keyword2,keyword3"><meta http-equiv="description" content="This is my page"></head><body><center>	<%= request.getParameter("login") %>	<%! String name=""; %> <%! String password=""; %> <%! String rememberme=""; %>	<%  name=request.getParameter("login"); %>	<%  password=request.getParameter("password"); %>	<%  rememberme=request.getParameter("rememberme"); %>	<%	 		 QUser quser = new QUser();		 String pd=quser.getPassword(name);		 String url=request.getQueryString();//获取参数 		 %> 		 <%if(null == password || password.equals("") ){out.println("密码不能为空，请重新登录"); out.println("<br>经过五秒之后，网页会自动返回登录页面");response.setHeader("Refresh","5;URL=index.jsp");          }else if ( password.equals(pd) && (url !=null || url !="" ) ) { session.setAttribute("login", "OK");SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");session.setAttribute( "date",sdf.format(new Date()) );response.sendRedirect("admin.jsp");//记住我的登录状态if ("on".equals(request.getParameter("rememberme"))){String cookieName = "userinfo";String cookieValue = password;Cookie cookie = new Cookie(cookieName, cookieValue);cookie.setMaxAge(30 * 24 * 3600);//设置Cookie的过期时间//cookie.setPath(request.getContextPath());//设置路径response.addCookie(cookie); }else { session.setMaxInactiveInterval (60 * 60);//设置session的过期时间60分钟}}else { out.println("账户或者密码错误，请重新登录"); out.println("<br>经过五秒之后，网页会自动返回登录页面");response.setHeader("Refresh","5;URL=index.jsp");          } %></center></body></html>