import React from "react";
import styles from "./Order.module.css"
import SideMenu from "../../components/SideMenu/SideMenu";

export default function Order() {
  return (
    <>
      <SideMenu />
      <p class className={styles.text}>
        <u>MENUE</u>
      </p>
      {/* <div className="main">
        <form onSubmit="">
          <div className={styles.radio}>
            <input type="checkbox" name="payment" id="mtn" value="mtn" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="mtn">
              <img src={mtn} alt="icon" />
            </label>
            <br />
            <input type="checkbox" name="payment" id="orange" value="orange" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="orange">
              <img src={orange} alt="icon" />
            </label>
            <br />
            <input type="checkbox" name="payment" id="scb" value="scb" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="scb">
              <img src={scb} alt="icon" />
            </label>
            <input type="checkbox" name="payment" id="scb" value="scb" onChange={(e) => alert(e.target.value)} className={styles.radiobtn} />
            <label htmlFor="scb">
              <img src={scb} alt="icon" />
            </label>
          </div>
          <button type="submit" className={styles.reservebtn}>
            Make Payment
          </button>
        </form>
      </div> */}
    </>
  );
}
