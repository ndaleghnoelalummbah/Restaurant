import * as React from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./Pages/Home/Home";
import Order from "./Pages/Order/Order";
import Reserve from "./Pages/Reserve/Reserve";
import Payment from "./Pages/Payment/Payment";
import SignUp from "./Pages/Sign Up/SignUp";
import Login from "./Pages/Login/Login";

export default function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="Home" element={<Home />} />
        <Route path="Order" element={<Order />} />
        <Route path="Reserve" element={<Reserve />} />
        <Route path="Payment" element={<Payment />} />
        <Route path="SignUp" element={<SignUp />} />
      </Routes>
    </div>
  );
}
