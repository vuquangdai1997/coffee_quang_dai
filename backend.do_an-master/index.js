const http = require("http");
const https = require("https");
const express = require("express");
const cors = require("cors");
const fs = require("fs");
const bodyParser = require(`body-parser`);

const Query = require("./Query");
const KH = require("./Router/KH");
const NV = require("./Router/NV");
const SYS = require("./Router/SYS");

const options = {
  key: fs.readFileSync(__dirname + "/key.pem"),
  cert: fs.readFileSync(__dirname + "/cert.pem"),
};



const app = express();

const server_http = http.createServer(app);
const server_https = https.createServer(options, app);

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

server_http.listen(8080, () => {
  console.log("Sever HTTP chay thanh cong");
});
server_https.listen(443, () => {
  console.log("Sever HTTPS chay thanh cong");
});

app.post("/Logkh",Query.Logkh);
app.post("/Lognv",Query.Lognv);
app.post("/Regkh",Query.Regkh);
app.use("/KH",KH);
app.use("/NV",NV);
app.use("/SYS",SYS);
