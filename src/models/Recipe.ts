import { Model, DataTypes } from "sequelize";
import { sequelize } from "../instances/mysql";

export interface RecipeInstance extends Model {
  id: number;
  title: string;
  recipe: string;
  ingredients: string[];
  preparation_method: string;
}

export const Recipe = sequelize.define<RecipeInstance>(
  "Recipe",
  {
    id: {
      primaryKey: true,
      autoIncrement: true,
      type: DataTypes.INTEGER,
    },
    title: {
      type: DataTypes.STRING,
    },
    recipe: {
      type: DataTypes.STRING,
    },
    ingredients: {
      type: DataTypes.ARRAY(DataTypes.STRING),
    },
    preparation_method: {
      type: DataTypes.STRING,
    },
  },
  {
    tableName: "recipes",
    timestamps: false,
  }
);
