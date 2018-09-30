<%-- 
    Document   : newjsp
    Created on : Sep 30, 2018, 2:52:09 PM
    Author     : Jesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" type="text/css" href="web.css"> 
        <script src="https://www.gstatic.com/firebasejs/5.5.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB3tgflnOWGhR0EVvjW6ldubM6vSdNqBFE",
    authDomain: "premium-origin-217008.firebaseapp.com",
    databaseURL: "https://premium-origin-217008.firebaseio.com",
    projectId: "premium-origin-217008",
    storageBucket: "premium-origin-217008.appspot.com",
    messagingSenderId: "1538681596"
  };
  firebase.initializeApp(config);
</script>
<script src="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>
       
        
    </head>
    
    <body>
               <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

        
       <script>  
   firebase.auth().onAuthStateChanged(function(user){
    if(user) {
        $("#logout").click(function(){firebase.auth().signOut().then(function() {
 window.alert("Log out successfully"); 
 window.location.href="../index.jsp";
}).catch(function(error) {
});});
    }else{
        window.location.herf="../index.jsp";
   }});
 
</script>

     <h1><div class="box"><div class="leftbox"><div class="h1"><strong>HRS</strong>
         </div>
         <div class="table">
         <table>
          <tr>
              <td><a href="Homepage.jsp">Homepage</a></td>
          </tr>
             <tr>
                 <td><a href="Makeappointment.html">Make appointment</a></td>
             </tr>
             <tr>
                 <td><a href="Myappointment.html">My appointment</a></td>
             </tr>
             <tr>
                 <td><a href="Profile.jsp">Setting</a></td>
             </tr>
         </table></div>
        <div class="h2"><button id="logout" class="LogOutBt">Log out</button></div>
         
         </div>
         
         <div class="right" >Setting
            
             <div class="text"><div class="column"></div><div class="column"><div class="h3">First Name</div><input type="text" placeholder="Your First name" style="height: 30px;">
                 <div class="h3">Phone</div><input type="text" placeholder="000-000-0000" style="height: 30px;"></div>
                 <div class="column"><div class="h3">Last Name</div><input type="text" placeholder="Your Last name" style="height: 30px;">
                 <div class="h3">Phone alt</div><input type="text" placeholder="000-000-0000" style="height: 30px;">
                 </div>
                 <br>
                 <div class="column1"><div class="h3">Street address</div><input type="text" placeholder="Your street address" style="width: 350px; height: 30px;"></div>
                 <div class="column2">City<input type="text" placeholder="Sydney" style="height: 30px;"></div><div class="column2">State<input type="text" placeholder="NSW" style="height: 30px;"><select class="State" name="State" style="height: 30px;"></select></div>
                 <div class="column2">Zip<input type="text" style="height: 30px;"></div>
               
            </div>
             <button class="SaveBt">Save</button>
         </div>
        </div>
      </h1>
       
<script>
     loginUser = firebase.auth().currentUser;
</script>
  </body>
</html>
