import { Router } from "express";
import * as recipeController from "../controller/recipeController";
import storeRecipeRequest from "../requests/storeRecipeRequest";

const router = Router();

router.get("/", recipeController.index);
router.post("/", storeRecipeRequest, recipeController.store);

export default router;
