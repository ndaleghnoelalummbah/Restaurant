import { React, useState } from "react";
import { Link } from "react-router-dom";
import harmburger from "../images/harmb.png";
import logo from "../images/tchop.png";
import cross from "../images/crossed.png";
import styles from "./SideMenu.module.css";
export default function SideMenu() {
  const [showMenu, setShowMenu] = useState(false);

  return (
    <div className={styles.main}>
      <div className={styles.nav}>
        <div style={{ display: showMenu === false ? "block" : "none" }}>
          <img
            src={harmburger}
            alt="harmburger"
            style={{ width: "80px", height: "80px", marginTop: "12px" }}
            onClick={() => {
              setShowMenu(true);
            }}
          />
        </div>
        <div style={{ display: showMenu === false ? "none" : "block" }}>
          <img
            src={cross}
            alt="harmburger"
            style={{ width: "80px", height: "80px", marginTop: "12px" }}
            onClick={() => {
              setShowMenu(false);
            }}
          />
        </div>
        <div className={styles.brand}>
          <img src={logo} alt="logo" width="120px" height="100px" />
          <span className={styles.name}>TCHOP</span>
        </div>
      </div>
      <div className={styles.menu} style={{ display: showMenu === false ? "none" : "block" }}>
        <li>
          <Link to="/Home">Home</Link>
        </li>
        <li>
          <Link to="/Order">Order</Link>
        </li>
        <li>
          <Link to="/About">About Us</Link>
        </li>
      </div>
    </div>
  );
}
