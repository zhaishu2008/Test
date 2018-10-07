<%--
    Document   : MakeappointmentDepart
    Created on : Oct 1, 2018, 11:21:25 PM
    Author     : Jesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" type="text/css" href="web.css">
 
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://www.gstatic.com/firebasejs/5.5.2/firebase.js"></script>
<!-- Firebase App is always required and must be first -->
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-app.js"></script>

<!-- Add additional services that you want to use -->
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-functions.js"></script>

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="dateCss/default.css" id="theme_base">

<link rel="stylesheet" href="dateCss/default.date.css" id="theme_date">

<link rel="stylesheet" href="dateCss/default.time.css" id="theme_time">

<script src="../lib/picker.js"></script>

    <script src="../lib/picker.date.js"></script>

    <script src="../lib/picker.time.js"></script>


    </head>
    <body>
        


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
             <td><a href="Profile.jsp">My Profile</a></td>
         </tr>
         <tr>
             <td><a href="MakeappointmentHome.jsp">Make appointment</a>
         </tr>
         <tr>
             <td><a href="Myappointment.jsp">My appointment</a></td>
         </tr>
    </table></div>
            <br>
   <div class="h2"><button id="logout" class="LogOutBt">Log out</button></div>

    </div>
    <div class="right" >
        <div class="boxleft">Booking Now
            <div class="text"><br><br><div class="h3"><a href="MakeappointmentDepart.jsp">Select Department</a></div>
          <br>
          <div class="h3"><a href="MakeappointmentDoctor.jsp">Select Doctor</a></div>
          <br>
          <div class="h3"><a href="MakeappointmentHome.jsp">Select Time</a></div>
        </div></div>
        <div class="boxright">
           
           <div> 
           <p class="h6" >Date</p >
  <input id="Date" class="input2" placeholder="DD/MM/yyyy">
  
</div>
            <br>

            
            <div>
   <p class="h6">Time</p >
  <input id="Time" class="input2" placeholder="00:00 AM/PM">
           <br>
            <div class="h2"><button id="comfirm" class="LogOutBt">Comfirm</button></div>
           <br>
          
</div>
           
            
            
        </div>
    </div>

   </div>
 </h1>

<script>
    var $input = $("#Date").pickadate({min: new Date(2018,10,2)});
     var $input = $("#Time").pickatime({
   min: [9,0],
  max: [17,0]
});

$("#comfirm").click(function(){
    var appointmentRef = firebase.database().ref('/Appointments:/' + loginUser.uid);
    postRef.push().set({
    uid: loginUser.uid,
    title: postTitle.value,
    content:postContent.value,
    age:parseInt(postLimitAge.value)
  }).then(function(){
    console.log("新增Post成功");
  }).catch(function(err){
    console.error("新增Post錯誤：",err);
  });
});


  </script>

    </body>
</html>
