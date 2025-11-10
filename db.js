const mysql = require('mysql2/promise');
const dotenv = require('dotenv');

// Load environment variables from .env (if present)
dotenv.config();

const dbConfig = {
    host: process.env.DB_HOST || '127.0.0.1',
    port: process.env.DB_PORT ? Number(process.env.DB_PORT) : 3306,
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || '',
    database: process.env.DB_NAME || 'mugi',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
};

// Print non-sensitive DB config for debugging (don't print password)
console.log('DB config:', { host: dbConfig.host, port: dbConfig.port, user: dbConfig.user, database: dbConfig.database });

const pool = mysql.createPool(dbConfig);

async function testConnection() {
    const connection = await pool.getConnection();
    connection.release();
    return true;
}

// Quick check when run directly
if (require.main === module) {
    testConnection()
        .then(() => {
            console.log('Connected successfully to the DB');
            process.exit(0);
        })
        .catch((err) => {
            console.error('An error occurred:', err);
            process.exit(1);
        });
}

module.exports = pool;
module.exports.testConnection = testConnection;