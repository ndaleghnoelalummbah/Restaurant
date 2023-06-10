import * as React from "react";
import { useState } from "react";
import { Link } from "react-router-dom";
import styles from "./Home.module.css";
import SideMenu from "../../components/SideMenu/SideMenu";
import SelectDropDown from "../../components/SelectDropDown";

export default function Home() {
  const [type, setType] = useState("button");
  return (
    <>
      {/* <Header /> */}
      <SideMenu />
      <div className={styles.main}>
        <h2 style={{ textAlign: "center" }}>Welcome to TCHOP. Here, your wish is our Utmost concern</h2>
        {/* <Link to="/Order">Orders</Link> */}
        <form onSubmit="">
          <label htmlFor="Branch:">Restaurant Branch:</label>
          <SelectDropDown />
          <button className={styles.services} onClick={() => setType("submit")} type={type}>
            <Link to="/Order" className={styles.link}>
              Orders
            </Link>
          </button>
          <button className={styles.services} onClick={() => setType("submit")} type={type}>
            <Link to="/Reserve" className={styles.link}>
              Reserve
            </Link>
          </button>
          <button className={styles.services} onClick={() => setType("submit")} type={type}>
            <Link to="/Catering" className={styles.link}>
              Catering
            </Link>
          </button>
        </form>
      </div>
    </>
  );
}
