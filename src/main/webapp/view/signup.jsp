<%-- 
    Document   : signup
    Created on : Sep 1, 2018, 1:44:02 AM
    Author     : Jesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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
  var database = firebase.database();
</script>

<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    </head>
    <body background="../images/login.jpeg">

 <a href="../index.jsp">
       <img src="../images/logo.png" width="10%" height="px">
       </a>

        <div style="width: 500px;
margin-left: auto; margin-right: auto; margin-top: 10%; margin-bottom: auto; text-align: center;
">
            <div style="height:60px; line-height: 60px; font-family:verdana; font-size:120%; color: white; background-color: #1D6DF1;">Sign up</div>
            <form style="background-color: white; height:950px; padding: 60px;">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input id="loginEmail" type="email" class="form-control" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input id="loginPassword" type="password"class="form-control" placeholder="Password">
  </div>
                <div class="form-group">
    <label for="NAME">Last Name</label>
    <input id="lname" type="text"class="form-control" placeholder="Last Name">
  </div>
                <div class="form-group">
  <label for="NAME">First Name</label>
    <input id="fname" type="text"class="form-control" placeholder="First Name">
  </div>
                 <div class="form-group">
  <label for="phone">Contact Number</label>
    <input id="number" type="text"class="form-control" placeholder="Phone Number">
  </div>
                <br/>
                <label class="radio-inline">
  <input type="radio" name="gender" id="sex1" value="male" checked="checked"> Male


  <input type="radio" name="gender" id="sex2" value="female"> Female
</label>
                <br/>
                <br/>
   <div class="form-group">
    <label for="DOB">Date Of Birth</label>
    <input id="DOB" type="text"class="form-control" placeholder="01/01/1900">
  </div>
               
                <br/>
                <br/>
                <center><input type =“button” value="Sign up" class="btn btn-primary" onclick="signup()"></center>
                <br />
                <br />
                <div class="help-block">Already have an account.</div><a href='login.jsp'>Log in</a>
                </form>
</div>

<script>
  $( function() {
    $( "#DOB" ).datepicker();
  } );
  </script>
  
<script>
    function signup(){
                      var useremail = $("#loginEmail").val();
                      var userpassword = $("#loginPassword").val();
                      var lastname = $("#lname").val();
                      var firstname = $("#fname").val();
                      var num = $("#number").val();
                      var gender = $("input:radio[name='gender']:checked").val();
                      var dob = $("#DOB").val();
    firebase.auth().createUserWithEmailAndPassword(useremail, userpassword).catch(function(error) {
 
  var errorCode = error.code;
  var errorMessage = error.message;
  window.alert("Error: " + errorMessage);
    });
    
  firebase.auth().onAuthStateChanged(function(user){
    if(user) {
        firebase.database().ref('Users/'+user.uid).set({
    Email: useremail,
    Password: userpassword,
    Lastname: lastname,
    Firstname: firstname,
    PhoneNum: num,
    Gender: gender,
    DOB: dob
    
  });   
     window.alert("Sign up successfully");
  window.location.href='vetify.jsp';

 }
  
});}


</script>
        
    </body>
</html>
