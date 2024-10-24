//AJs Sweets - Food Ordering App use React or Android Studio Kotlin (LittleLemonMenu)

app colors

//Purple

#f0f0f5 light*
#c1c1d7 *
#666699 mid*
#854bd1 mid 
#884dff logo *
#1e1e2f deep dark*


//Blue

#000099 logo *
#e6ecff light blue*
#4d94ff mid
#0000ff true blue


//Grey

#E8E3D8 china white
#ffffff white
#f2c2f2 light grey *

//Red

#ff0000 red*
#ff8080 coral
#660000 maroon/wine

//green

#009900 mid*
#e6ffe6 light
#003300 dark 




<button type="button" class="btn btn-primary">Primary</button>  bg #666699 border #f2c2f2 text #ffffff
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button> bg #25c225 border #f2c2f2 text #ffffff
<button type="button" class="btn btn-danger">Danger</button> bg #ff0000 border #f2c2f2 text #ffffff
<button type="button" class="btn btn-warning">Warning</button> bg #c0c0c0 border #f2c2f2 text #ffffff
<button type="button" class="btn btn-info">Info</button> bg #fofof5 border #884dff text #ffffff
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button> #4d94ff


<a class="btn btn-primary" href="#" role="button">Link</a>
<button class="btn btn-primary" type="submit">Button</button> bg #000099 border #f2c2f2 text #ffffff 
<input class="btn btn-primary" type="button" value="Input">
<input class="btn btn-primary" type="submit" value="Submit">
<input class="btn btn-primary" type="reset" value="Reset">



Image Thumbnails - give an image a rounded 1px border appearance.


<img src="..." class="img-thumbnail" alt="...">


Fluid containers
Use .container-fluid for a full width container, spanning the entire width of the viewport.

<div class="container-fluid">
  ...
</div>

//default.css

#wrapper .header {
    background-color: #854bd1;
    padding: 10px 0;
    margin-bottom: 40px;
}

#wrapper .header .RadMenu {
    margin: 10px 0;
    float: none;
}

#wrapper .logo {
    margin: 10px 0;
    width: 100%;
    display: inline-block;
}

#wrapper .logo img {
    max-width: 100%;
}

#wrapper .jumbotron {
    padding: 1.875em;
    padding-top: 1em;
    background-color: #e6ecff;
}

#wrapper .jumbotron .RadButton {
    float: right;
    margin-top: .667em;
    font-size: .5em;
}

#wrapper .footer {
    width:100%;
    padding: 30px 15px;
    line-height: 30px;
}

.MyLabel {
    display: block;
    width: 150px;
    margin-top: 4px;
}

html body form .RadInput .MyEmptyTextBox,
html body form .RadInput .MyEnabledTextBox,
html body form .RadInput .MyHoveredTextBox,
html body form .RadInput .MyFocusedTextBox,
html body form .RadInput .MyInvalidTextBox,
html body form .RadInput .MyNegativeTextBox {
    border-width: 2px;
    border-color: #a9c9a9;
    font: 14px/18px arial,sans-serif;
}

html body .RadInput .MyEmptyTextBox {
    color: #999;
}

html body form .RadInput .MyEnabledTextBox {
}

html body form .RadInput .MyHoveredTextBox {
    border-color: #6c6;
    background: #efe;
}

html body form .RadInput .MyFocusedTextBox {
    border-color: #3a3;
    background: #efe;
}

html body form .RadInput .MyInvalidTextBox {
    border-color: #f33;
    background: none #ff9;
}

html body form .RadInput .MyNegativeTextBox {
    color: #930;
    font-weight: bold;
}

#example .RadInput .riLabel {
    color: #555;
}

#example .RadInput .riTextBox {
    color: #555;
}

#example .demo-containers {
    margin: 30px auto;
}

    #example .demo-containers .demo-container {
        display: inline-block;
        padding: 30px;
        margin: 10px auto;
        min-width: 250px;
        min-height: 85px;
    }

.fb-group .riSingle {
    display: inline-block !important;
}

//listView.css

#wrapper .header {
    background-color: #2d283d;
    padding: 10px 0;
    margin: 0;
    text-align: center;
}

@media only screen and (max-width: 720px) {
    #wrapper .header {
        text-align: left;
        padding: 10px 2em;
    }
}
#wrapper .header .RadMenu {
    float: none;
    display: inline-block;
    vertical-align: top;
}

#wrapper .logo {
    padding: 10px 0;
    display: block;
    text-align: center;
}

#wrapper .jumbotron {
    margin-bottom: 20px;
    padding: 0 1.875em 1.875em 1.875em;
    border: 1px solid transparent;
    background-color: #647ad1;
    overflow: hidden;
}

#wrapper .jumbotron img {
 
    margin: 20px 0 0 0;
    max-width: 100%;
}

#wrapper .jumbotron h1 {
    border-bottom: 1px solid #91a2e3;
    display: inline-block;
    padding-bottom: 20px;
}

#wrapper .grid_wrapper {
    margin: 0 40px;
}

.listView1,
.listView2 {
    padding: 0 20px;
    overflow: hidden;
    text-align: center;
}

#wrapper .listViewItem {
    display:inline-block;
    vertical-align: top;
}

