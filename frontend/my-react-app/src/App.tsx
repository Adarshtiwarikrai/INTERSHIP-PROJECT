import { useState } from 'react'
import { BrowserRouter,Routes,Route } from 'react-router-dom'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import './App.css'
import Login from './Login'
import Home from './Home'
function App() {
  const [count, setCount] = useState(0)

  return (
    <>
     <BrowserRouter>
     <Routes>
     <Route path="/" element={<Login />} />
     <Route path="/home" element={<Home />} />
     </Routes>
     </BrowserRouter>
    </>
  )
}

export default App
