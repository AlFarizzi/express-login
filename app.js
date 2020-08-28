let express = require("express");
let app = new express();
let mysql = require("mysql");
let router= require('./routes/route');
let session = require('express-session');
let MySQLStore = require("express-mysql-session")(session);
let con = router.con;
app.set('view engine', 'ejs');
app.use(express.static('assets'));
app.use(express.json());
app.use(express.urlencoded({extended : false}));
app.use(session({
    secret: 'secret',
    resave: false,
    saveUninitialized: false,
    store: new MySQLStore({
        user: "root",
        password: "",
        host: "localhost",
        database: "express-login",
        port: 3306
    }),
    cookie: {
        maxAge: 60 * 10000 * 30
    }
}))
con.connect(err => {
    if(err) throw err;
    app.use('/', router.router);
    app.listen(3000);
})