#wrapper .listView1 .listViewItem {
    max-width: 440px;
    width: auto;
}

#wrapper .listView2 .listViewItem {
    max-width: 440px;
    width: auto;
}

* + html #wrapper .listViewItem {
    display: inline;
    zoom: 1;
}

#wrapper .footer {
    padding: 20px 15px;
    line-height: 30px;
}
.listViewItem img {
    cursor: pointer;
}
div .RadMenu {
    z-index: 700;
}


//styles.css

.grdHeader {
	background-color: #a5abf2;
	font-size: 12px;
}

.grdAlternatingRow {
	background-color: #dadbeb;
}

.grdRecords {
	font-size: 11px;
	color: #ffffff;
}

.containerSearch {
	text-align: left;
	height: 22px;
	background-color: #f0f0f5;
}


.form-button {
	color: Black;
	background-color: #666699;
	font: normal 8pt Verdana, Arial, sans-serif;
	border: 1px solid #f2c2f2;
	width: 80px;
}

.btnGo {
	height: 25px;
	background: url(Images/btnGo.gif) no-repeat top left;
	color: #ffffff;
	width: 30px;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
}

.btnAction {
	height: 25px;
	background: url(Images/btnAction.gif) no-repeat top left;
	color: #ffffff;
	width: 114px;
	cursor: pointer;
	font-weight: bold;
	text-align: center;
	border: 1px solid #7768c4;
}

.actionButton {
	padding: 3px 6px;
	margin: 0px;
	margin-bottom: 10px;
	width: 114px;
	height: auto;
	text-align: center;
	font-size: 13px;
	text-decoration: none;
	background: #333;
	color: #f0ecde !important;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	float: right;
	border: 1px solid #7768c4;
	font-weight: bold;
}

.MyCalendar .ajax__calendar_container {
	border: 1px solid #00099;
	background-color: #646464;
	color: red;
}

.MyCalendar .ajax__calendar_other .ajax__calendar_day,
.MyCalendar .ajax__calendar_other .ajax__calendar_year {
	color: black;
}

.MyCalendar .ajax__calendar_hover .ajax__calendar_day,
.MyCalendar .ajax__calendar_hover .ajax__calendar_month,
.MyCalendar .ajax__calendar_hover .ajax__calendar_year {
	color: black;
}

.MyCalendar .ajax__calendar_active .ajax__calendar_day,
.MyCalendar .ajax__calendar_active .ajax__calendar_month,
.MyCalendar .ajax__calendar_active .ajax__calendar_year {
	color: black;
	font-weight: bold;
}

.form-button {
	color: Black;
	background-color: #CCCCCC;
	font: normal 8pt Verdana, Arial, sans-serif;
	border: 1px solid #000000;
	width: 80px;
}

.HeadingB {
	font-weight: 600;
	font-size: 1.6em;
	color: #000099;
	font-variant: small-caps;
	text-transform: none;
	margin-bottom: 0px;
}

.Heading {
	font-weight: 400;
	font-size: 1.5em;
	color: #000099;
	font-variant: small-caps;
	text-transform: none;
	margin-bottom: 0px;
}

'styles.css

/*normalize*/
html, 
body, 
form {
	height: 100%;
	margin: 0;
	padding: 0;
}

body {
    font: normal 16px "Segoe UI", Arial, sans-serif;
    color: #051e26;
	   /*Newly Added*/
    margin-top: 0px;
    margin-left: auto;
    margin-right: auto;
    background-color: #f0f0f5;
}

@media only screen and (min-width: 481px) and (max-width: 720px) {
    body {
        font-size: 18px;
    }
}

@media only screen and (max-width: 480px) {
    body {
        font-size: 20px;
    }
}
a {
  background: transparent;
}

img {
  border-style: none;
    border-color: inherit;
    border-width: 0;
    width: 100px;
    margin-right: 0px;
    margin-top: 0px;
    height: 100px;
    margin-left: 0px;
}

#logo img{
    max-height: 50px;
    width: auto;
}


/* Style all font awesome icons */
.fa {
    padding: 20px;
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
}

    /* Add a hover effect if you want */
    .fa:hover {
        opacity: 0.7;
    }

/* Set a specific color for each brand */

/* Facebook */
.fa-facebook {
    background: #3B5998;
    color: white;
}

/* Twitter */
.fa-twitter {
    background: #55ACEE;
    color: white;
}
/* Google */
.fa-google {
    background: #dd4b39;
    color: white;
}

