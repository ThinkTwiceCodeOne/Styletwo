<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm'%>
<tm:Module name='DESIGNATION'/>
<jsp:include page='/MasterPageTopSection.jsp'/>
<h2>Desginations</h2>
<table border='1'>
<thead>
<tr>
<th colspan='4' style='text-align:right;padding:5px'>
<a href='/styletwo/DesignationAddForm.jsp'>Add new designation</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center'>S.No.</th>
<th style='width:200px;text-align:center'>Desgination</th>
<th style='width:100px;text-align:center'>Edit</th>
<th style='width:100px;text-align:center'>Delete</th>
</thead>
<tbody>
<tm:Designations>
<tr>
<td style='text-align:right'>${serialNumber}.</td>
<td>${designationBean.title}</td>
<td style='text-align:center'><a href='/styletwo/editDesignation?code=${designationBean.code}'>Edit</td>
<td style='text-align:center'><a href='/styletwo/confirmDeleteDesignation?code=${designationBean.code}'>Delete</td>
</tr>
</tm:Designations>
</tbody>
</table>
<jsp:include page='/MasterPageBottomSection.jsp' />