import { Router } from "express";
import * as recipeController from "../controller/recipeController";
import storeRecipeRequest from "../requests/storeRecipeRequest";
import updateRecipeRequest from "../requests/updateRecipeRequest";

const router = Router();

router.get("/", recipeController.index);
router.post("/", storeRecipeRequest, recipeController.store);
router.get("/:id", recipeController.show);
router.put("/:id", updateRecipeRequest, recipeController.update);
router.delete("/:id", recipeController.destroy);

export default router;