/* LinkedIn */
.fa-linkedin {
    background: #007bb5;
    color: white;
}
/* YouTube */
.fa-youtube {
    background: #bb0000;
    color: white;
}
/* Instagram */
.fa-instagram {
    background: #125688;
    color: white;
}
/* Pinterest */
.fa-pinterest {
    background: #cb2027;
    color: white;
}
/* Snap */
.fa-snapchat-ghost {
    background: #fffc00;
    color: white;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
/* Skype */
.fa-skype {
    background: #00aff0;
    color: white;
}
/* Android */
.fa-android {
    background: #a4c639;
    color: white;
}
/* Dribbble? */
.fa-dribbble {
    background: #ea4c89;
    color: white;
}
/* Vimeo */
.fa-vimeo {
    background: #45bbff;
    color: white;
}
/* Tumblr */
.fa-tumblr {
    background: #2c4762;
    color: white;
}
/* Vine */
.fa-vine {
    background: #00b489;
    color: white;
}
/* Foursquare */
.fa-foursquare {
    background: #45bbff;
    color: white;
}
/* Stumbleupon? */
.fa-stumbleupon {
    background: #eb4924;
    color: white;
}
/* Flickr */
.fa-flickr {
    background: #f40083;
    color: white;
}
/* Yahoo */
.fa-yahoo {
    background: #430297;
    color: white;
}
/* Soundcloud */
.fa-soundcloud {
    background: #ff5500;
    color: white;
}
/* Reddit */
.fa-reddit {
    background: #ff5700;
    color: white;
}
/* RSS */
.fa-rss {
    background: #ff6600;
    color: white;
}
button,
input {
  -webkit-appearance: none; 
  cursor: pointer; 
}

hr {
    border-width: 1px 0 0 0;
    border-color: #767676;
    border-style: solid;
}

/*typography*/
h1, h2, h3, h4, h5, h6 {
    line-height: normal;
}

h1, h2, h3 {
    font-weight: normal;
    margin: .5em 0;
}

h4, h5, h6 {
    font-weight: bold;
   
}

h1 {
    font-size: 2.25em;
	font-weight: bold;
    color: #6082b6;

}

h2 {
    font-size: 1.875em;
	 color: #6082b6;
}

h3 {
    font-size: 1.5em;
	 color: #6082b6;
}

h4 {
    font-size: 1.125em
	 color: #6082b6;
}

h5 {
    font-size: 1em;
	 color: #6082b6;
}

h6 {
    font-size: .875em;
	 color: #6082b6;
}

/*template*/
#wrapper .t-container-fluid {
    max-width: 100%;
}

#wrapper .RadButton {
    font-size: 1em;
}

#wrapper .RadMenu,
div.RadMenuPopup,
#wrapper .RadMenu_Default, #wrapper .RadMenu_Default a.rmLink  {
    font-size: 1em;
}

/* Form Elements*
--------------------------------------------------------------------------*/


.topnav {
    background-color: #6125b0;
    width: 100%;
}

.topnav menu {
    padding: 4px 0px 4px 8px;
}

    .topnav ul {
        list-style: none;
        margin: 0px;
        padding: 0px;
        width: auto;
    }

        .topnav a {
            background-color: #c1c1d71;
            border: 1px #000099 solid;
            color: #4e5661;
            display: block;
            line-height: 1.35em;
            padding: 4px 20px;
            text-decoration: none;
            white-space: nowrap;
        }

            .topnav a:hover {
                background-color: #f0f0f5
                color: #884dff;
                text-decoration: none;
            }

            div.topnav a:active {
                background-color: #884dff;
                color: #f0f0f5;
                text-decoration: none;
            }


//'masterpage.Master

Make Page Responsive to various screen sizes when <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd> added to Site.Master

Update /Styles/Site.css to:

 Change Div Class=”page”

.page {
    /* width: 1100px;*/
    background-color: #051e26;
    margin: 20px auto 0px auto;
    border: 1px solid #1e1e2f;
    /*Newly Added*/
    width: 100%;
    height: 100%;
}




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon"/>
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
         <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png"/>
<link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png"/>
<link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png"/>
<link rel="manifest" href="/site.webmanifest"/>
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5"/>
<meta name="msapplication-TileColor" content="#da532c"/>
<meta name="theme-color" content="#ffffff"/>
    <title>AJs Sweets</title>
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1, maximum-scale=1.0, user-scalable=no" />
    <style>

	body {
	background-image: url('images/ajssweetsbg.png');
	background-position: top center;
	background-size: cover;
	}


/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
</style>

     //<link rel="stylesheet" type="text/css" href="styles.css" /> 
    //<link href="styles/base.css" rel="stylesheet" />
   
    <link href="http://localhost:64954/css/bootstrap.min.css" rel="stylesheet" />
    <link href="http://localhost:64954/Content/DataTables/css/dataTables.jqueryui.min.css" rel="stylesheet" />

    <link href="http://localhost:64954/css/font-awesome.css" rel="stylesheet" />

    <script src="http://localhost:64954/Scripts/jquery-3.4.1.slim.min.js"></script>

    <script src="http://localhost:64954/Scripts/popper.min.js"></script>
    <script src="http://localhost:64954/Scripts/bootstrap.min.js"></script>
	
	/*used to submit with Enter key*/
	
	  <script>
    $(document).ready(function(){
    $('#pw').keypress(function(e){
      if(e.keyCode==13)
      $('#GoBtn').click();
    });
});
    </script>

    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
    <meta name="Omega Fullard" content="AJs Sweets, Developer: Omega Fullard, Designer: Omega Fullard" />
	<!--Logo-->

            <a href="#" class="logo">
                <img src="images/ajslogo.png" />
            </a>
			

    <title>Buttons</title>
	
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/buttons/">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="App_Themes/styles.css" rel="stylesheet" />
    <link href="App_Themes/Page.css" rel="stylesheet" />
    <link href="App_Themes/dropdowns.css" rel="stylesheet" />
    <link href="App_Themes/headers.css" rel="stylesheet" />
    <link href="App_Themes/modals.css" rel="stylesheet" />
    <link href="App_Themes/pricing.css" rel="stylesheet" />
    <link href="App_Themes/sign-in.css" rel="stylesheet" />
	

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
    </style>

    

