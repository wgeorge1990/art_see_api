import React, { createContext, useState } from 'react';
import './App.css';
import ProfileForm from './components/FileForm';

export const AppContext = createContext(null);

function App() {
  const [ profile, setProfile ] = useState(null);

  return (
      <AppContext.Provider value={{profile, setProfile}} >
        <div className="App" >
          <ProfileForm profile={profile} setProfiles={setProfile} />
        </div>
     </ AppContext.Provider>
  )
}

export default App;
