import React from "react";
import { Link } from "react-router-dom";
import "./Footer.css";

function Footer() {
  return (
    <div className="Footer">
      <div className="FooterLink">
        <Link to="https://github.com/AntoPAA/miniprojet/tree/dev">
          <img
            className="imgFooter"
            src="https://seeklogo.com/images/W/wings-airlines-logo-2F70C863E7-seeklogo.com.png"
            alt=""
          />
        </Link>
      </div>
    </div>
  );
}

export default Footer;
