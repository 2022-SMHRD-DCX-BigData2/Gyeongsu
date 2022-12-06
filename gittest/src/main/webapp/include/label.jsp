<%@page import="project.domain.UserMember"%>
<%@page import="project.domain.ActivityMember"%>
<%@page import="project.domain.ReviewMember"%>
<%@page import="project.domain.RecoMember"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import= "java.util.Collections"%>
<%@page import="project.domain.ActivityMemberDAO"%>
<%@page import="project.domain.RecoMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserMember loginMember = (UserMember)session.getAttribute("loginMember");
	ActivityMember activityMember = (ActivityMember)session.getAttribute("activityMember");
	RecoMember loginReco = (RecoMember)session.getAttribute("loginReco");
	ActivityMemberDAO dao = new ActivityMemberDAO();
	List<ActivityMember> actmemberList = dao.selectAllact();
	RecoMemberDAO dao2 = new RecoMemberDAO();
	List<RecoMember> RecommendList = dao2.selectAllReco();
	List<Integer> noList =  new ArrayList<Integer>();
%>
<%if(loginReco==null){%>
<%for(ActivityMember m:actmemberList){ %>
	<%noList.add(m.getActivity_no());%>
<%} %>
	<%Collections.shuffle(noList);%>
	<%List<Integer> nolists = noList.subList(0,10);%>

<%for(ActivityMember m:actmemberList){ %>
<%if(m.getActivity_no()==nolists.get(0)){ %>
				<label for="s1" id="slide1">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(1)){ %>
                <label for="s2" id="slide2">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(2)){ %>
                <label for="s3" id="slide3">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(3)){ %>
                <label for="s4" id="slide4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(4)){ %>
                <label for="s5" id="slide5">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(5)){ %>
                <label for="s6" id="slide6">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(6)){ %>
                <label for="s7" id="slide7">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(7)){ %>
                <label for="s8" id="slide8">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(8)){ %>
                <label for="s9" id="slide9">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>
<%}else if(m.getActivity_no()==nolists.get(9)){ %>
                <label for="s10" id="slide10">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>                    
<%} %>
<%} %>

<%}else{ %>

<%for(ActivityMember m:actmemberList){ %>
                <%if(m.getActivity_no()==loginReco.getActivity_no1()){ %>
                <label for="s1" id="slide1">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no2()){ %>
                <label for="s2" id="slide2">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no3()){ %>
                <label for="s3" id="slide3">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no4()){ %>
                <label for="s4" id="slide4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no5()){ %>
                <label for="s5" id="slide5">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no6()){ %>
                <label for="s6" id="slide6">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no7()){ %>
                <label for="s7" id="slide7">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no8()){ %>
                <label for="s8" id="slide8">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no9()){ %>
                <label for="s9" id="slide9">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%}else if(m.getActivity_no()==loginReco.getActivity_no10()){ %>
                <label for="s10" id="slide10">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                                   <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt="">
                                      </div>
                              </a>
                      </label>  
                <%} %>
                <%} %>
                <%} %>