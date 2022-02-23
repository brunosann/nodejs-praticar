import { body } from "express-validator";

const storeRecipeRequest = [
  body("title").exists().withMessage("Campo obrigatório"),
  body("recipe").exists().withMessage("Campo obrigatório"),
  body("ingredients").exists().withMessage("Campo obrigatório"),
  body("ingredients").isArray().withMessage("Esperado uma matriz"),
  body("preparation_method").exists(),
];

export default storeRecipeRequest;
