import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeContainer extends StatefulWidget {
  String recipeContainerType;
  IconData recipeContainerIcon;
  String recipeContainerDescription;
  Color circleAvatarColors;
  VoidCallback onPressed;
   RecipeContainer({required this. onPressed,super.key, required this.circleAvatarColors,required this.recipeContainerIcon,required this.recipeContainerType, required this.recipeContainerDescription});

  @override
  State<RecipeContainer> createState() => _RecipeContainerState();
}

class _RecipeContainerState extends State<RecipeContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child:Container(
      padding: EdgeInsets.only(top: 10,left: 10),
      decoration: const BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.recipeContainerType,style: TextStyle(fontFamily: 'Poppins',fontSize: 22,fontWeight: FontWeight.bold),)
          ,Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(child: CircleAvatar(child: Icon(widget.recipeContainerIcon,size: 32, color: Colors.white,),backgroundColor: widget.circleAvatarColors,radius: 30,),
                onTap: (){},),
                SizedBox(height: 5,),
                Text(widget.recipeContainerDescription,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black54),)
              ],
            ),
          )
        ],
      ),
    ),);
  }
}