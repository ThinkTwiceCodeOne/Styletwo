<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<script src='/styletwo/js/DesignationEditForm.js'></script>
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
<h2>Designation (Edit Module)</h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/styletwo/UpdateDesignation.jsp' onsubmit='return validateForm(this)'>
Designation
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<input type='text' id='title' name='title' maxlength='35' size='36' value='${designationBean.title}'>
<span id='titleErrorSection' class='error'></span><br>
<button type='submit' style='float:left'>Update</button>
<button type='Button' onclick='cancelUpdation()'>Cancel</button>
</form>
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
<form id='cancelAdditionForm' action='/styletwo/Designations.jsp'>
</form>
</body>
</html>