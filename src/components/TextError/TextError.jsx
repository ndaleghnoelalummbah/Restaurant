import React from "react";

export default function TextError(props) {
  return (
    <div style={{ color: "red" }} className="error">
      {props.children}
    </div>
  );
}
