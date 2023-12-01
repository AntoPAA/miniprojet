const express = require("express");

const router = express.Router();
const client = require("../database/client");

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */
router.get("/citys", (req, res) => {
  client
    .query("SELECT * FROM city")
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

router.get("/categories", (req, res) => {
  client
    .query("SELECT * FROM categorie")
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

router.get("/citys/:id", (req, res) => {
  client
    .query("SELECT * FROM city WHERE id = ?", [req.params.id])
    .then((result) => {
      if (result[0].length === 0) {
        res.status(404).json({ message: "Aucune ville trouvé avec cet ID" });
      } else {
        res.status(200).json(result[0][0]);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

router.get("/citys/:id/categories", (req, res) => {
  const cityId = req.params.id;
  client
    .query(
      "SELECT * FROM categorie JOIN city ON categorie.id = city.categorie_id WHERE city.id = ?",
      [cityId]
    )
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});
// Import itemControllers module for handling item-related operations
const itemControllers = require("./controllers/itemControllers");

// Route to get a list of items
router.get("/items", itemControllers.browse);

// Route to get a specific item by ID
router.get("/items/:id", itemControllers.read);

// Route to add a new item
router.post("/items", itemControllers.add);

/* ************************************************************************* */

module.exports = router;
