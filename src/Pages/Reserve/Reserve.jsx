import * as React from "react";
import { useState } from "react";
import { Link } from "react-router-dom";
import styles from "./Reserve.module.css";
import SideMenu from "../../components/SideMenu/SideMenu";

export default function Reserve() {
  const [restaurantBranch, setRestaurantBranch] = useState(["UB-junction", "mile-17", "sosoliso", "Buea-town"]);
  return (
    <>
      {/* <Header /> */}
      <SideMenu />
      <div className={styles.main}>
        <form onSubmit="">
          <label htmlFor="ReservationDate">Reservation Date:</label>
          <input type="date" name="ReservationDate" />
          <br />
          <label htmlFor="ReservationTime">Reservation Date:</label>
          <input type="time" name="ReservationTime" />
          <br />
          <label htmlFor="Size">Number of Persons</label>
          <input type="number" name="Size" />
          <br />
          <label htmlFor="Notes">Special Notes(optional):</label>
          <textarea type="text" name="notes" />
          <br />
          <button type="submit" className={styles.reservebtn}>
            <Link to="/Payment" style={{ color: "#fff" }}>
              Reserve
            </Link>
          </button>
        </form>
      </div>
    </>
  );
}
