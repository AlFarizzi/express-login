let express = require("express");
let mysql = require("mysql");
let bcrypt = require("bcrypt");
const MySQLStore = require("express-mysql-session");

let app = new express();
let router = express.Router();
let option = {
    host: "localhost",
    user: "root",
    password: "",
    database: "express-login",
    port: 3306
}
let con = mysql.createConnection(option);

 
router.get('/', (req,res,next) => {
    if(req.session.login) {
        res.redirect('/home');
    }
    res.render('index');
    next();
})

router.post('/register', async(req,res,next) => {
    try {
        let password = await bcrypt.hash(req.body.password,10);
        con.query(`INSERT INTO users VALUES(null, '${req.body.nama}', '${req.body.username}', '${req.body.email}', '${password}')`, (err,result) => {
            if(err) throw err;
            res.redirect('/');
        })
    } catch(error) {
            throw error;
    }
})

router.post('/login',async(req,res,next) => {
    let resAtas = res;
    con.query(`SELECT * FROM users WHERE username = '${req.body.username}' LIMIT 1 `, async(err,res,fields) => {
        try {
            if(res.lenght !== 0) {
                let data = JSON.parse(JSON.stringify(res));
                if(await bcrypt.compare(req.body.password,data[0]['password'],(err,respons) => {
                    if(respons == true) {
                        req.session.login = true;
                        req.session.data = data;
                        resAtas.redirect('/home');
                    } else {
                        resAtas.redirect('/')
                    }
                }));
            } else {
                resAtas.redirect('/');
            }
        } catch (error) {
            
        }
    })
})

router.get('/home', (req,res,next) => {
    if(!req.session.login) {
        res.redirect('/');
    } else {
        let data = req.session.data[0];
        res.render('home', {data:{data}});
    }
    next();
})

router.get('/logout', (req,res,next) => {
    req.session.destroy(err => {
        if(err) throw err;
        res.redirect('/');
    })
})

module.exports = {
    app: app,
    router: router,
    con: con
}