</head>

<body>
    <form id="form1" runat="server">
	 <asp:ScriptManager runat="server">
	<Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
              
            </Scripts>
        </asp:ScriptManager>
                    <%--Site Scripts--%>
        <link href="Styles/styles.css" rel="stylesheet" />
            <script src="Scripts/jquery-3.4.1.slim.min.js"></script>      
<script src="http://localhost:64954/Scripts/popper.min.js"></script>
<script src="http://localhost:64954/Scripts/bootstrap.min.js"></script>

         <link href="http://localhost:64954/css/bootstrap.min.css" rel="stylesheet" />
 <link href="http://localhost:64954/Content/DataTables/css/dataTables.jqueryui.min.css" rel="stylesheet" />

 <link href="http://localhost:64954/css/font-awesome.css" rel="stylesheet" />
        <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

    
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="arrow-right-short" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
  </symbol>
  <symbol id="x-lg" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
    <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
  </symbol>
</svg>

<div class="d-flex gap-2 justify-content-center py-5">
  <button class="btn btn-primary rounded-pill px-3" type="button">Primary</button>
  <button class="btn btn-secondary rounded-pill px-3" type="button">Secondary</button>
  <button class="btn btn-success rounded-pill px-3" type="button">Success</button>
  <button class="btn btn-danger rounded-pill px-3" type="button">Danger</button>
  <button class="btn btn-warning rounded-pill px-3" type="button">Warning</button>
  <button class="btn btn-info rounded-pill px-3" type="button">Info</button>
  <button class="btn btn-light rounded-pill px-3" type="button">Light</button>
  <button class="btn btn-dark rounded-pill px-3" type="button">Dark</button>
  <button class="btn btn-link rounded-pill px-3" type="button">Link</button>
</div>



<div class="b-example-divider"></div>

<div class="d-flex gap-2 justify-content-center pt-5 pb-4">
  <button class="btn btn-primary rounded-circle p-2 lh-1" type="button">
    <svg class="bi" width="16" height="16"><use xlink:href="#x-lg"/></svg>
    <span class="visually-hidden">Dismiss</span>
  </button>
  <button class="btn btn-outline-primary rounded-circle p-2 lh-1" type="button">
    <svg class="bi" width="16" height="16"><use xlink:href="#x-lg"/></svg>
    <span class="visually-hidden">Dismiss</span>
  </button>
</div>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>



    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1, maximum-scale=1.0, user-scalable=no" />
           </div>
        <!-- Main Nav -->
      <div class="topnav menu">
            <asp:Menu ID="NavigationMenu" runat="server" CssClass="topnav" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" EnableScreenBoundaryDetection="true">
               <Items>
              
                    <asp:MenuItem NavigateUrl="Home.aspx" Text="Home" />

                   </asp:MenuItem>
				   
                   <asp:MenuItem Text="Menu" NavigateUrl="Menu.aspx"></asp:MenuItem>
				   
                   <asp:MenuItem Text="Main Dishes" NavigateUrl="Main.aspx"></asp:MenuItem>
               <asp:MenuItem Text="Orders" NavigateUrl="Orders.aspx"></asp:MenuItem>

				    <asp:MenuItem Text="About" NavigateUrl="About.aspx"></asp:MenuItem>
                     <asp:MenuItem Text="Contact Us" NavigateUrl="Contact.aspx"></asp:MenuItem>
					 
                  
            </Items>
            </asp:Menu>
</div>
           </div>
<div class="container">
    <!-- Main Content -->
    <div class="row">
        <div class="col-md-10 col-sm-12">
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
            </asp:ContentPlaceHolder>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder2" runat="server">
            </asp:ContentPlaceHolder>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder3" runat="server">
            </asp:ContentPlaceHolder>
        </div>
    </div>
     
			
			  <center><h4 class="card-title"><strong>Directions to Our Main Location</strong></h4>                       
    <a href="#" class="btn btn-primary">Directions</a>
            <a href="https://google.com/maps?q=39.57.09,75.10.14.8"></a>
  </div></center>
  
  
  <div class="card-footer text-muted">
     

             <center>  <p><strong>Please be sure to follow us on Social Media!</strong></p>
            <br /> 
                  <center><a href="#" class="btn btn-primary">Follow Us!</a>  </center>
                 <br />
            <div style="height: 66px">
                <br />

            <!-- Add font awesome icons -->
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>

        </div>
<br />

    <!-- Footer -->
    <div class="row">
        <div class="col-md-12">
            <hr />
	
                <p>&copy; <%: DateTime.Now.Year %>© 2008- AJ's Sweets, 123 Treats Rd., Atlanta, GA 30080</p>
        </div>
    </div>
</div>

    </form>
</body>
</html>


//Welcome or Start screen

-Logo and Company Name
-Pic for delivery
-Pic for Order
-Search Bar (sort and filter)
-NavigationMenu
-shopping cart (checkout page)

//Register (LittleLemon Capstone)

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>

   
</asp:Content>

