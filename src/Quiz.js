//Parent component to QuizQuestion.js and QuizEnd.js

import React, {Component} from "react";
import QuizQuestion from "./QuizQuestion.js"
import QuizEnd from "./QuizEnd.js"

//Get quiz question number, question text, answer options and correct answer from json file
let quizData = require('./quiz_data.json')


//make data available in state for render
class Quiz extends Component {
    constructor(props){
        super(props)
        this.state = {
            quiz_position:1
        }  
    }

    //render quiz question
    render(){
        const isQuizEnd = this.state.quiz_position - 1 === quizData.quiz_questions.length;
      // const isQuizEnd = false
       return <div className="QuizQuestion" >
          { isQuizEnd 
           ? <QuizEnd />
            : (
              <QuizQuestion quiz_question = {quizData.quiz_questions[this.state.quiz_position-1]} showNextQuestionHandler = {this.showNextQuestion.bind(this)} />
            )
          }
              </div>      
    }
    showNextQuestion(){
        this.setState( {quiz_position : this.state.quiz_position +1} );
        }
    }
export default Quiz