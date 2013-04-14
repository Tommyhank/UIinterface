<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .heading {
            background-color: #FF9933;
            font-family: "Arial Unicode MS";
            font-size: medium;
            color: #808080;
            font-weight: bold;
            font-style: normal;
            background-image: url('Image/13195053W15I0-135O.jpg');
            vertical-align: middle;
        }
       
        .heading2 {
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            font-size: medium;
        }
       
        .bodyleft {
            background-image: url('Image/second-series-of-chinese-food-culture-30842_副本.jpg');
            background-position: center center;
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            font-size: medium;
            text-align: center;
            font-weight: bold;
        }
       
        .bodystyle {
            background-color: #FFFF99;
            height: 587px;
        }
       
        .bodycenter {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('Image/food-pizza-tables_副本.jpg');
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
        }
        .bodyright {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            background-image: url('Image/pictures-delicious-food-dishes-46269_副本.jpg');
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
        }
       
        #form1 {
            height: 590px;
        }
       
        </style>

</head>
<body class="bodystyle">
    <form id="form1" runat="server">
    <div style="height:160px;width:100%;color: #000000; " class="heading" id="head">
        <div><h1>
            <img alt="" style="height:100%;" src="Image/yummy_logo.jpg" /></h1></div>
        <div>
            <a  class="heading2" style="position:absolute; text-align:right; top: 120px; right:20px;" href="Login.aspx">Sign in</a>
            <a class="heading2" style="position:absolute; text-align:right; top: 120px; right:100px;" href="Register.aspx">Register</a>
        </div>
    </div>
<div>
    <div class="bodyleft" style="float:left;position:absolute; width:32.8%; height:400px; top:190px"><a href="BUWest.aspx">BU West</a></div>
    <div class="bodycenter"style="left:33.5%; position:absolute; width:33%;height:400px;top:190px"><a href="BUCentral.aspx">
        BU Central</a></div>
    <div class="bodyright" style="left:66.7%;position: absolute; width: 33%; height: 400px; top: 190px;"><a href="BUEast.aspx"> East</a></div>
    </div>
    </form>
</body>
</html>