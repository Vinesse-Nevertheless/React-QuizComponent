import React, {Component} from "react";
//I think there is something wrong with the test for this final task.

class QuizQuestionButton extends Component{
    render(){
        return (
          <li >
              <button> {this.props.button_text} </button>
          </li>
        );
    }
}

export default QuizQuestionButton