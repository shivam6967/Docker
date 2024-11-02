const express = require("express");
const app = express();

const PORT = process.env.PORT || 8000;

app.get("/", (req, res) => {
  return res.json({ message: "Hey , I am NodeJs Running in Container" });
});

app.listen(PORT, () => {
  console.log(`Server is Running on PORT ${PORT}`);
});