using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;


public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
		//var manager = new UserManager();
		//var user = new ApplicationUser() { UserName = UserName.Text };
		//IdentityResult result = manager.Create(user, Password.Text);
		//if (result.Succeeded)
		//{
		//	IdentityHelper.SignIn(manager, user, isPersistent: false);
		//	IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
		//}
		//else
		//{
		//	ErrorMessage.Text = result.Errors.FirstOrDefault();
		//}
	}
}

**RegisterExternalLogin

<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterExternalLogin.aspx.cs" Inherits="Account_RegisterExternalLogin" Async="true" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Register with your <%: ProviderName %> account</h3>

    <asp:PlaceHolder runat="server">
        <div class="form-horizontal">
            <h4>Association Form</h4>
            <hr />
            <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
            <p class="text-info">
                You've authenticated with <strong><%: ProviderName %></strong>. Please enter a user name below for the current site
                and click the Log in button.
            </p>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="userName" CssClass="col-md-2 control-label">User name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="userName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="userName"
                        Display="Dynamic" CssClass="text-danger" ErrorMessage="User name is required" />
                    <asp:ModelErrorMessage runat="server" ModelStateKey="UserName" CssClass="text-danger" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Log in" CssClass="btn btn-default" OnClick="LogIn_Click" />
                </div>
            </div>
        </div>
    </asp:PlaceHolder>
</asp:Content>


using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;


public partial class Account_RegisterExternalLogin : System.Web.UI.Page
{
    protected string ProviderName
    {
        get { return (string)ViewState["ProviderName"] ?? String.Empty; }
        private set { ViewState["ProviderName"] = value; }
    }

    protected string ProviderAccountKey
    {
        get { return (string)ViewState["ProviderAccountKey"] ?? String.Empty; }
        private set { ViewState["ProviderAccountKey"] = value; }
    }

    protected void Page_Load()
    {
        //// Process the result from an auth provider in the request
        //ProviderName = IdentityHelper.GetProviderNameFromRequest(Request);
        //if (String.IsNullOrEmpty(ProviderName))
        //{
        //    Response.Redirect("~/Account/Login");
        //}
        //if (!IsPostBack)
        //{
        //    var manager = new UserManager();
        //    var loginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo();
        //    if (loginInfo == null)
        //    {
        //        Response.Redirect("~/Account/Login");
        //    }
        //    var user = manager.Find(loginInfo.Login);
        //    if (user != null)
        //    {
        //        IdentityHelper.SignIn(manager, user, isPersistent: false);
        //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //    }
        //    else if (User.Identity.IsAuthenticated)
        //    {
        //        // Apply Xsrf check when linking
        //        var verifiedloginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo(IdentityHelper.XsrfKey, User.Identity.GetUserId());
        //        if (verifiedloginInfo == null)
        //        {
        //            Response.Redirect("~/Account/Login");
        //        }

        //        var result = manager.AddLogin(User.Identity.GetUserId(), verifiedloginInfo.Login);
        //        if (result.Succeeded)
        //        {
        //            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //        }
        //        else
        //        {
        //            AddErrors(result);
        //            return;
        //        }
        //    }
        //    else
        //    {
        //        userName.Text = loginInfo.DefaultUserName;
        //    }
       // }
    }

 protected void LogIn_Click(object sender, EventArgs e)
    {
        CreateAndLoginUser();
    }

    private void CreateAndLoginUser()
    {
        //if (!IsValid)
        //{
        //    return;
        //}
        //var manager = new UserManager();
        //var user = new ApplicationUser() { UserName = userName.Text };
        //IdentityResult result = manager.Create(user);
        //if (result.Succeeded)
        //{
        //    var loginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo();
        //    if (loginInfo == null)
        //    {
        //        Response.Redirect("~/Account/Login");
        //        return;
        //    }
        //    result = manager.AddLogin(user.Id, loginInfo.Login);
        //    if (result.Succeeded)
        //    {
        //        IdentityHelper.SignIn(manager, user, isPersistent: false);
        //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //        return;
        //    }
        //}
        //AddErrors(result);
    }

    private void AddErrors(IdentityResult result)
    {
        foreach (var error in result.Errors)
        {
            ModelState.AddModelError("", error);
        }
    }
}


//Login (LittleLemon Capstone)

//headers.css

.form-control-dark {
    border-color: var(--bs-gray);
}

    .form-control-dark:focus {
        border-color: #fff;
        box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
    }

.text-small {
    font-size: 85%;
}

.dropdown-toggle:not(:focus) {
    outline: 0;
}

//sign-in.css

html,
body {
    height: 100%;
}

.form-signin {
    max-width: 330px;
    padding: 1rem;
}

    .form-signin .form-floating:focus-within {
        z-index: 2;
    }

    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }

//dropdowns.css 

.dropdown-item-danger {
    color: var(--bs-red);
}

    .dropdown-item-danger:hover,
    .dropdown-item-danger:focus {
        color: #fff;
        background-color: var(--bs-red);
    }

    .dropdown-item-danger.active {
        background-color: var(--bs-red);
    }

.btn-hover-light {
    color: var(--bs-body-color);
    background-color: var(--bs-body-bg);
}

    .btn-hover-light:hover,
    .btn-hover-light:focus {
        color: var(--bs-link-hover-color);
        background-color: var(--bs-tertiary-bg);
    }

