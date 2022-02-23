require('dotenv').config()
<<<<<<< HEAD
module.exports = {
  "development": {
  // "username": process.env.DB_USERNAME,
  // "password": process.env.DB_PASSWORD,
  // "database": process.env.DB_DATABASE,
  // "host": process.env.DB_HOST,
  // "port": process.env.DB_PORT,
  // "dialect": process.env.DB_DIALECT

  username: 'root',
  password: null,
  database: 'rikolinos',
  host: '127.0.0.1',
  port: 3306,
  dialect: 'mysql'

  },

  "production": {
  "username": process.env.DB_USERNAME,
  "password": process.env.DB_PASSWORD,
  "database": process.env.DB_DATABASE,
  "host": process.env.DB_HOST,
  "port": process.env.DB_PORT,
  "dialect": process.env.DB_DIALECT
  },
  

=======
module.exports =
{
    "development": {
    "username": process.env.DB_USERNAME,
    "password": process.env.DB_PASSWORD,
    "database": process.env.DB_DATABASE,
    "host": process.env.DB_HOST,
    "port": process.env.DB_PORT,
    "dialect": process.env.DB_DIALECT,
},
    "production": {
    "username": process.env.DB_USERNAME,
    "password": process.env.DB_PASSWORD,
    "database": process.env.DB_DATABASE,
    "host": process.env.DB_HOST,
    "port": process.env.DB_PORT,
    "dialect": process.env.DB_DIALECT
}
>>>>>>> fa2a9b882428e4a22577d382a667d97c6568db1a
}
