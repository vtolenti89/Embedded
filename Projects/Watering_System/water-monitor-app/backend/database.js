var mysql = require('mysql')
var util = require('util')

// var pool = mysql.createPool({
//   connectionLimit: 10,
//   host: 'localhost',
//   user: 'root',
//   password: 'root',
//   database: 'votolent_iot',
//   socketPath: process.platform === 'darwin' ? '/Applications/MAMP/tmp/mysql/mysql.sock' : ''
// })

var pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'votolent',
  password: 'Torotciva21!',
  database: 'votolent_iot',
  socketPath: process.platform === 'darwin' ? '/Applications/MAMP/tmp/mysql/mysql.sock' : ''
})
//convert queries into promises
pool.query = util.promisify(pool.query)

var dbInit = [
  'SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";',
  'SET time_zone = "+00:00";',
  `CREATE DATABASE IF NOT EXISTS votolent_iot`,
  `USE votolent_iot`,
  //Table for the garden system
  `CREATE TABLE IF NOT EXISTS garden_system (
    id int(5) NOT NULL AUTO_INCREMENT,
    waterLevel int(5),
    heartBeat char(20),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB  DEFAULT CHARSET=latin1`,
  //Mock data
  // `INSERT INTO garden_system (waterLevel) VALUES ('50')`,
  `INSERT INTO garden_system (waterLevel, heartBeat)
  SELECT * FROM (SELECT '50', 'notok') AS tmp
  WHERE NOT EXISTS (
    SELECT id FROM garden_system WHERE id = 1
) LIMIT 1;`
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