.cal-month,
.cal-days,
.cal-weekdays {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    align-items: center;
}

.cal-month-name {
    grid-column-start: 2;
    grid-column-end: 7;
    text-align: center;
}

.cal-weekday,
.cal-btn {
    display: flex;
    flex-shrink: 0;
    align-items: center;
    justify-content: center;
    height: 3rem;
    padding: 0;
}

    .cal-btn:not([disabled]) {
        font-weight: 500;
        color: var(--bs-emphasis-color);
    }

    .cal-btn:hover,
    .cal-btn:focus {
        background-color: var(--bs-secondary-bg);
    }

    .cal-btn[disabled] {
        border: 0;
        opacity: .5;
    }

.w-220px {
    width: 220px;
}

.w-280px {
    width: 280px;
}

.w-340px {
    width: 340px;
}

.opacity-10 {
    opacity: .1;
}



<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../App_Themes/sign-in.css" rel="stylesheet" />
           
      
    <h2><%: Title %></h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                    if you don't have a local account.
                </p>
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
    </div>              
       
</asp:Content>

using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;



public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }

        protected void LogIn(object sender, EventArgs e)
        {
            //if (IsValid)
            //{
            //    // Validate the user password
            //    var manager = new UserManager();
            //    ApplicationUser user = manager.Find(UserName.Text, Password.Text);
            //    if (user != null)
            //    {
            //        IdentityHelper.SignIn(manager, user, RememberMe.Checked);
            //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //    }
            //    else
            //    {
            //        FailureText.Text = "Invalid username or password.";
            //        ErrorMessage.Visible = true;
            //    }
            //}
        }
}


**Manage

<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Account_Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
               <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>

    </div>

    <div class="row">
        <div class="col-md-12">
            <section id="passwordForm">
                <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
                    <p>
                        You do not have a local password for this site. Add a local
                        password so you can log in without an external login.
                    </p>
                    <div class="form-horizontal">
                        <h4>Set Password Form</h4>
                        <hr />
                        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="password" CssClass="col-md-2 control-label">Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="password" TextMode="Password"  CssClass="form-control"  />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                    CssClass="text-danger" ErrorMessage="The password field is required."
                                    Display="Dynamic" ValidationGroup="SetPassword" />
                                <asp:ModelErrorMessage runat="server" ModelStateKey="NewPassword" AssociatedControlID="password"
                                    CssClass="text-danger" SetFocusOnError="true" />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="confirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password"  CssClass="form-control"  />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required."
                                    ValidationGroup="SetPassword" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."
                                    ValidationGroup="SetPassword" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" Text="Set Password" ValidationGroup="SetPassword" OnClick="SetPassword_Click" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>

                <asp:PlaceHolder runat="server" ID="changePasswordHolder" Visible="false">
                    <p>You're logged in as <strong><%: User.Identity.GetUserName() %></strong>.</p>
                    <div class="form-horizontal">
                        <h4>Change Password Form</h4>
                        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                        <div class="form-group">
                            <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword" CssClass="col-md-2 control-label">Current password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="CurrentPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="text-danger" ErrorMessage="The current password field is required."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword" CssClass="col-md-2 control-label">New password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                                    CssClass="text-danger" ErrorMessage="The new password is required."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword" CssClass="col-md-2 control-label">Confirm new password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="ConfirmNewPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Confirm new password is required."
                                    ValidationGroup="ChangePassword" />
                                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" Text="Change password" OnClick="ChangePassword_Click" CssClass="btn btn-default" ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>
            </section>

            <section id="externalLoginsForm">

                <asp:ListView runat="server"
                    ItemType="Microsoft.AspNet.Identity.UserLoginInfo"
                    SelectMethod="GetLogins" DeleteMethod="RemoveLogin" DataKeyNames="LoginProvider,ProviderKey">

                    <LayoutTemplate>
                        <h4>Registered Logins</h4>
                        <table class="table">
                            <tbody>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </tbody>
                        </table>

                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#: Item.LoginProvider %></td>
                            <td>
                                <asp:Button runat="server" Text="Remove" CommandName="Delete" CausesValidation="false"
                                    ToolTip='<%# "Remove this " + Item.LoginProvider + " login from your account" %>'
                                    Visible="<%# CanRemoveExternalLogins %>" CssClass="btn btn-default" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>

                <uc:openauthproviders runat="server" returnurl="~/Account/Manage" />
            </section>

        </div>
    </div>

</asp:Content>


using Microsoft.AspNet.Identity;
using Renci.SshNet.Messages.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;


public partial class Account_Manage : System.Web.UI.Page
{
    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected bool CanRemoveExternalLogins
    {
        get;
        private set;
    }

    //private bool HasPassword(UserManager manager)
    //{
    //    var user = manager.FindById(User.Identity.GetUserId());
    //    return (user != null && user.PasswordHash != null);
    //}

