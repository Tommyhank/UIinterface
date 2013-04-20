<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<%@ Register src="Usercontrol/buttom.ascx" tagname="buttom" tagprefix="uc1" %>


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
            margin-right: auto;
            margin-left: auto;
        }
        .heading2 {
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            font-size: medium;
            position: relative;
            z-index: auto;
            background-color: #FF6600;
            text-align: right;
            margin-right: auto;
            margin-left: auto;
            font-weight: bolder;
            font-style: oblique;
            font-variant: inherit;
        }
       
        .bodyleft {
            background-image: url('Image/Chinese-Cuisine-Table-Laying-1080x1920.jpg');
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            font-size: medium;
            text-align: center;
            font-weight: bold;
            vertical-align: middle;
        }
       
        .bodystyle {
            background-color: #FFFF99;
            clip: rect(auto, auto, auto, auto);
        }
        .bodycr
        {
            width: 950px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 4px;
            height: 266px;
        }
        .bodycenter {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('Image/food-pizza-tables.jpg');
            text-align: center;
            color: #FFFFFF;
            float:left;
            font-weight: bold;
            margin-right: auto;
            margin-left: auto;
        }
        .bodyright {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            background-image: url('Image/pictures-delicious-food-dishes-46269.jpg');
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
            margin-right: auto;
            margin-left: auto;
        }
       
        #form1 {
            height: 1281px;
        }
       
        .bodyrightright {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
            text-align: center;
            background-image: url('Image/Food-Meat-900x1600.jpg');
            color: #FFFFFF;
            margin-right: auto;
            margin-left: auto;
        }
       
        </style>

</head>
<body class="bodystyle"  style="margin:auto; height: 772px;">
    <form id="form1" runat="server">
        <div class="heading" style="width:950px;height:118px">
            <div>
                <img src="Image/yummy_logo.jpg" style="height: 118px; width: 188px" />
            </div>
        </div>
        <div class="heading2" style="width:950px"><a  href="Login.aspx">Sign in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Register.aspx">Join Us</a> </div>
<div class="bodycr">
    <div class="bodyleft" style="float:left;width:473px;height:266px;"><a href="BUWest.aspx" style="color:#f00">BU West</a></div>
    <div class="bodycenter"style="float:right;height:266px; width:473px"><a href="BUCentral.aspx" style="color:#fff">BU Central</a></div>
</div>
    <div class="bodycr">
    <div class="bodyright" style="float:left;height: 266px; width: 473px;"><a href="BUEast.aspx" style="color:#FFFFFF">BU East</a></div>
    <div class="bodyrightright" style="float:right;height: 266px; width: 473px;"><a href="AroundBU.aspx" style="color:#ff0000">Around BU</a></div>
        
    </div>
        <uc1:buttom ID="buttom1" runat="server" />
    </form>
</body>
</html>