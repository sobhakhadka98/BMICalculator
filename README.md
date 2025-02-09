# BMI Calculator

## Overview
This is a simple iOS application for calculating Body Mass Index (BMI). The app allows users to enter their height and weight, select their preferred measurement system (SI or Imperial), and calculates their BMI accordingly. It also displays the BMI category based on the calculated value.

## Features
- Accepts height and weight inputs
- Supports both SI (kg, cm) and Imperial (lb, in) measurement systems
- Validates user input (no negative or empty values)
- Calculates BMI using the formula:
  - **SI System**: BMI = weight (kg) / height² (m²)
  - **Imperial System**: BMI = (weight (lb) / height² (in²)) * 703
- Displays BMI category (Underweight, Normal weight, Overweight, Obese)

## How to Use
1. Select the measurement system (SI or Imperial).
2. Enter your height and weight.
3. Tap the calculate button to get your BMI result.
4. The app will display the BMI value and the corresponding category.

## BMI Categories
- **Underweight**: BMI < 18.5
- **Normal weight**: 18.5 ≤ BMI < 24.9
- **Overweight**: 25 ≤ BMI < 29.9
- **Obese**: BMI ≥ 30

## Requirements
- iOS device or simulator
- Xcode installed for development

## Reference
The BMI classification is based on the guidelines from the [National Heart, Lung, and Blood Institute](https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmi-m.htm).

