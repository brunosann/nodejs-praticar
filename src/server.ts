import express, { Request, Response } from "express";
import dotenv from "dotenv";
import path from "path";
import router from "./routes";

dotenv.config();

const server = express();

server.use(express.static(path.join(__dirname, "../public")));

server.use(express.urlencoded({ extended: true }));
server.use(express.json());

server.use("/recipes", router);

server.use((req: Request, res: Response) => {
  res.status(404).json({ message: "Página não encontrada!" });
});

server.listen(process.env.PORT, () => {
  console.log(`Running in http://localhost:${process.env.PORT}`);
});
