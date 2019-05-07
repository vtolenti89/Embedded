var mysql = require('mysql')
var util = require('util')

var pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'iot',
  socketPath: process.platform === 'darwin' ? '/Applications/MAMP/tmp/mysql/mysql.sock' : ''
})

//convert queries into promises
pool.query = util.promisify(pool.query)

var dbInit = [
  'SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";',
  'SET time_zone = "+00:00";',
  `CREATE DATABASE IF NOT EXISTS iot`,
  `USE iot`,
  //Table for the garden system
  `CREATE TABLE IF NOT EXISTS garden_system (
    id int(5) NOT NULL AUTO_INCREMENT,
    waterLevel int(5),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB  DEFAULT CHARSET=latin1`,
  //Mock data
  `INSERT INTO garden_system (waterLevel) VALUES ('50')`,
  // `DELIMITER //
  //   CREATE TRIGGER garden_system_after_update AFTER UPDATE ON garden_system FOR EACH ROW
  // BEGIN
  //   DECLARE vUser varchar(50);
  
  // END; //
  // DELIMITER ;`
];

//initial database setup
(async () => {
  for (const query of dbInit) {
    try {
      await pool.query(query);
    } catch (err) {
      throw new Error(err)
    }
  }
})()



pool.getConnection((err, connection) => {
  if (err) {
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
      console.error('Database connection was closed.')
    }
    if (err.code === 'ER_CON_COUNT_ERROR') {
      console.error('Database has too many connections.')
    }
    if (err.code === 'ECONNREFUSED') {
      console.error('Database connection was refused.')
    }
  }

  console.log('connected as id ' + connection.threadId);

  connection.on('error', function (err) {
    console.log("[mysql error]", err);
    res.json({ "code": 100, "status": "Error in connection database" });
    return;
  });

  if (connection) connection.release()
  return
})

// dbQuery = async (query) => {
//   try {
//     var result = await pool.query(query)
//   } catch (err) {
//     throw new Error(err)
//   }
// }

module.exports = pool










