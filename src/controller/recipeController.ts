import { Request, Response } from "express";
import { validationResult } from "express-validator";
import { Recipe } from "../models/Recipe";

export const index = async (req: Request, res: Response) => {
  const recipes = await Recipe.findAll();
  res.json(recipes);
};

export const store = async (req: Request, res: Response) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) return res.status(422).json({ errors: errors.mapped() });

  await Recipe.create(req.body);
  res.status(201).json();
};
