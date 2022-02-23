import { body } from "express-validator";

const updateRecipeRequest = [
  body("title").optional().isString().withMessage("Sómente caracteres alfabéticos"),
  body("recipe").optional().isString().withMessage("Sómente caracteres alfabéticos"),
  body("ingredients").optional().isArray().withMessage("Esperado uma matriz"),
  body("preparation_method")
    .optional()
    .isString()
    .withMessage("Sómente caracteres alfabéticos"),
];

export default updateRecipeRequest;
