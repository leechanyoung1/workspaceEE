<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bean.User"%>
<%@page import="com.itwill.bean.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/***********String,Wrapper속성객체******************/
	request.setAttribute("a",new String("속성개체"));
	request.setAttribute("b",new Integer(2));
	request.setAttribute("c",new Boolean(true));
	request.setAttribute("d","속성개체");
	request.setAttribute("e",3);
	request.setAttribute("f",false);
	/***********자바빈 속성객체******************/
	request.setAttribute("guest", new Guest(1,"kim","2023/02","guard@","http","타이틀","컨텐트"));
	request.setAttribute("user", new User("guard","1111","가아드","guard@"));
	/********List(array)속성객체*****************/
	List<Guest> guestList = new ArrayList<Guest>();
	guestList.add( new Guest(1,"kim","2023/02","guard@","http","타이틀1","컨텐트1"));
	guestList.add( new Guest(2,"aim","2023/02","guard@","http","타이틀2","컨텐트2"));
	guestList.add( new Guest(3,"wim","2023/02","guard@","http","타이틀3","컨텐트3"));
	request.setAttribute("guestList", guestList);
	/********Map 속성객체*****************/
	Map<String,User> userMap = new HashMap<String,User>();
	userMap.put("guard1",new User("guard1","1111","가아드","guard@"));
	userMap.put("guard2",new User("guard2","1111","가아드","guard@"));
	userMap.put("guard3",new User("guard3","1111","가아드","guard@"));
	request.setAttribute("userMap", userMap);
	/*************JSP service안에 선언된 local변수******************/
	String str1 = "난 jsp로컬변수";
	int int1 = 1234;
	User user1 = new User("guard","1111","가아드","guard@");
	/*
	속성(attribute)객체
		- 속성객체이름: a,b,c,d,e,f,guest,user,guestList,guestMap
	*/

%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL(Expression Language)</h1><hr>
<ul>
	<li>#########NO EL(EL을 사용하지않았을때)##########</li>
	<li>------------String,Wrapper---------------</li>
	<li><%=request.getAttribute("a") %></li>
	<li><%=request.getAttribute("b") %></li>
	<li><%=request.getAttribute("c") %></li>
	<li><%=request.getAttribute("d") %></li>
	<li><%=request.getAttribute("e") %></li>
	<li><%=request.getAttribute("f") %></li>

	<li>------------java Bean---------------</li>
	<li><%=request.getAttribute("guest") %></li>
	<li><%=((Guest)request.getAttribute("guest")).getGuest_no() %></li>
	<li><%=((Guest)request.getAttribute("guest")).getGuest_name() %></li>
	<li><%=((Guest)request.getAttribute("guest")).getGuest_email() %></li>
	<li><%=((Guest)request.getAttribute("guest")).getGuest_homepage() %></li>
	<li><%=request.getAttribute("user") %></li>
	<li><%=((User)request.getAttribute("user")).getName() %></li>
	<li><%=((User)request.getAttribute("user")).getEmail() %></li>
	<li><%=((User)request.getAttribute("user")).getPassword() %></li>
	<li><%=((User)request.getAttribute("user")).getUserId() %></li>
	

	<li>------------List---------------</li>
	<li><%=request.getAttribute("guestList") %></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0)%></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0).getGuest_no()%></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0).getGuest_name()%></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0).getGuest_email()%></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0).getGuest_homepage()%></li>
	<li><%=((List<Guest>)request.getAttribute("guestList")).get(0).getGuest_name()%></li>
	<li>------------Map---------------</li>
	<li><%=request.getAttribute("userMap") %></li>
	<li><%=((Map<String,User>)request.getAttribute("userMap")).get("guard1") %></li>
	<li><%=((Map<String,User>)request.getAttribute("userMap")).get("guard1").getUserId() %></li>
	<li><%=((Map<String,User>)request.getAttribute("userMap")).get("guard1").getPassword()%></li>
	<li><%=((Map<String,User>)request.getAttribute("userMap")).get("guard1").getEmail() %></li>
	<li><%=((Map<String,User>)request.getAttribute("userMap")).get("guard1").getName() %></li>
	<li>------------JSP service안에선언된 local변수--------------</li>
	<li><%=str1 %></li>
	<li><%=int1 %></li>
	<li><%=user1 %></li>
	<li><%=user1.getName() %></li>
	
	<li>######### EL사용 ##########</li>
	<li>------------String,Wrapper---------------</li>
	<li>${a}</li>
	<li>${b}</li>
	<li>${c}</li>
	<li>${d}</li>
	<li>${e}</li>
	<li>${f}</li>
	<li>${g}</li>
	<li>------------java Bean---------------</li>
	<li>${guest}</li>
	<li>${guest.guest_no}</li>
	<li>${guest.guest_name}</li>
	<li>${guest.guest_email}</li>
	<li>${guest.guest_homepage}</li>
	<li>${guest.guest_date}</li>
	
	dlcksdudqkqh qkqajrrhtlvek
	
	
	<li>------------List---------------</li>
	<li>${guestList}</li>
	<li>${guestList[0].guest_no}</li>
	<li>${guestList[0].guest_name}</li>
	<li>${guestList[0].guest_email}</li>
	<li>${guestList[0].guest_homepage}</li>

	
	<li>------------Map---------------</li>
	<li>${userMap["guard1"]}</li>
	<li>${userMap["guard1"].userId}</li>
	<li>${userMap["guard1"].password}</li>
	<li>${userMap["guard1"].name}</li>
	<li>${userMap["guard1"].email}</li>
	<li>${userMap["guard1"].getEmail()}</li>
	
	<li>------------JSP service안에선언된 local변수 EL로는 출력 불가능--------------</li>
	
	
</ul>
</body>
</html>








