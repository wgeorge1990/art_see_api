import React, { useEffect } from 'react'

function ProfileImage() {
  // Call to get all profiles
  // 
  // useEffect(() => {
  //   fetch("http://localhost:3000/api/v1/profiles")
  //   .then(response => response.json())
  //   .then( data => console.log(data) )
  //   .catch(error => console.error(error) )
  // });

  return ( 
    <React.Fragment>
        <span>This is where the image_url will preview</span>
    </React.Fragment>
  )
   
}

export default ProfileImage