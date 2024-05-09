<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Inventory Management</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to right, #743647, #333); /* Double color gradient */
  }
  .header {
    background-color: #333;
    color: #fff;
    padding: 20px;
    text-align: center;
  }
  .button {
    background-color: red; /* Green */
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    border-radius: 5px;
  }
  .button:hover {
    background-color: Green ; /* Darker Green */
  }
  .header-nav {
    text-align: center;
    padding: 10px;
    background-color: #4hg342; /* Light Grey */
    font-family: Arial, sans-serif;
  }
  .header-nav a {
    color: white;
    text-decoration: none;
    margin: 0 10px;
    font-weight: bold;
    padding: 12px 16px;
    border-radius: 8px;
   
    box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.9); /* Shadow */
    transition-duration: 0.3s;
    font-size: 18px; /* Larger font size */
  }
  .header-nav a:hover {
    box-shadow: 4px 4px 16px rgba(0, 0, 0, 0.2); /* Shadow on hover */
  }
</style>
</head>
<body>

<div class="header">
  <h1>Inventory Management</h1>
</div>

<div class="header-nav">
  
  <a href="/inventorylist">ItemCategory</a>
  
  <a href="/itemlist">Item</a>
  <a href="#">Stock</a>
<a href="/DashboardLogin" class="button">Log Out</a>

</div>


</body>
</html>
