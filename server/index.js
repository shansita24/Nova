const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");

//middleware
app.use(cors);
app.use(express.json());

app.get("/res", async (req, res) => {
    try {
      const result = await pool.query("SELECT * FROM restaurant");
      console.log(result);
      if (result.rows.length > 0) {
        return res.status(201).json({ message: result.rows });
      }
      res.status(404).json({ message: "No restaurants found" });
    } catch (error) {
      console.error("Error retrieving data:", error.message, error.stack);
      res.status(500).send("An error occurred while retrieving data");
    }
});

app.listen(8000, () =>{
    console.log("server has started on port 8000");
});