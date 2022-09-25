import React, {useState} from 'react'
import logo from './logo.jpg';
import Deso from 'deso-protocol';
import Textfield from '@mui/material/Textfield';

export default function UI() {
   
const deso = new Deso();
    const request = 3;
   
    const [cookieCounter, setCookieCounter] = useState(0) 
    const handleClick = async(event) =>{
        try {
            const response = await deso.identity.login(request);
        } catch (error) {
            
        }
    }
  return (
    <div className="App">
    <header className="App-header">
         <img src={logo} className="App-logo" alt="logo" />
         <p>
        
         </p>

         <input type="text"/>

         <button onClick={handleClick}>c</button>

  
         Tienes {cookieCounter}
         <br/>
         Te sabe a crotolamo?
         <br/>
         Te habló el ex primo?
         <br/>
         Careces de padalustro?
    </header>
  </div>
  )
}
