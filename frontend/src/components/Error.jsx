import React from "react";
import "./Error.css";
import NavBar from "./NavBar";

function Error() {
  return (
    <div className="ctnError">
      <NavBar />
      <h1 className="textError">Error 404</h1>
      <h1 className="textError">
        Votre avion est parti sans vous ! (pour le mieux certainement)
      </h1>
      <img
        className="imgError"
        src="https://www.atr-aircraft.com/wp-content/uploads/2020/07/atr_44773md_1303.jpg"
        alt="WingsAir"
      />
    </div>
  );
}

export default Error;
