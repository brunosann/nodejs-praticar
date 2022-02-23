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

export const show = async (req: Request, res: Response) => {
  const { id } = req.params;
  const recipe = await Recipe.findByPk(id);
  res.json(recipe);
};

export const update = async (req: Request, res: Response) => {
  const { id } = req.params;

  const errors = validationResult(req);
  if (!errors.isEmpty()) return res.status(422).json({ errors: errors.mapped() });

  await Recipe.update(req.body, { where: { id: id } });
  res.json(req.body);
};

export const destroy = async (req: Request, res: Response) => {
  const { id } = req.params;
  const recipe = await Recipe.findByPk(id);
  await recipe?.destroy();
  res.json({});
};
