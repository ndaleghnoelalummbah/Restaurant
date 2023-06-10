import * as React from "react";
import { Link } from "react-router-dom";
import styles from "./Payment.module.css";
import SideMenu from "../../components/SideMenu/SideMenu";
import mtn from "../../components/images/mtn.png";
import orange from "../../components/images/orange.png";
import scb from "../../components/images/scb.png";

export default function Payment() {
  return (
    <>
      {/* <Header /> */}
      <SideMenu />
      <div className={styles.main}>
        <span class className={styles.text}>
          AMOUNT:{" "}
        </span>
        <span className={styles.text}>
          <u style={{ color: "#FBFF37" }}>8000 XAF</u>
        </span>
        <form onSubmit="">
          <label htmlFor="Notes">Special Notes(optional):</label>
          <textarea type="text" name="notes" />
          <br />

          <div className={styles.radio}>
            <input type="radio" name="payment" id="mtn" value="mtn" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="mtn">
              <img src={mtn} alt="icon" />
            </label>
            <br />
            <input type="radio" name="payment" id="orange" value="orange" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="orange">
              <img src={orange} alt="icon" />
            </label>
            <br />
            <input type="radio" name="payment" id="scb" value="scb" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="scb">
              <img src={scb} alt="icon" />
            </label>
          </div>
          <button type="submit" className={styles.reservebtn}>
            Make Payment
          </button>
        </form>
      </div>
    </>
  );
}
