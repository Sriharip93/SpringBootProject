
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
        $(document).ready(function () {
            $('.nav ol li:first').addClass('active');
            $('.tab-content:not(:first)').hide();
            $('.nav ol li a').click(function (event) {
                event.preventDefault();
                var content = $(this).attr('href');
                $(this).parent().addClass('active');
                $(this).parent().siblings().removeClass('active');
                $(content).show();
                $(content).siblings('.tab-content').hide();
            });
        });
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        *{
          margin: 0;
          padding: 0;
          font-family: 'poppins',sans-serif;
        }
 
.nav ol{
    position: relative;
   width: 100%;
    display: block;
}
.nav ol li{
   width: 100%;
   text-align: left;
   position: relative;
   margin-top: 20px;
   font-size: larger;
  
  
}
.nav ol li a{
    display: block;
    text-transform: capitalize;
    font-size: 20px;
    padding: 5px 30px;
    margin:10px 0;
    text-decoration: none;
    margin-top: 20px;
    color: black;
}
.nav ol li:hover{
  background: #678ce4;
}
.nav ol li:hover::before{
position: absolute;
content: '';
height: 30px;
width: 30px;
background:#0078de;
right: 0;
bottom: 100%;
border-bottom-right-radius: 13px;
box-shadow: 0 17px 0  #678ce4;
}
.nav ol li:hover:after{
    position: absolute;
    content: '';
    height: 30px;
    width: 30px;
    background: #0078de;
    right: 0;
    top: 100%;
    border-top-right-radius: 13px;
    box-shadow: 0 -17px 0  #678ce4;
    }
     .tab-content{
            
            position: relative;
            margin-left: 800px;
           font: 500;
            color: rgb(250, 254, 255);
            margin-top: 300px;
            border-left: 5px solid  #789649 ;
           
           
        }
        .header{
            background: rgb(73, 61, 53);
            border: 1px solid black;
            border-radius: 10px;
            box-shadow: 2px 2px 4px 2px rgb(47, 49, 55);
            height: 120px;
            width: 100%;
           background-image: url(header3.jpg);
            

           
           }
           #a{
            margin-top: 50px;
            margin-left: 600px;
            color: rgb(84, 184, 209);
            font-weight: 3px;
            size: 30px;
            text-decoration-color: aquamarine;
            text-shadow: 2px rgb(228, 249, 250);
            position: relative;
            font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif

           
            
           }
           #b{
            margin-left: 580px;
            color: rgba(239, 238, 238, 0.92);
            font-weight: 10px;
            padding: 10px;
           }
           #first{
            margin-top: 70px;
           }
        
           body{
           background-position: 100%;
            background-repeat: no-repeat;
            background: #678ce4;
           
            
           }
           .img{
            position: absolute;
            width: 180;
            height: 120px;
           float: left;
           
            
           }
           .fa-brands{
            margin-right: 10px;
           color:  rgb(73, 61, 53);
           
           }
           .fa-solid{
            margin-right: 10px;
            color: rgb(73, 61, 53);
           }
           
          
    </style>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="header">
        <img class="img" src="logo1.png" alt="">
        <h1 id="a">Angle print</h1>
        <ol>
         <li  id="first"><a href="#1"><i class="fa-solid fa-truck-fast"><span> </span></i>Shipping</a></li>
        </ol>
       
    
     </div>
           
   
   <div id="bg">
            <div id="1" class="tab-content">
                <h2>Shipping</h2>
            </div>
</div>
   <div class="footer">
    
   </div>
   
        
       
      
</body>
</html>