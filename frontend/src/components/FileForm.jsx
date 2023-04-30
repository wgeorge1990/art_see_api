import React, { useState } from 'react'
import { AppContext } from "../App"

function FileForm() {
    const [ profileAvatar, setProfileAvatar ] = useState(AppContext);
    const [ age, setAge ] = useState(0)
    
    function handleSubmit(event){
        event.preventDefault();
        const data = new FormData();
        data.append("profile[first_name]", event.target.first_name.value);
        data.append("profile[last_name]", event.target.last_name.value);
        data.append("profile[headline]", event.target.headline.value);
        data.append("profile[age]", event.target.age.value);
        data.append("profile[image]", event.target.image.files[0]);
        
        console.log(data.get("profile[first_name]"))
        console.log(data.get("profile[last_name]"))
        console.log(data.get("profile[headline]"))
        console.log(data.get("profile[age]"))
        console.log(data.get("profile[image]"))
    }

    function updateAge(event) { setAge(event.target.value) }

    function submitToApi() {

    }
    
    return <React.Fragment>
            <h1>ProfileImageForm</h1>
            <form onSubmit={(e) => handleSubmit(e)}>
                <label htmlFor='headline'>
                    Headline
                </label>
                <br />
                <input type='text' name='headline' id='headline' />
                <br />

                <label htmlFor='first_name'>
                    First Name
                </label>
                <br />
                <input type='text' name='first_name' id='first_name' />
                <br/>

                <label htmlFor='last_name'>
                    Last Name
                </label>
                <br />
                <input type='text' name='last_name' id='last_name' />
                <br/>

                <label htmlFor='birthday'>
                    DOB
                </label>
                <br />
                <input type='date' name='dob' id='dob' />
                <br/>

                <label htmlFor='age'>age: {age}</label>
                <br />
                <input onChange={e => updateAge(e)} value={age} type='range' min={10} max={100} name='age' id='age' />
                <br/>

                <label htmlFor='image'>Image</label>
                <br/>
                <br />
                <input type='file' name='image' id='image'/>
                <br />
                
                <button type='submit'>Update Profile Image</button>
            </form>
           </React.Fragment>
}

export default FileForm;