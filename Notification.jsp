<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<jsp:useBean id='messageBean' scope='request' class='com.thinking.machines.hr.beans.MessageBean'/>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!-- Main Container starts here -->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<img src='/styletwo/images/logo.png' class='logo'>
<div class='brand-name'>Thinking Machines</div>
</div><!-- header ends here -->
<!-- Content - section  starts here -->
<div class='content'>
<!-- left panel starts here -->
<div class='content-left-panel'>
<b>Designations</b><br>
<a href='/styletwo/Employees.jsp'>Employees</a><br><br>
<a href='/styletwo/index.html'>Home</a>
</div>
<!-- left panel ends here -->

<!-- right panel starts here -->
<div class='content-right-panel'>
<h2>${messageBean.heading}</h2>
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
</div>
<!--right panel ends here -->
</div>
<!-- content section ends here -->
<!-- footer starts here -->
<div class='footer'>
&copy;Thinking machines 2020
</div>
<!-- footer ends here -->
</div> <!-- Main ends starts here -->
</body>
</html>