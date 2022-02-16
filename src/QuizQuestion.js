//child component to Quiz.js and QuizQuestionButton
import React, {Component} from "react";
import QuizQuestionButton from "./QuizQuestionButton.js";

class QuizQuestion extends Component{
    render(){
      return <main> {/* RETURN REQUIRED */}
      <section>
        <p>{this.props.quiz_question.instruction_text}</p>
      </section>
      <section className="buttons">
        <ul >
          {/* When you call this on an array, you can have it run through all the items in that array 
          and do something interesting with them – in our case, returning a new array of JSX that can 
          be drawn. 
          
          For every item in the array, it gives us the item itself in person and 
          the position of the item in index.*/}
        {this.props.quiz_question.answer_options.map((answer_option, index) => (  //creates a new anonymous function (that's the => part) that receives answer_option & index as a parameter and will return a value of the modified data.
         <QuizQuestionButton key={index} button_text = {answer_option} clickHandler = {this.handleClick.bind(this)}/>))} {/* React NEEDS a key attribute so that it knows which item is which. */}
        </ul>
      </section>
    </main>
    }
handleClick(buttonText){
   if (buttonText == this.props.quiz_question.answer){
     this.props.showNextQuestionHandler()
   }
}
}

export default QuizQuestion