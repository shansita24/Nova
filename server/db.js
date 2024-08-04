const Pool = require("pg").Pool;

const pool = new Pool(
    {user: "postgres",
    database: "nova",
    password: "letterboxd",
    host:"localhost",
    port:5433,
    }
)

module.exports=pool;