    protected void Page_Load()
    {
        //if (!IsPostBack)
        //{
        //    // Determine the sections to render
        //    UserManager manager = new UserManager();
        //    if (HasPassword(manager))
        //    {
        //        changePasswordHolder.Visible = true;
        //    }
        //    else
        //    {
        //        setPassword.Visible = true;
        //        changePasswordHolder.Visible = false;
        //    }
        //    CanRemoveExternalLogins = manager.GetLogins(User.Identity.GetUserId()).Count() > 1;

        //    // Render success message
        //    var message = Request.QueryString["m"];
        //    if (message != null)
        //    {
        //        // Strip the query string from action
        //        Form.Action = ResolveUrl("~/Account/Manage");

        //        SuccessMessage =
        //            message == "ChangePwdSuccess" ? "Your password has been changed."
        //            : message == "SetPwdSuccess" ? "Your password has been set."
        //            : message == "RemoveLoginSuccess" ? "The account was removed."
        //            : String.Empty;
        //        SuccessMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
        //    }
        //}
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        //if (IsValid)
        //{
        //    UserManager manager = new UserManager();
        //    IdentityResult result = manager.ChangePassword(User.Identity.GetUserId(), CurrentPassword.Text, NewPassword.Text);
        //    if (result.Succeeded)
        //    {
        //        var user = manager.FindById(User.Identity.GetUserId());
        //        IdentityHelper.SignIn(manager, user, isPersistent: false);
        //        Response.Redirect("~/Account/Manage?m=ChangePwdSuccess");
        //    }
        //    else
        //    {
        //        AddErrors(result);
        //    }
        //}
    }

    protected void SetPassword_Click(object sender, EventArgs e)
    {
    //    if (IsValid)
    //    {
    //        // Create the local login info and link the local account to the user
    //        UserManager manager = new UserManager();
    //        IdentityResult result = manager.AddPassword(User.Identity.GetUserId(), password.Text);
    //        if (result.Succeeded)
    //        {
    //            Response.Redirect("~/Account/Manage?m=SetPwdSuccess");
    //        }
    //        else
    //        {
    //            AddErrors(result);
    //        }
    //    }
    }

    //public IEnumerable<UserLoginInfo> GetLogins()
    //{
        //UserManager manager = new UserManager();
        //var accounts = manager.GetLogins(User.Identity.GetUserId());
        //CanRemoveExternalLogins = accounts.Count() > 1 || HasPassword(manager);
        //return accounts;
    //}

    public void RemoveLogin(string loginProvider, string providerKey)
    {
        //UserManager manager = new UserManager();
        //var result = manager.RemoveLogin(User.Identity.GetUserId(), new UserLoginInfo(loginProvider, providerKey));
        //string msg = String.Empty;
        //if (result.Succeeded)
        //{
        //    var user = manager.FindById(User.Identity.GetUserId());
        //    IdentityHelper.SignIn(manager, user, isPersistent: false);
        //    msg = "?m=RemoveLoginSuccess";
        //}
        //Response.Redirect("~/Account/Manage" + msg);
    }

    private void AddErrors(IdentityResult result)
    {
        foreach (var error in result.Errors)
        {
            ModelState.AddModelError("", error);
        }
    }
}


**openauthproviders

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OpenAuthProviders.ascx.cs" Inherits="OpenAuthProviders" %>

<div id="socialLoginList">
    <h4>Use another service to log in.</h4>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Log in using your <%#: Item %> account.">
                    <%#: Item %>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                <p>There are no external authentication services configured. See <a href="https://go.microsoft.com/fwlink/?LinkId=252803">this article</a> for details on setting up this ASP.NET application to support logging in via external services.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>

using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;


public partial class OpenAuthProviders : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //{
        //    var provider = Request.Form["provider"];
        //    if (provider == null)
        //    {
        //        return;
        //    }
        //    // Request a redirect to the external login provider
        //    string redirectUrl = ResolveUrl(String.Format(CultureInfo.InvariantCulture, "~/Account/RegisterExternalLogin?{0}={1}&returnUrl={2}", IdentityHelper.ProviderNameKey, provider, ReturnUrl));
        //    var properties = new AuthenticationProperties() { RedirectUri = redirectUrl };
        //    // Add xsrf verification when linking accounts
        //    if (Context.User.Identity.IsAuthenticated)
        //    {
        //        properties.Dictionary[IdentityHelper.XsrfKey] = Context.User.Identity.GetUserId();
        //    }
        //    Context.GetOwinContext().Authentication.Challenge(properties, provider);
        //    Response.StatusCode = 401;
        //    Response.End();
        //}
    }

    public string ReturnUrl { get; set; }

    //public IEnumerable<string> GetProviderNames()
    //{
    //    //return Context.GetOwinContext().Authentication.GetExternalAuthenticationTypes().Select(t => t.AuthenticationType);
    //}
}



//Screen A (Main Dishes)

-showcase seasonal item (Pics,Price, and description)

//Screen B  (About)

About 

Mission 

<section class="about">
            <div class="container">
               
 <center><img src="images/ajslogo.png" alt="logo" style="width:250px;height:250px;" /></center>

  <br />
                <center><h4>About AJ's Sweets</h4></center>
<br />

<center><h4>AJ's Sweets Mission</h4></center>

//Screen C (Contact Us)


<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits=".Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  

     <center><img src="images/ajslogo.png" alt="company logo" style="width:250px;height:250px;" /></center>
    <h2>Contact Us</h2>
               <br />
   <address>
        <abbr title="Phone">P:</abbr>
            404-222-2222
       <br />
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
          <br />
                <hr />
       
