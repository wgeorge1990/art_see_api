import React from 'react';
import './App.css';

import HomeContainer from "./components/HomeContainer/HomeContainer.jsx";
// import MainContent from "./components/MainContent/MainContent";
// import Sidebar from "./components/Sidebar/Sidebar";

import ProfileImageForm from './components/ProfileImageForm';

export default function App() {
  return (
        <div className="App" >
          <ProfileImageForm />
          <HomeContainer />
          {/* <MainContent/> */}
          {/* <Sidebar /> */}
        </div>
  )
}