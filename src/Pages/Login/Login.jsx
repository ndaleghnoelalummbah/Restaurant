import React from "react";
import styles from "./Login.module.css";
import { Link } from "react-router-dom";
import SideMenu from "../../components/SideMenu/SideMenu";

export default function Login() {
  return (
    <>
      <SideMenu />
      <div className={styles.main}>
        <form onSubmit="">
          <label htmlFor="Email">Email:</label>
          <input type="email" name="email" />
          <br />
          <label htmlFor="Password">Password:</label>
          <input type="password" name="passwd" />
          <br />
          <span style={{ fontSize: "28px" }}>Not a member?</span>
         
            <Link to="/SignUp" style={{ color: "#fff", fontSize:"28px", marginLeft: "1em" }}>
              Register here
            </Link>
          
          <button type="submit" className={styles.reservebtn}>
            <Link to="/Home" style={{ color: "#fff" }}>
              Log In
            </Link>
          </button>
        </form>
      </div>
    </>
  );
}
