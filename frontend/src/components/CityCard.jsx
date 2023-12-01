import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import "./CityCard.css";

function CityCard() {
  const [cities, setCities] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/api/citys`)
      .then((response) => {
        const citiesData = response.data;
        setCities(citiesData);
      })
      .catch((error) => {
        console.error(error);
      });
  }, []);

  return (
    <div>
      <h1>Liste des villes :</h1>
      <ul className="cityList">
        {cities.map((city) => (
          <Link to={`/citys/${city.id}`} key={city.id} className="cityLink">
            <li className="ctnCard" key={city.id}>
              <img className="imgCity" src={city.image} alt={city.image} />
              <div className="nameCity">{city.name}</div>
            </li>
          </Link>
        ))}
      </ul>
    </div>
  );
}
export default CityCard;
