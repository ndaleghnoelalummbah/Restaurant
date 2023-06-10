import React from "react";
// import ReactDOM from "react-dom";
import styles from "./Header.module.css";
import tchop from "../images/tchop.png";
function Header() {
  return (
    <nav className={styles.nav}>
      <img className="logo" src={tchop} alt="logo" style={{height:"100px", width:"140px",marginLeft:"42px"}} />
      <span className={styles.name}>TCHOP</span>
      <ul className={styles.ul}>
        <li>Home</li>
        <li>Order</li>
        <li>About Us</li>
        <li>Logout</li>
      </ul>
    </nav>
  );
}
export default Header;
