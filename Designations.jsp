<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm'%>
<!DOCTYPE HTML>
<html lange='en'>
<head>
<meta charset='utf-8'>
<title>HR Application</title>
</head>
<body>
<table>
<thead>
<tr>
<th>S.No.</th>
<th>Designation</th>
</tr>
</thead>
<tbody>
<tm:Designations>
<tr>
<td>${serialNumber}</td>
<td>${designationBean.title}</td>
</tm:Designations>
</tbody>
</body>
</html>