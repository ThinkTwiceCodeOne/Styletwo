package com.thinking.machines.hr.servlets;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class UpdateDesignation extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
DesignationBean designationBean;
designationBean=(DesignationBean)request.getAttribute("designationBean");
String title;
title=designationBean.getTitle();
int code;
code=designationBean.getCode();
DesignationDTO designation=new DesignationDTO();
designation.setTitle(title);
designation.setCode(code);
DesignationDAO designationDAO=new DesignationDAO();
try
{
designationDAO.update(designation);
designationBean.setCode(designation.getCode());
MessageBean messageBean;
messageBean=new MessageBean();
messageBean.setHeading("Designation (Edit Module)");
messageBean.setMessage("Designation Updated");
messageBean.setGenerateButtons(true);
messageBean.setGenerateTwoButtons(false);
messageBean.setButtonOneText("Yes");
messageBean.setButtonOneAction("Designations.jsp");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/Notification.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
System.out.println("catch me aaya");
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/DesignationEditForm.jsp");
requestDispatcher.forward(request,response);
}
}catch(Exception e)
{
System.out.println(e);
}
}
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
doPost(request,response);
}
}