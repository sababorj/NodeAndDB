var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: 'playlist_db'
});

connection.connect((err) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}`);
    runQuery();
    connection.end();
})

function runQuery() {
    connection.query('SELECT * FROM songs Where ?', {genre : 'Pop'} ,(err, res) => {
        if (err) throw err;
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].title)
        }
    })
}