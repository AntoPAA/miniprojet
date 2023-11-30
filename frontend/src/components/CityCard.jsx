import React, { useEffect, useState } from "react";
import axios from "axios";

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
      <ul>
        {cities.map((city) => (
          <li key={city.id}>{city.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default CityCard;
