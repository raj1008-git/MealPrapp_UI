import 'package:flutter/material.dart';

import '../../../Data/saved_recipe_list.dart';
import '../../meal_detail_screen.dart';

class SavedRecipeScreen extends StatelessWidget {
  const SavedRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(203, 189, 154, 1),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(203, 189, 154, 1),
        centerTitle: true,
        title: Text(
          'Saved Recipes',
          style: TextStyle(
              color: Colors.white, fontSize: 48, fontFamily: 'Gistesy'),
        ),
      ),
      body: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search in Recipes Titles And Ingredients',
                hintStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 15),
                prefixIcon:
                    const Icon(Icons.search, size: 33, color: Colors.black),
                filled: true,
                fillColor: const Color.fromRGBO(255, 255, 255, 0.6),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // SizedBox(height: 5,),
          Padding(
            padding:
                const EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 203, 189, 154),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Text(
                        'Clear all',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(
                            160,
                            134,
                            68,
                            1,
                          ),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Filter',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Sort recipe by',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:
                                              'Poppins', // Set font family
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Newest',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18,
                                              color: Color.fromRGBO(75, 85, 99,
                                                  1), // Set font family
                                            ),
                                          ),
                                          Radio<int>(
                                            value: 1,
                                            groupValue: 1,
                                            onChanged: (_) {},
                                            activeColor: const Color.fromRGBO(
                                                225,
                                                213,
                                                184,
                                                1), // Radio button color
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Favourites',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18,
                                              color: Color.fromRGBO(75, 85, 99,
                                                  1), // Set font family
                                            ),
                                          ),
                                          Radio<int>(
                                            value: 2,
                                            groupValue: 1,
                                            onChanged: (_) {},
                                            activeColor: const Color.fromRGBO(
                                                225,
                                                213,
                                                184,
                                                1), // Radio button color
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'A to Z',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(75, 85, 99,
                                                  1), // Set font family
                                            ),
                                          ),
                                          Radio<int>(
                                            value: 3,
                                            groupValue: 1,
                                            onChanged: (_) {},
                                            activeColor: const Color.fromRGBO(
                                                225,
                                                213,
                                                184,
                                                1), // Radio button color
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'Sort',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  )
                ]),
          ),
          Expanded(
            child: Container(
              // padding: EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Two containers per row
                    crossAxisSpacing: 20, // Horizontal spacing
                    mainAxisSpacing: 26, // Vertical spacing
                    childAspectRatio: 0.8, // Adjust the height and width ratio
                  ),
                  itemCount: savesMealList.length,
                  itemBuilder: (context, index) {
                    final meal = savesMealList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MealDetailScreen(meal: meal),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(250, 250, 250, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 9,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Image.asset(
                                meal.mealImage,
                                height: 150,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 7, right: 7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${meal.kcal} kcal     ${meal.preparationTime} min',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(160, 134, 68, 1),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    meal.mealName,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}