<html>
    <head>
    <style>
        body{
            position:fixed;
            background-image:url("image/bg.gif");
            height: 100%;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
            font-family: Arial, Helvetica, sans-serif;
        }


         h1
         {      
             color:rgb(250, 241, 241);
             font-family: 'Courier New', Courier, monospace;
         }
         .to
         {      padding-left:35px;
             color:rgb(245, 234, 234);
             font-family: 'Courier New', Courier, monospace;
         }
         .but{
            margin-right: 100px;
            margin-top: -100px;      
            clear: both;
            height: 50px; 
            width:190px; 
            font-family:Georgia, 'Times New Roman', Times, serif;
            float:right;
            border: none;
            background-color:rgb(105, 33, 33);
            color: aliceblue;
            cursor: pointer;
         }


input[type=text], input[type=email], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
    background-color:rgb(105, 33, 33);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.container {
  padding: 16px;
  margin-top: 10px;
  
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color:transparent;
  background-color: rgba(0,0,0, 0.4);
  color:white;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 60%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	float:right;
  	right: 25px;
  	margin-right:15px;
  	top: 0;
  	color: #000;
  	font-size: 35px;	
  	font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}
.login{
    font-size: 20px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
.h{
text-align: center;
}
    </style>
</head>
    <body>
        <div>
                <h1 class="h">Regnant Chess Championship!!!</h1>
                <h1 class="h">Chess is a war over the board. The object is to crush the opponents mind. </h1>
                <h1>TOURNAMENT DATES</h1>
                <h1>From : 20-feb-2019 </h1>
                <h1 class="to">To : 28-feb-2019</h1>
                <button class="but" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">REGISTER SOLDIERS</button><br><br><br>
                <button class="but" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">LOGIN</button>
            </div>
	<div id="id01" class="modal">
  <form class="modal-content animate" action="sucess">
      <div class="imgcontainer">
          <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
      </div>

      <div class="container">
          <label><b>User Name</b></label>
          <input type="text" placeholder="UserName" name="name" required>
			<label><b>Email id</b></label>
          <input type="email" placeholder="Email id" name="email" required>
          
            <label><b>Phone Number</b></label>
          <input type="text" placeholder="Phone Number" name="mobile" required>
          
          <label><b>password</b></label>
          <input type="password" placeholder="password" name="password" required>
      
          <button type="submit" class="login">SUBMIT</button>
          
          </div>

      
  </form>
</div>


<div id="id02" class="modal">
  <form class="modal-content animate" action="Login" method="get">
      <div class="imgcontainer">
          <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">×</span>
      </div>

      <div class="container">
                <label><b>Email id</b></label>
                
          <input type="email" placeholder="Email id" name="email" required>
          
          <label><b>password</b></label>
          <input type="password" placeholder="password" name="password" required>
      
          <button type="submit" class="login">SUBMIT</button>
          <br>
		  <a href="home?task=forgot">FORGOTPASSWORD</a>
          </div>
     	  <!-- <a href="view/forgetpassword.jsp">FORGOTPASSWORD</a> -->  
      
  </form>
</div>



<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
      if (event.target == modal) {
              modal.style.display = "none";
      }
}


var login = document.getElementById('id02');

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
   if (event.target == login) {
           modal.style.display = "none";
   }
}

</script>

       
    </body>
</html>