<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="games.aspx.cs" Inherits="project.games" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script >
            const questions = [
  {
    question: "איזה עיר ידועה כ'בירת המלונות' של העולם?",
    answers: ["לאס וגאס", "לונדון", "פריז", "דובאי"],
    correct: "לאס וגאס"
  },
  {
    question: "באיזו מדינה תוכלו למצוא את הווילות הצפות של 'מאלדיביים'?",
    answers: ["אינדונזיה", "תאילנד", "המלדיביים", "פיליפינים"],
    correct: "המלדיביים"
  },
  {
    question: "מהו זמן הצ'ק-אאוט הסטנדרטי ברוב בתי המלון בעולם?",
    answers: ["10:00 בבוקר", "12:00 בצהריים", "14:00 אחר הצהריים", "16:00 אחר הצהריים"],
    correct: "12:00 בצהריים"
  },
  {
    question: "איזו עיר ידועה בזכות הווילות היקרתיות שלה באזור טוסקנה?",
    answers: ["מילאנו", "רומא", "פירנצה", "ונציה"],
    correct: "פירנצה"
  },
];

let currentQuestion = 0;
let score = 0;
let timer;
let timeLeft = 10; // משך הזמן לכל שאלה (בשניות)

const questionElement = document.getElementById("question");
const answersElement = document.getElementById("answers");
const nextButton = document.getElementById("nextButton");
const scoreElement = document.getElementById("score");
const timerElement = document.createElement("p");

timerElement.id = "timer";
document.querySelector(".container").appendChild(timerElement);

function showQuestion() {
  const current = questions[currentQuestion];
  questionElement.textContent = current.question;
  answersElement.innerHTML = "";
  current.answers.forEach(answer => {
    const button = document.createElement("button");
    button.textContent = answer;
    button.addEventListener("click", () => {
      clearInterval(timer); // עצור את הטיימר
      checkAnswer(answer);
    });
    answersElement.appendChild(button);
  });
  timeLeft = 10; // איפוס הזמן לכל שאלה
  updateTimer();
  startTimer();
}

function startTimer() {
  timer = setInterval(() => {
    timeLeft--;
    updateTimer();
    if (timeLeft <= 0) {
      clearInterval(timer);
      alert("זמנך נגמר! עוברים לשאלה הבאה.");
      moveToNextQuestion();
    }
  }, 1000);
}

function updateTimer() {
  timerElement.textContent = זמן שנותר: ${timeLeft} שניות;
}

function checkAnswer(answer) {
  if (answer === questions[currentQuestion].correct) {
    score++;
    alert("תשובה נכונה!");
  } else {
    alert("תשובה לא נכונה. התשובה הנכונה היא: " + questions[currentQuestion].correct);
  }
  scoreElement.textContent = ניקוד: ${score};
  nextButton.disabled = false;
}

function moveToNextQuestion() {
  currentQuestion++;
  if (currentQuestion < questions.length) {
    showQuestion();
    nextButton.disabled = true;
  } else {
    questionElement.textContent = "סיימת את המשחק! תודה ששיחקת.";
    answersElement.innerHTML = "";
    nextButton.style.display = "none";
    timerElement.style.display = "none";
  }
}

nextButton.addEventListener("click", () => {
  clearInterval(timer);
  moveToNextQuestion();
});

// התחלת המשחק
showQuestion();
nextButton.disabled = true;
    </script>     
</body>
</html>
