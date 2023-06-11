import { React, UseState } from "react";
import styles from "./Login.module.css";
import { Link } from "react-router-dom";
import SideMenu from "../../components/SideMenu/SideMenu";

export default function Login() {
  const [loginData, setLoginData] = {
    email: "",
    passwd: "",
  };
  function handleChange(e){
    setLoginData(
      {...loginData,
        [e.target.name]:e.target.value
      }
    );
  }

  return (
    <>
      <SideMenu />
      <div className={styles.main}>
        <form onSubmit="">
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

          <button type="submit" className={styles.reservebtn} onClick={alert(loginData.email)}>
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
