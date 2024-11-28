class MealModel {
  final String mealImage; 
  final String mealName;
  final double proteinPercentage;
  final double carbsPercentage;
  final double fatsPercentage;
  final int kcal;
  final int preparationTime;

  MealModel({
    required this.mealImage,
    required this.mealName,
    required this.proteinPercentage,
    required this.carbsPercentage,
    required this.fatsPercentage,
    required this.kcal,
    required this.preparationTime,
  });
}