<!DOCTYPE html>
<html>
<head>
<title>Register Form</title>
</head>
<body>
<form action="insert.jsp" method="POST">
<table>
<tr>
<td>
Name :
</td>
<td>
<input type="text"name="Username">
</td>
</tr>
<tr>
<td>
Password :
</td>
<td>
<input type="Password" name="password">
</td>
</tr>
<tr>
<td>
Gender :
</td>
<td>
<input type="radio" name="Gender" >Male
<input type="radio" name="Gender" >Female

</td>
</tr>
<tr>
<td>
Email :
</td>
<td>
<input type="mail" name="email" required>
</td>
</tr>
<tr>
<td>
phone no :
</td>
<td>
<select name="phonecode" >
<option selected hidden value="">Select Code</option>
<option value="977">977</option>
<option value="978">978</option>
<option value="979">979</option>
<option value="980">980</option>
<option value="981">981</option>
<option value="982">982</option>
<option value="983">983</option>
</select>
<input type="phone"  name="phone">
</td>
</tr>
<tr>
<td>
<input type="Submit" value="Submit" name="">
</td>
</tr>
</table></form>
</body>
</html>

