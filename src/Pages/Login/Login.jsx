import { React, useState } from "react";
import styles from "./Login.module.css";
import axios from "axios";
import { Link } from "react-router-dom";
import SideMenu from "../../components/SideMenu/SideMenu";

export default function Login() {
  const [loginData, setLoginData] = useState({
    email: "",
    passwd: "",
  });
  function handleChange(e) {
    setLoginData({ ...loginData, [e.target.name]: e.target.value });
  }


  const handleSubmit = (e) => {
    e.preventDefault();

    axios
      .post("https://localhost/Chosen_APIs/login.php", loginData, {
        headers: {
          "Content-Type": "application/json",
        },
      })
      .then((response) => {
         console.log("status:", response.status, "response data:", response.data);
         console.log("response",response);
        console.log("login data", loginData);
        // setAddingJokes(false);
        setLoginData({
          email: "",
          passwd: "",
        });
        // alert("J submitted sucessfully");
      })
      .catch((error) => {
        if (error.response) {
          console.log(error.response);
          console.log("server responded");
        } else if (error.request) {
          console.log("network error");
        } else {
          console.log(error);
        }
      });
  };

  return (
    <>
      <SideMenu />
      <div className={styles.main}>
        <form onSubmit={handleSubmit}>
          <label htmlFor="Email">Email:</label>
          <input type="email" name="email" value={loginData.email} onChange={handleChange} />
          <br />
          <label htmlFor="Password">Password:</label>
          <input type="password" name="passwd" value={loginData.passwd} onChange={handleChange} />
          <br />
          <span style={{ fontSize: "28px" }}>Not a member?</span>

          <Link to="/SignUp" style={{ color: "#fff", fontSize: "28px", marginLeft: "1em" }}>
            Register here
          </Link>

          <button type="submit" className={styles.reservebtn} onClick={()=>alert(loginData.email)}>
            {/* <Link to="/Home" style={{ color: "#fff" }}>
              Log In
            </Link> */}
            Log In
          </button>
        </form>
      </div>
    </>
  );
}
