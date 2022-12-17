const express = require('express');
const app = express();

const port = 80;

app.listen(port, ()=> {
    console.log(`App listening at port http://localhost:${port}`)
} );

app.get('/', function(req, res) {
    res.send('<h1>It works!</h1>')
})