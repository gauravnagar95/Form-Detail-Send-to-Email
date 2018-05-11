<%-- 
    Document   : home
    Created on : May 9, 2018, 11:33:23 AM
    Author     : Gaurav Nagar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>ServantUploadsForm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body style="background-color:#FFD6AE">
  <style>
  table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
  }

  td{
      border: 1px solid #C7C7C7;
      text-align: left;
      padding: 8px;
  }

  tr:nth-child(even) {
      background-color: #dddddd;
  }


  </style>

<h1><center>Servant Uploads</center></h1>
<form name="Myform" action="Mail.jsp" method="post">
<table>

  <tr>
    <td>Date <input name="date" type="date" placeholder="" style="width:60%" required></td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>Photo id Type <select class="w3-border w3-round-large" name="photo_id_type" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="aadhaar_card">Aadhaar-Card</option>
        
    </select></td>
    <td>ID NO <input name="photo_id_no" type="number" placeholder=""  required></td>
    <td></td>
  </tr>

  <tr>
    <td>Applicant Availability Time</td>
    <td>From: <select class="w3-border w3-round-large" name="applicant_from" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
        </select> </td>
        <td>To: <select class="w3-border w3-round-large" name="applicant_to" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
            </select> </td>
  </tr>
  <tr>
    <td><b>Servant's Name &emsp;&emsp;</b>  First* <input name="servant_name_first"  type="text" placeholder=""  required></td>
    <td>Middle <input name="servant_name_middle" type="text" placeholder=""></td>
    <td>Last* <input name="servant_name_last" type="text" placeholder=""  required></td>
  </tr>
  <tr>
    <td><b>Father/Husband Name &emsp;&emsp;</b> First*&emsp;<input name="father_husband_name_first" type="text" placeholder=""  required> </td>
    <td>Middle <input name="father_husband_name_middle" type="text" placeholder=""></td>
    <td>Last* <input name="father_husband_name_last" type="text" placeholder=""  required></td>
  </tr>
  <tr>
    <td>Gender* &emsp;&emsp; <label class="radio-inline">
      <input type="radio" name="optradio" value="Male">Male
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio"value="Female" >Female
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value="Other" >Other
    </label>
    </td>
    <td>Caste* <select class="w3-border w3-round-large" name="caste" style="width:60%">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
        </select> </td>
    <td> </td>
  </tr>


  <tr>
    <td>Date of Birth &emsp;&emsp;
      <label class="radio-inline">
      <input type="radio" name="optradio1" value="Known" >Known
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio1" value="Not Known" >Not Known
    </label>
    </td>

    <td><input name="date_of_birth" type="Date" placeholder=""  required></td>
    <td>Age <input name="age" type="number" placeholder=""  required></td>
  </tr>


  <tr>
    <td>Servant State* <select class="w3-border w3-round-large" name="servant_state" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
        </select>   </td>

    <td>Servant Police District* <select class="w3-border  w3-round-large" name="servant_police_district" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
        </select> </td>
    <td>Servant Police Station <select class="w3-border w3-round-large" name="servant_police_station" style="width:60%;height:25px">
        <option value="" disabled selected >--Select Photo ID Type--</option>
        <option value="Moniter">Moniter</option>
        <option value="Mouse">Mouse</option>
        <option value="Keybord">Keybord</option>
        <option value="Pendrive">Pendrive</option>
        <option value="CPU">CPU</option>
        </select> </td>
  </tr>
<tr>
  <td>
  <b>Permanent Address* </b><textarea class="form-control" name="permanent_address" rows="3"></textarea>
  </td>
  <td></td>
  <td></td>
</tr>
</table>
</br></br>    
<center><input type="submit" class="btn btn-warning"  value="SUBMIT" style="width:25%;height:60px"></center>
</body>
</html>
