import React, { createContext, useState } from 'react';
import './App.css';
import FileForm from './components/FileForm';
import ProfileImage from './components/ProfileImage';

export const AppContext = createContext(null);

function App() {
  const [ profileAvatar, setProfileAvatar ] = useState(AppContext);

  return (
      <AppContext.Provider value={{profileAvatar, setProfileAvatar}} >
        <div className="App" >
          <FileForm />
          <ProfileImage />
        </div>
      </ AppContext.Provider>
  )
}

export default App;
