<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard Management Login</title>
  <link rel="stylesheet" href="styles.css">
  
  <style>
 body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0; 
}

header {
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 20px 0;
}

.login-container {
  max-width: 400px;
  margin: 50px auto;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.input-container {
  margin-bottom: 15px;
}

label {
  display: block;
  font-weight: bold;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  display: block;
  width: 100%;
  padding: 10px;
  background-image: linear-gradient(to right, #4e73df, #224abe);
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-image: linear-gradient(to right, #3b5bdb, #1e3799);
}
 
  
  
  </style>
  
</head>
<body>
  <header>
    <h1>Dashboard Management Login</h1>
  </header>
  
  <div class="login-container">
    <form  action="SudoAminlogin" method="post">
      <div class="input-container">
        <label for="login-id">Login Id</label>
        <input type="text" id="login-id" name="loginId" required>
      </div>
      <div class="input-container">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <button type="submit">Login</button>
    </form>
  </div>
</body>
</html>
