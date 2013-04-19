<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="WebUserControl" %>
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
        .bodystyle {
            background-color: #FFFF99;
            clip: rect(auto, auto, auto, auto);
        }

        #form1 {
            height: 1281px;
        }
       
        </style>
<div class="heading" style="width:950px;height:118px">
            <div>
                <img src="Image/yummy_logo.jpg" style="height: 118px; width: 188px" />
            </div>
        </div>
        <div class="heading2" style="width:950px"><a  href="Login.aspx">Sign in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Register.aspx">Join Us</a> </div>