<!DOCTYPE html>
	<htm>
	  <head>
	    <meta charset="utf-8"/>
	    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
	    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
	    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;500&display=swap" rel="stylesheet">

	    <title>Quiz App</title>
	    <style>
	      body{
	        margin:0px;
	        padding:0px;
	       background: linear-gradient(90deg, rgba(151,157,177,1) 43%, rgba(255,255,255,1) 100%);
	        height: 100%;
	        width: 100%;
	      }
	      .quiz-app{
	        margin: 8px auto;
	        height: 560px;
	        width: 330px;
	        background-color:#252C4A;
	        border-style: solid;
	        border-width: 18px;
	        border-color:#282B49;
	        border-radius: 30px;
	      }
	      #code{
	        margin-left: 90px;
	        font-family: 'Montserrat', sans-serif;
	        font-weight: 400;
	        color:#BFBFBF;
	      }
	      .time-bar{
	        margin:30px auto;
	        width: 300px;
	        height:30px;
	        border-style: solid;
	        border-width: 2px;
	        border-radius: 30px;
	        border-color: #41476A;
	        background-color:#252C4A;
	      }
	      .time-left{
	        width: 300px;
	        height:30px;
	        border-style: none;
	        border-radius: 30px;
	        border-color: rgb(250,81,113);
	        background-color: rgb(250,81,113);
	

	        
	      }
	      .time{
	        font-family: 'Montserrat', sans-serif;
	        font-weight: 400;
	        color:white;
	        text-align: center;
	      }
	      .q-text{
	        color:#8E97BD;
	        text-align: left;
	        margin-left:20px;
	        margin-top: 30px;
	         font-family: 'Montserrat', sans-serif;
	        font-weight: 900;
	        font-size: 20px;
	      }
	      #question{
	         font-family: 'Montserrat', sans-serif;
	        font-weight: 900;
	        font-size: 20px;
	        color:white;
	        padding:10px 20px 10px 20px;
	

	      }
	      .btn{
	        width: 250px;
	        height: 50px;
	        margin-bottom: 10px;
	        margin-left: 40px;
	         font-family: 'Montserrat', sans-serif;
	        font-weight: 400;
	        font-size: 15px;
	        border-style: solid;
	        border-width: 3px;
	        border-radius: 20px;
	        background-color:transparent;
	        color:white;
	        border-color: #254567;
	        outline:none;
	        
	        
	      }
	      .btn:hover{
	        background: linear-gradient(90deg, rgba(250,81,113,1) 46%, rgba(250,81,113,1) 50%, rgba(37,44,74,1) 100%);
	        
	      }
	      #next{
	        padding: 15px 40px 15px 40px;
	          font-family: 'Montserrat', sans-serif;
	        font-weight: 900;
	        font-size: 15px;
	        border-style: solid;
	        border-width: 3px;
	        border-radius: 30px;
	        background-color:#117EEB;
	        color:white;
	        border-color: #117EEB;
	        margin-left: 100px;
	        margin-top: 10px;
	        outline:none;
	

	

	      }
	      #next:hover{
	        background-color: white;
	        color:#117EEB;
	        border-color:white;
	      }
	      #dots{
	        color:#8E97BD;
	        margin-left: 20px;
	        margin-top: -20px;
	      }
	      .il{
	        color:white;
	        font-size: 100px;
	        margin-top:130px;
	        margin-left: 110px;
	      }
	      .app{
	        font-family: 'Montserrat', sans-serif;
	        font-weight: 900;
	        font-size: 35px;
	        color:white;
	        text-align: center;
	

	      }
	      
	      
	    </style>
	  </head>
	  <body>
	    <div class="main-div">
	        <div class="quiz-app">
	        <div class="start" id="start" style="display: block;">
	        <img src="https://th.bing.com/th/id/OIP.gotPR8KQ13csm85MPFXZ6wHaHa?pid=Api&rs=1" height="120px" width="120px" class="il"/>
	        <h1 class="app">Quiz App</h1>
	        <p id="code">&copy; Code by FARHAN</p>
	        </div>
	          <div class="quiz" id="quiz-secreen" style="display:none;">          
	            <div class="time-bar">
	            <div class="time-left" id="timeLeft">
	            
	            </div>
	          </div>
	          <div class="question-no">
	            <h3 class="q-text">Questions<span id="currentQuestion"> 1</span> / <span id="totalQuestions"> 10</span></h3>
	            <h3 id="dots">.............................................................</h3>
	       </div>
	          <div class="qus">
	            <h1 id="question">Who is the first child of the john doe?</h1>
	

	          </div>
	          <div class="choices">
	            <button class="btn" id="opt1">Mark Angel</button>
	            <button class="btn" id="opt2">Mark Angel</button>
	            <button class="btn" id="opt3">Mark Angel</button>
                <button class="btn" id="opt4">Mark Angel</button>
	          </div>
	          <div class="next-btn">
	            <button id="next">Next</button>
	          </div>
	        </div>
	        <div class="result" id="resultSecreen" style="display: none;">
	           <img src="https://i.pinimg.com/236x/64/16/7c/64167ca1d8ae422ce38a9135600652d8--grandparents-grandchildren.jpg" height="120px" width="120px" class="il"/>
	        <h1 class="app"> Score : <span id="score">6</span></h1>
	        <p id="code">&copy; Code by FARHAN</p>
	

	

	        </div>
	        </div>
	    </div>
	    <script> 
	    var currentQuestion=0;
	    var totalScore=0;
	    var cQuestion=document.getElementById('currentQuestion');
	    var totalQuestions=document.getElementById('totalQuestions');
	    var splashSecreen=document.getElementById('start');
	    var quizScreen=document.getElementById('quiz-secreen');
	    var x=0;
	    var resultSecreen=document.getElementById('resultSecreen');
	    var timeLeft=document.getElementById('timeLeft');
	    var score=document.getElementById('score');
	    var question=document.getElementById('question');
	    var opt1=document.getElementById('opt1');
	    var opt2=document.getElementById('opt2');
	    var opt3=document.getElementById('opt3');
	    var opt4=document.getElementById('opt4');
	    var btn=document.getElementsByClassName('btn');
	    var next=document.getElementById('next');
	    var quizQuestions=[
	      {
	        question:"What becomes wetter the more it dries? ",
	        choice1:"Towel",
	        choice2:"Hands",
	        choice3:"Shirt",
	        choice4:"Paper",
	        ans:"Towel",
	      },
	         {
	        question:"Where is an ocean with no water?",
	        choice1:"In India",
	        choice2:"In Australia",
	        choice3:"In Srilanka",
	        choice4:"On a Map",
	        ans:"On a Map",
	      },
	         {
	        question:"What Indian city is capital of two states?",
	        choice1:"Chandigarh",
	        choice2:"Mumbai",
	        choice3:"Chennai",
	        choice4:"Kolkata",
	        ans:"Chandigarh",
	      },
	         {
	        question:"What approx is the area of India in sqkm?",
	        choice1:"3,000,000",
	        choice2:"1,500,000",
	        choice3:"4,000,000",
	        choice4:"2,000,000",
	        ans:"3,000,000",
	      },
	         {
	        question:"Where did chess first originate?",
	        choice1:"India",
	        choice2:"Spain",
	        choice3:"Iran",
	        choice4:"China",
	        ans:"India",
	      },
             {
            question:"Who is the only Indian cricketer to have scored 5k runs in test cricket?",
            choice1:"Virat Kohli",
            choice2:"Virender Sehwag",
            choice3:"Sunil Gavaskar",
            choice4:"Kapil Dev",
            ans:"Kapil Dev",
          },
             {
            question:"When did Radio broadcasting begin in India",
            choice1:"1936",
            choice2:"1957",
            choice3:"1930",
            choice4:"1927",
            ans:"1927",
          },
             {
            question:"Which river does not originate from India?",
            choice1:"Ganga",
            choice2:"Satluj",
            choice3:"Chenab",
            choice4:"Brahmaputra",
            ans:"Brahmaputra",
          },
             {
            question:"When was Gandhi-Irwin pact signed?",
            choice1:"March 1, 1930",
            choice2:"March 5, 1931",
            choice3:"September 5, 1932",
            choice4:"August 15, 1931",
            ans:"March 5, 1931",
          },
             {
            question:"In which year did the Bhopal gas tragedy take place",
            choice1:"2009",
            choice2:"1984",
            choice3:"2013",
            choice4:"1944",
            ans:"1984",

          }

	    ];
	    function nextQuestion(no){
	    Inter(300);
	    cQuestion.textContent=" "+(no+1);
	    totalQuestions.textContent=" "+quizQuestions.length;
	    console.log("number "+no);
	    question.textContent=quizQuestions[no].question;
	    opt1.textContent=quizQuestions[no].choice1;
	    opt2.textContent=quizQuestions[no].choice2;
	    opt3.textContent=quizQuestions[no].choice3;
	    opt4.textContent=quizQuestions[no].choice4;
	  }
	    var z=setInterval(function(){
	        if(x==1){
	          clearInterval(z);
	          splashSecreen.style.display="none";
	          quizScreen.style.display="block";
	          nextQuestion(currentQuestion);
	        }
	        x++;
	    },2000);
	    for(var i=0;i<btn.length;i++){
	      btn[i].onclick=function(){
	        if(this.textContent==quizQuestions[currentQuestion].ans){
	            totalScore++;
	            if(currentQuestion<9){
	            clearInterval(bar);
	            currentQuestion++;
	            nextQuestion(currentQuestion);
	            console.log(totalScore);
	            }else{
	              endSecreen();
	            }
	        }
	        else{
	          if(currentQuestion<9){
	            currentQuestion++;
	            clearInterval(bar);
	            nextQuestion(currentQuestion);
	            console.log(totalScore);
	            }else{
	              endSecreen();
	            }
	        }
	      }
	    }
	    var bar;
	    function endSecreen(){
	      quizScreen.style.display="none";
	      resultSecreen.style.display="block";
	      score.textContent=totalScore;
	    }
	    function Inter(set){
	    var statusTime=set;
	    timeLeft.style.width=statusTime+"px";
	    bar=setInterval(function(){
	     if(statusTime==0){
	         clearInterval(bar); 
	          if(currentQuestion<9){
	            currentQuestion++;
	            nextQuestion(currentQuestion);
	          }
	          else{
	            endSecreen();
	          } 
	           
	        }
	        timeLeft.style.width=statusTime+"px";
	        statusTime=statusTime-30;
	    },1000); 
	   }
	  next.onclick=function(){
	    if(currentQuestion<9){
	    currentQuestion++;
	    nextQuestion(currentQuestion);
	    }
	    else{
	      endSecreen();
	    }
	   
	  }
	    </script>
	  </body>
	</htm>
	© 2020 BY FARHAN WID ❤ , Inc.
