// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/// EXPECTED OUTPUT:
/// Name: John Doe, Age: 25, Height: 5.9, Is Student: true
/// BMI: 22.5
/// Grade: B

import 'dart:math';

// 1. Create variables of different data types: String, int, double, bool
// TODO: Add your variables here
String name = "John Doe";
int age = 25;
double height = 5.9; // assuming this height is in feet not feet.inches
// because 5.9 feet != 5 feet 9 inches; 5.9 feet = 70.8 inches or 5 feet
// and 10.8 inches (12 * 0.9 feet = 10.8 inches)

bool isStudent = true;

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// TODO: Implement the calculateBMI function
double calculateBMI(double weight, double height) {
  // TODO: Calculate BMI = weight / (height * height)
  return weight / (height * height);
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// TODO: Implement the getGrade function
String getGrade(int score) {
  // TODO: Add your logic here
  String grade = "F";

  if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  }

  return grade;
}

double roundToDecimalPlaces(double value, int places) {
  if (value.isNaN || value.isInfinite) {
    return value;
  }

  num factor = pow(10, places);

  int intValue = (value * factor).toInt();

  return intValue / factor;
}

void main() {
  // TODO: Initialize your variables with appropriate values

  // Variables have been initialized above in the global space
  // because the question1.dart by default put the required variables there.

  // TODO: Calculate BMI and grade

  // Since the
  double weight = 72.8; // kg

  // divide the result of calculateBMI by (0.3048 * 0.3048) to convert to
  // what it would have been if height was in meters
  double bmi =
      roundToDecimalPlaces(calculateBMI(weight, height) / (0.3048 * 0.3048), 1);
  // because formula for BMI = weight in kg / ((height in meters) * (height in meters))

  String grade = getGrade(85);

  // TODO: Use string interpolation to display the results as shown in expected output
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
