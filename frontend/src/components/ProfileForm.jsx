import React, { useState } from 'react'

function FileForm({ profile, setProfile }) {
    const [ age, setAge ] = useState(0)
    
    function handleSubmit(event){
        event.preventDefault();
        const data = new FormData();
        //Hard code user_id input in until user auth and sessions are configured
        data.append("profile[user_id]", event.target.user_id.value);
        data.append("profile[first_name]", event.target.first_name.value);
        data.append("profile[last_name]", event.target.last_name.value);
        data.append("profile[headline]", event.target.headline.value);
        data.append("profile[age]", event.target.age.value);
        data.append("profile[image_url]", event.target.image_url.files[0]);
        submitToApi(data);
    }

    function updateAge(event) { 
        setAge(event.target.value) 
    }

    function submitToApi( data ) {
        fetch(`http://localhost:3000/api/v1/profiles`, {
            method: "POST",
            body: data,})
            .then(response => response.json())
            .then(data =>  setProfile(data))
            .catch(error => console.error(error));
    }
    
    return <React.Fragment>
            <h1>ProfileImageForm</h1>
            <form onSubmit={(e) => handleSubmit(e)}>
                <label htmlFor='user_id'>
                    user_id
                </label>
                <br />
                <input type='number' name='user_id' id='user_id' />
                <br />

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
                <input type='file' name='image_url' id='image_url'/>
                <br />
                
                <button type='submit'>Update Profile</button>
            </form>
           </React.Fragment>
}

export default FileForm;