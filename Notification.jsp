<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<jsp:useBean id='messageBean' scope='request' class='com.thinking.machines.hr.beans.MessageBean'/>
<tm:Module name='DESIGNATION'/>
<jsp:include page='/MasterPageTopSection.jsp'>
<jsp:param name='module' value='DESIGNATION'/>
</jsp:include><h2>${messageBean.heading}</h2>
${messageBean.message}
<tm:If condition='${messageBean.generateButtons}'>
<table>
<tr>
<td>
<form action='/styletwo/${messageBean.buttonOneAction}'>
<button>${messageBean.buttonOneText}</button>
</form>
</td>
<tm:If condition='${messageBean.generateTwoButtons}'>
<td>
<form action='/styletwo/${messageBean.buttonTwoAction}'>
<button>${messageBean.buttonTwoText}</button>
</form>
</td>
</tm:If>
</tr>
</table>
</tm:If>
<jsp:include page='/MasterPageBottomSection.jsp' />