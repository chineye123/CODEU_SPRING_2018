<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="/css/main.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

            <meta name="google-signin-client_id" content="1048856689894-l74tkon6ne6pn6c45i6le89o42m1n0bd.apps.googleusercontent.com">

            <script src="https://apis.google.com/js/platform.js" async defer></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

            <script src="/js/script.js"></script>

</head>
<body>

   <nav>
    <a id="navTitle" href="/">Yada-Yada</a>

    <span class="navicons" style="text-align: right; margin-left:60%">
      <a href="/conversations"><i class="fas fa-comments"></i></a>
      <% if(request.getSession().getAttribute("user") != null){ %>
      <a>Hello <%= request.getSession().getAttribute("user") %>!</a>
      <% } else{ %>
      <a href="/login"><i class="fas fa-sign-in-alt"></i></button></a>
      <% } %>
      <a href="/about.jsp"><i class="fas fa-user"></i></a>
    </span>

  </nav>s

  <div id="container">

    <div id="RegCon" style="margin-left: 40%">

    <span style="font-size: 60px;">Register</span>

    

    <form action="/register" method="POST" id="regForm">

      <label for="username" style="font-family:Roboto; margin-top: 30px;">Username: </label>
      <br>
      <input type="text" name="username" id="username" style="width: 200px; height: 40px;">
      <br>
      <label for="password" style="margin-top: 20px;font-family:Roboto;">Password: </label>
      <br>
      <input type="password" name="password" id="password" style="width: 200px; height: 40px;">
      <br><br>

      <div><a href="/register">

      <button id="regButton" type="submit">Register</button>


       <!--Google Sign/Register In Button-->
        <div name="" type="submit" name="" class="g-signin2" href="/register" data-onsuccess="onSignIn" style="margin-left: 0px; width: 200%">
        </div>

    <% if(request.getAttribute("error") != null){ %>
        <h2 style="color:red"><%= request.getAttribute("error") %></h2>


    <% } %>
  </div>
  </form>

</div>
</div>
</body>
</html>

