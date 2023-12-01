import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";
import "./OneCity.css";

function CityDetail() {
  const { id } = useParams();
  const [city, setCity] = useState(null);
  const [categories, setCategories] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/api/citys/${id}`)
      .then((response) => {
        const cityData = response.data;
        setCity(cityData);
      })
      .catch((error) => {
        console.error(error);
      });

    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/api/citys/${id}/categories`)
      .then((response) => {
        const categoriesData = response.data;
        setCategories(categoriesData);
      })
      .catch((error) => {
        console.error(error);
      });
  }, [id]);

  return (
    <div>
      {city && (
        <div>
          <h1 className="cityName">{city.name}</h1>
          <ul>
            {categories.map((category) => (
              <li className="categorie" key={category.id}>
                {category.language} - {category.country}
              </li>
            ))}
          </ul>
          <img className="imgBig" src={city.image} alt={city.name} />
          <p className="description">{city.description}</p>
          <img className="imgSmall" src={city.imaged} alt={city.named} />
        </div>
      )}
    </div>
  );
}
export default CityDetail;
