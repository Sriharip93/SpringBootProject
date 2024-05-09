<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display:flex;
            flex-direction:column;
        }

        #wrapper {


 background-image: url('https://media.istockphoto.com/id/1373429167/photo/cyber-security-on-smart-phone-cyber-attack-block-concept.jpg?s=1024x1024&w=is&k=20&c=F28D1OVZULX7Homn8H5rZtGHuclmYSBaVQPH9oI9rTs=');
    background-repeat: no-repeat; /* Choose from repeat, repeat-x, repeat-y, or no-repeat */
    background-position: center center; /* Adjust position as needed */
    background-size: cover; /* Adjust sizing as needed (cover, contain, or specific dimensions) */
    background-attachment: fixed; /* Choose between fixed or scroll */


            display:flex;
            flex-direction: column;
            width: 100%;
            min-height: 100px;
            margin: auto;
            
        }

        #header {
            display: flex;
            flex-direction: row;
            width: 100%;
            flex-basis: 75px;
            line-height: 100px;
            font-size: 16px;
            padding-left: 4px;
            justify-content: center;
            text-align: center;
            box-shadow: 3px 3px 7px rgb(17, 29, 31);
            background-image: linear-gradient(45deg, #93a5cf 0%, #e4efe9 100%);
        }

        #boxes {
            display: flex;
            flex-direction: row;
            width: 100%;
            min-height: 500px;
            margin-top: 10px;
            justify-content: space-between;
        }

        .box {
            display: flex;
            flex-direction: row;
            flex-basis: 33%;
            justify-content: center;
            align-items: center;
background-image: radial-gradient( circle 1292px at -13.6% 51.7%,  rgba(0,56,68,1) 0%, rgba(163,217,185,1) 51.5%, rgba(255,252,247,1) 88.6% );
box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;
        }

        .box3 {
            display: flex;
            flex-direction: row;
            flex-basis: 33%;
            justify-content: center;
            align-items: center;
        }

        .box1 {
            display: flex;
            flex-direction: row;
            flex-basis: 33%;
            justify-content: center;
            align-items: center;
        }

        #foot {
            display: flex;
            flex-direction: row;
            width: 100%;
            flex-basis: 75px;
            margin-top: 10px;
            justify-content: center;
            align-items: center;
            box-shadow: -2px -3px 6px rgb(17, 29, 31);
            background-image: linear-gradient(45deg, #93a5cf 0%, #e4efe9 100%);
        }

        a {
            display: flex;
            flex-direction:column;
            background: lightgreen;
            background: linear-gradient(#9c6d4a, #48bfcf);
            text-decoration: none;
           
            margin-bottom: 15px;
            width: 300px;
            padding: 16px;
            border-radius: 20px;
            text-align: center;
            font-size: 20px;
            color: black;
            box-shadow: 3px 3px 4px 2px rgb(66, 69, 60);
        }

        a:hover {
            background: linear-gradient(rgb(38, 167, 55), rgb(53, 114, 53));
        }

        #lay {

                   

            width: 29%;
            background-origin: content-box;
            
            border-radius: 9px;
           
           
            box-shadow: 0px 1px 1px 2px rgb(56, 58, 59);
        }

        h1 {
            font-family: Verdana;
            background: linear-gradient(#056f8a, #1e1205);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        /* Custom style for anchor tags (links) */
        a.login {
            color: blue; /* Change this to your desired color */
        }
    </style>
</head>
<body>
    <div id="wrapper">
        <div id="header">
           <h1 style="color: blue; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">Angle Print</h1>

        </div>
        <div id="boxes">
            <div class="box1"></div>
            <div id="lay" class="box">
                <form action="">
                    <!-- Added class "login" to the login link -->
                    <a href="login" class="login">Login</a>
                    <a href="reset">Reset Password</a>
                    <a href="forgotPassword">Forgot Password</a>
                </form>
            </div>
            <div class="box3"></div>
        </div>
        <div id="foot"></div>
    </div>
</body>
</html>
