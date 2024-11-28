import 'package:flutter/material.dart';
import '../Common/DottedLineWidget.dart';
import '../Models/meal_model.dart';
import 'MealEdit/meal_edit_screen.dart';

class MealDetailScreen extends StatelessWidget {
  final MealModel meal;

  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        // title: Text(
        //   meal.mealName,
        //   style: const TextStyle(
        //     fontFamily: 'Poppins',
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,
        //   ),
        // ),
        backgroundColor: const Color.fromRGBO(203, 189, 154, 1),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(203, 189, 154, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Your main container
                Container(
                  height: 390,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(203, 189, 154, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MealEditScreen(),
                                  ),
                                );
                              },
                              child: CircleAvatar(child: Icon(Icons.edit_outlined),backgroundColor: Colors.white,))
                       ,SizedBox(width: 10,),
                          GestureDetector(onTap:(){_showRemoveRecipeDialog(context);},child: CircleAvatar(child: Icon(Icons.delete_outline),backgroundColor: Colors.white,))
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                    // Your existing content inside the container
                  ),
                ),
Positioned(
    top:65,
    // right:317,

    child: Stack(
      clipBehavior: Clip.none, // Allows widgets to overflow the bounds of the Stack
      children: [
        // Rectangular white container
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20) ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('${meal.proteinPercentage}g\nProt.',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),

                Text('${meal.carbsPercentage}g\nCarbs',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                Text('${meal.fatsPercentage}g\nFats',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                Text('${meal.kcal}g\nKcal', style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),]
            ),
          ),
        ),

        // Positioned circular containers on the right edge
        Positioned(
          top: 10, // Adjust for spacing from the top
          right: -40, // Shift outside the right edge
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(211, 200, 172, 0.80)
                , // Change color as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(child: Text('50%')),
              ),
              SizedBox(height: 15,),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(222, 202, 193, 0.70),
                 // Change color as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(child: Text('10%')),
              ),
              SizedBox(height: 15,),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(237, 208, 185, 0.70), // Change color as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(child: Text('20%')),
              ),
              SizedBox(height: 15,),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(211, 200, 172, 0.80), // Change color as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 3)
                    ),
                  ],
                ),
                child: Center(child: Text('20%')),
              ),
            ]
          ),
        ),
      ],
    ),
),

                // Circular white-bordered container above the main container
                Positioned(
                  top: -30,
                  left: 150,// Adjust this value to position it above the main container
                  // left: MediaQuery.of(context).size.width / 2 - 50, // Center horizontally
                  child: Container(
                    padding: EdgeInsets.all(15),
                    height: 400, // Height of the circular container
                    width: 400, // Width of the circular container
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(203, 189, 154, 1),
                      border: Border.all(
                        color: Colors.grey.shade300, // Adjust border color
                        width: 4, // Border width
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                     child:  ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    meal.mealImage,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 5,left: 20,right: 15,bottom: 15),
              width: double.infinity,
              height: 1000,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                // padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  Text(meal.mealName,style: TextStyle(fontFamily: 'AmaticSC',fontWeight: FontWeight.bold,fontSize: 50),),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(100), // A large enough value to make it circular
                            child: Image.asset(
                              'assets/images/laura.png',
                              width: 100, // Width and height should be equal for a circular shape
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),

                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('by',style: TextStyle(fontFamily: 'Poppins',fontSize: 20,color: Color.fromRGBO(160, 134, 68 ,1)),),
                            SizedBox(height: 5),
                            Text("Laura & Phil",style: TextStyle(fontFamily: 'Gistesy',fontSize: 35,color: Color.fromRGBO(160, 134, 68 ,1)),)
                            ,SizedBox(height: 15,),



                          ],
                        ),
                      ],
                    ),
                    SimpleDottedDivider(
                      color: Colors.grey, // Dot color
                             // Size of each dot
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage('assets/icons/Time left.png'),size: 40,color: Colors.black54,),
                            SizedBox(width: 10,),
                            Text('Prep Time :',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',color: Colors.black54),)
                          ],
                        ),
                        Text('Boiling Time:',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',color: Colors.black54),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // First Container
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 232, 231, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            'Lunch',
                            style: TextStyle(
                              color: Colors.black, // Text color
                              fontFamily: 'Poppins', // Font family
                              fontSize: 16, // Font size
                            ),
                          ),
                        ),
                        // Second Container
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 232, 231, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            'Express Recipe',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        // Third Container
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 232, 231, 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            'Low Carb',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(200, 179, 126, 1), // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Rounded edges
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding for the button
                      ),
                      child: const Text(
                        'Add to Plan',
                        style: TextStyle(
                          fontSize: 16, // Text size
                          fontWeight: FontWeight.bold, // Text weight
                          color: Colors.black, // Text color
                          fontFamily: 'Poppins', // Font family
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('1 Servings',style: TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.w700),),
                   SizedBox(height: 10),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width: 10, // Bullet width
                            height: 10, // Bullet height
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(145, 98, 41, 1), // Bullet color
                              shape: BoxShape.circle, // Makes it circular
                            ),
                          ),
                        ),
                        Expanded(flex:2,child: Container(

                          child: Text('0.05gm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Poppins'),),
                        )),
                        Expanded(flex:3,child: Container(
                          child: Text('Protein',style: TextStyle(fontSize: 20,fontFamily: 'Poppins')),
                        )),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width: 10, // Bullet width
                            height: 10, // Bullet height
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(145, 98, 41, 1), // Bullet color
                              shape: BoxShape.circle, // Makes it circular
                            ),
                          ),
                        ),
                        Expanded(flex:2,child: Container(

                          child: Text('0.01gm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Poppins'),),
                        )),
                        Expanded(flex:3,child: Container(
                          child: Text('Carbs',style: TextStyle(fontSize: 20,fontFamily: 'Poppins')),
                        )),

                      ],
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Nutrients


  // Helper Widget for Info

  }

void _showRemoveRecipeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text(
        'Remove Recipe',
        textAlign: TextAlign.start,
        style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
      ),
      content: const Text(
        'Are you sure you want to remove this recipe from the saved collection?',
        textAlign: TextAlign.start,
        style: TextStyle(fontFamily: 'Poppins'),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(

              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 40,right: 40),
                backgroundColor: const Color.fromRGBO(209, 213, 219, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
            ElevatedButton(
              onPressed: () {
                // Add delete functionality
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 40,right: 40),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text('Delete', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    ),
  );
}