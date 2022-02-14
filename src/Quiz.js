//Parent component to QuizQuestion.js

import React, {Component} from "react";
import QuizQuestion from "./QuizQuestion.js"

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
        return <div className="QuizQuestion" >
         <QuizQuestion quiz_question = {quizData.quiz_questions[this.state.quiz_position-1]} />
        </div>
    }
}

export default Quiz