import React from "react";
import { Link } from "react-router-dom";
import "./NavBar.css";

function NavBar() {
  return (
    <div className="NavBar">
      <div className="NavLink">
        <Link to="404">
          <img
            className="imgNav"
            src="https://upload.wikimedia.org/wikipedia/fr/e/e9/Wings_Air_logo.png"
            alt=""
          />
        </Link>

        <Link className="NavLiink" to="/">
          Home
        </Link>
      </div>
    </div>
  );
}

export default NavBar;
