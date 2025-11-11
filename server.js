import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import db from "./config/db.js";

import salesRoutes from "./config/routes/sales.js";
import procurementRoutes from "./config/routes/procurements.js";

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use("/api/sales", salesRoutes);
app.use("/api/procurements", procurementRoutes);

app.get("/", (req, res) => res.send("GDC Backend Running..."));

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