<h4>Location:</h4>
        "We are located in the Stone Mountain area of Alanta, Georgia."
               <br />
 <address>
           AJ's Sweets<br />
		   123 Treats Rd., Atlanta, GA 30080<br />           
        </address>
                <hr />
               <br />            
            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d12234.543958929013!2d-75.16621169999999!3d39.94953124999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s39.57.09%2C75.10.14.8!5e0!3m2!1sen!2sus!4v1723056453703!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
     <br />
            <a href="#" class="btn btn-primary">Directions</a>
            <a href="https://google.com/maps?q=39.57.09,75.10.14.8"></a>
        

    </asp:Content>



//Main Items/Featured Item 

  <small></small>
<span class="text-success">−$10</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$50</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="">
            <button type="submit" class="btn btn-secondary"></button>
          </div>
        </form>
      </div>
        <br />

  <asp:Image ID="" runat="server" ImageUrl="~/images/.jpg" class="img"  BorderColor="" BorderStyle="Solid" BorderWidth="1px" Height="150px" style="margin-top: 5px" Width="150px" />
             
			

 
//Menu with Price and Description. Order button

<div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">First name</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">Username</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Address 2 <span class="text-body-secondary">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" id="country" required>
                <option value="">Choose...</option>
                <option>United States</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" required>
                <option value="">Choose...</option>
                              <option>Alaska</option>
                               <option>Arizona</option>
                               <option>Arkansas</option>
                               <option>California</option>
                               <option>Colorado</option>
                               <option>Connecticut</option>
                               <option>Delaware</option>
                               <option>Florida</option>
                               <option>Georgia</option>
                               <option>Hawaii</option>
                               <option>Idaho</option>
                               <option>Illinois</option>
                               <option>Indiana</option>
                               <option>Iowa</option>
                               <option>Kansas</option>
                               <option>Kentucky</option>
                               <option>Louisiana</option>
                               <option>Maine</option>
                               <option>Maryland</option>
                               <option>Massachusetts</option>
                               <option>Michigan</option>
                               <option>Minnesota</option>
                               <option>Mississippi</option>
                               <option>Missouri</option>
                               <option>Montana</option>
                               <option>Nebraska</option>
                               <option>Nevada</option>
                               <option>New Hampshire</option>
                               <option>New Jersey</option>
                               <option>New Mexico</option>
                               <option>New York</option>
                               <option>North Carolina</option>
                               <option>North Dakota</option>
                               <option>Ohio</option>
                               <option>Oklahoma</option>
                               <option>Oregon</option>
                               <option>Pennsylvania</option>
                               <option>Rhode Island</option>
                               <option>South Carolina</option>
                               <option>South Dakota</option>
                               <option>Tennessee</option>
                               <option>Texas</option>
                               <option>Utah</option>
                               <option>Vermont</option>
                               <option>Virginia</option>
                               <option>Washington</option>
                               <option>West Virginia</option>
                               <option>Wisconsin</option>
                               <option>Wyoming</option>

              </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-body-secondary">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
  </main>
    <br />
    <div>
            <a href="Home.aspx"><< Back to Home</a><br />
        </div>
    <br />
  <footer class="my-5 pt-5 text-body-secondary text-center text-small">
    <p class="mb-1">&copy; 2024 Lo Stylz Hair Salon</p>
    <ul class="list-inline">
        <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="checkout.js"></script></body>
</html>




//Checkout.js 


			// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

//checkout.css

.container {
  max-width: 960px;
}


//checkout/book html page

<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Omega Fullard, Web Designer">
    <meta name="generator" content="">
    <title>Checkout</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="checkout.css" rel="stylesheet">
  </head>
  <body class="bg-body-tertiary">
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

    
<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>Checkout form</h2>
      <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Product name</h6>
              <small class="text-body-secondary">Brief description</small>
            </div>
            <span class="text-body-secondary">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Second product</h6>
              <small class="text-body-secondary">Brief description</small>
            </div>
            <span class="text-body-secondary">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Third item</h6>
              <small class="text-body-secondary">Brief description</small>
            </div>
            <span class="text-body-secondary">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-body-tertiary">
            <div class="text-success">
              <h6 class="my-0">Promo code</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">−$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$20</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">First name</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">Username</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Address 2 <span class="text-body-secondary">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" id="country" required>
                <option value="">Choose...</option>
                <option>United States</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" required>
                <option value="">Choose...</option>
                <option>California</option>
              </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-body-secondary">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-body-secondary text-center text-small">
  

    <p class="mb-1">&copy;2008- AJ's Sweets</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="checkout.js"></script></body>
</html>


<div class="row">
                     <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="English" Value="English" />
							   <asp:ListItem Text="French" Value="French" />
                              <asp:ListItem Text="German" Value="German" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Mandarin" Value="Mandarin" />
                              <asp:ListItem Text="Spanish" Value="Spanish" />
                             
                           </asp:DropDownList>
                        </div>
						
						
//Order Date (calendar picker)			

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
              
 <div>
        <h3>Availability</h3>
        </div>
<div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
	
	   </div>
        </asp:content>