const mysql = require("mysql2/promise");

const pool = mysql.createPool({
    host: '127.0.0.1',
    port: 3306,
    user: 'smarthealth',
    password: 'smarthealth',
    database: 'mugi',
});

async function testConnection() {
    try {
        const connection = await pool.getConnection();
        connection.release();
        console.log("Database connected successfully.");
        return true;
    } catch (err) {
        console.error("Error connecting to the database:", err);
        throw err;
    }
}

// When run directly, test the connection and exit with code 1 on failure.
if (require.main === module) {
    testConnection().catch(() => process.exit(1));
}

// Export the pool (backwards compatible) and attach the test helper.
module.exports = pool;
module.exports.testConnection = testConnection;