import 'package:flutter/material.dart';

class MealEditScreen extends StatefulWidget {
  const MealEditScreen({super.key});

  @override
  State<MealEditScreen> createState() => _MealEditScreenState();
}

class _MealEditScreenState extends State<MealEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 243, 241, 1),
        title: const Text(
          'Edit Recipe',
          style: TextStyle(
              fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color.fromRGBO(247, 243, 241, 1),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(
                            255,
                            213,
                            184,
                            0.5,
                          ),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.minimize_rounded),
                        ],
                      ),
                    ),
                    Text(
                      '1 Serving',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 20),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(
                            255,
                            213,
                            184,
                            0.5,
                          ),

                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.only(left: 96, right: 96),
              child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(225, 213, 184, 0.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                    padding: EdgeInsets.all(9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 155,
                          width: 155,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '1000',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Kcal/serving',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Salad with Feta and Nuts',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.add,
                          size: 50,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Icon(
              Icons.minimize_rounded,
              size: 50,
            ),
            SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(200, 170, 126, 1),
                // Button color
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}