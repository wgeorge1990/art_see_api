import React, { createContext, useState } from 'react';
import './App.css';
import ProfileForm from './components/ProfileForm';

export const AppContext = createContext(null);

function App() {
  const [ profile, setProfile ] = useState(null);

  return (
      <AppContext.Provider value={{profile, setProfile}} >
        <div className="App" >
          <ProfileForm profile={profile} setProfile={setProfile} />
        </div>
     </ AppContext.Provider>
  )
}

export default App;
