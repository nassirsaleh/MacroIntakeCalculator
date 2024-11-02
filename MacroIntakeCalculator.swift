// MARK: Macro Intake Calculator
// Example of the macro for someone who weighs 150kg
import Cocoa

// Define the constant parameters
let weight = 110.0       // 150 kg
let height = 161.0       // 161 cm
let age = 30.0           // 30 years old

// Calculate Basal Metabolic Rate (BMR)
// Using Mifflin-St Jeor equation for men
// Formula: BMR = (10 × weight) + (6.25 × height) − (5 × age) + 5
let bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5

// Calculate Total Daily Energy Expenditure (TDEE)
// Using an activity factor of 1.55 (moderately active)
// Formula: TDEE = BMR × Activity Factor
let activityFactor = 1.55
let tdee = bmr * activityFactor

// Print the BMR and TDEE results
let result = "Your BMR is \(bmr.rounded()) calories per day, and your TDEE is \(tdee.rounded()) calories per day."
print(result)

// Macronutrient percentages
let proteinPercentage = 0.30        // 30%
let carbohydratesPercentage = 0.50  // 50%
let fatPercentage = 0.20            // 20%

// Calculate daily macronutrient intake in calories
let proteinCalories = tdee * proteinPercentage
let carbohydratesCalories = tdee * carbohydratesPercentage
let fatCalories = tdee * fatPercentage

// Convert the macronutrient to grams
let proteinIntake = (proteinCalories / 4).rounded()
let carbohydratesIntake = (carbohydratesCalories / 4).rounded()
let fatIntake = (fatCalories / 9).rounded()

// Print macronutrient intake results in grams
print("\n* Daily intake * \nProtein: \t\t\(proteinIntake)g \nCarbohydrates: \t\(carbohydratesIntake)g \nFat: \t\t\t\(fatIntake)g")
