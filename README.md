# MacroIntakeCalculator
A simple Swift program to calculate Basal Metabolic Rate (BMR), Total Daily Energy Expenditure (TDEE), and recommended daily macronutrient intake based on user weight, height, age, and activity level.

## Features

- **Calculate BMR** using the Mifflin-St Jeor equation.
- **Determine TDEE** based on BMR and user’s activity level.
- **Estimate daily macronutrient intake** for protein, carbohydrates, and fat in grams.

## Formulae Used

1. **Basal Metabolic Rate (BMR)** (for men):
   $\text{BMR} = (10 \times \text{weight in kg}) + (6.25 \times \text{height in cm}) - (5 \times \text{age}) + 5$

3. **Total Daily Energy Expenditure (TDEE)**:
   $\\text{TDEE} = \text{BMR} \times \text{Activity Factor}\$

4. **Macronutrient Conversion** (for a moderate diet):
   - Protein: 30% of TDEE / 4 calories per gram
   - Carbohydrates: 50% of TDEE / 4 calories per gram
   - Fat: 20% of TDEE / 9 calories per gram

## Example Usage

For a person who weighs 110 kg, is 161 cm tall, 30 years old, and moderately active:

```swift
import Cocoa

let weight = 110.0       // 110 kg
let height = 161.0       // 161 cm
let age = 30.0           // 30 years old
let activityFactor = 1.55

// BMR calculation
let bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5
let tdee = bmr * activityFactor

// Macronutrient intake calculation
let proteinPercentage = 0.30
let carbohydratesPercentage = 0.50
let fatPercentage = 0.20

let proteinCalories = tdee * proteinPercentage
let carbohydratesCalories = tdee * carbohydratesPercentage
let fatCalories = tdee * fatPercentage

let proteinIntake = (proteinCalories / 4).rounded()
let carbohydratesIntake = (carbohydratesCalories / 4).rounded()
let fatIntake = (fatCalories / 9).rounded()

print("BMR: \(bmr.rounded()) calories/day")
print("TDEE: \(tdee.rounded()) calories/day")
print("Daily Intake:\n Protein: \(proteinIntake)g\n Carbohydrates: \(carbohydratesIntake)g\n Fat: \(fatIntake)g")
```

## Activity Factors

| Activity Level  | Activity Factor |
| ------------- | ------------- |
| Sedentary  | 1.2  |
| Lightly Active  | 1.375  |
| Moderately Active  | 1.55  |
| Very Active  | 1.725  |
| Extra Active  | 1.9  |
