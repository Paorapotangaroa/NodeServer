let express = require("express"); //importing/bringing in the express library
let app = express(); //making the object of the web application and calling it app
let path = require("path"); //importing/bringing in the path library
const port = 3000; //local host:5000 will take you to the website
app.set("view engine", "ejs"); //we are using ejs for our html pages
app.set("views", path.join(__dirname, "views")); //find the views folder and use it
app.use(express.urlencoded({ extended: true })); //
//sets up the connection to pgadmin sql
const knex = require("knex")({
    client: "pg",
    connection: {
        host: "toapita.com",
        user: "postgres",
        password: "technites2024!",
        database: "postgres",
        port: 5432
    }
});
app.get("/", (req, res) => {
    //selects all from pokemon table.
    //orders by description
    //if the query works, then send the results into the pokes variable. Pokes is the rows of the table that was selected in the query
    knex.select().from('students').then(pokes => {
        res.render("index", { listOfStudents: pokes });
        //if the query doesn't work, return the error
    }).catch(err => {
        console.log(err);
        res.status(500).json({ err });
    });
});
app.get("/searchPokemon", (req, res) => {
    //NOTICE query since I am retrieving data from a form using the get method
    knex.select().from('pokemon').where('description', req.query.searchName.toLowerCase()).first().then(pokes => {
        res.render("displayPoke", { pokemon: pokes });
    }).catch(err => {
        console.log(err);
        res.status(500).json({ err });
    });
});
app.listen(port, () => console.log("Express App 2 has started and server is listening!"));
