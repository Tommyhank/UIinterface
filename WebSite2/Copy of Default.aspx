<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of Default.aspx.cs" Inherits="_Default" %>


<%@ Register src="Usercontrol/buttom.ascx" tagname="buttom" tagprefix="uc1" %>
<%@ Register Src="~/WebSite2/Usercontrol/head.ascx" TagPrefix="uc1" TagName="head" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
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
            height: 779px;
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
        <uc1:head runat="server" id="head" />
<div class="bodycr">
    <div class="bodyleft" style="float:left;width:473px;height:266px;"><a href="BUWest.aspx" style="color:#f00;text-decoration:none">BU West</a></div>
    <div class="bodycenter"style="float:right;height:266px; width:473px"><a href="BUCentral.aspx" style="color:#fff;text-decoration:none">BU Central</a></div>
</div>
    <div class="bodycr">
    <div class="bodyright" style="float:left;height: 266px; width: 473px;"><a href="BUEast.aspx" style="color:#FFFFFF;text-decoration:none">BU East</a></div>
    <div class="bodyrightright" style="float:right;height: 266px; width: 473px;"><a href="AroundBU.aspx" style="color:#ff0000;text-decoration:none">Around BU</a></div>
        
    </div>
        <uc1:buttom ID="buttom1" runat="server" />
    </form>
</body>
</html>