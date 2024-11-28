import 'package:flutter/material.dart';

import '../MyCollectionWidget/recipi_container.dart';

class MyCollectionScreen extends StatelessWidget {
  const MyCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(203, 189, 154, 1),
        toolbarHeight: 100,
        leading: null,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(
              AssetImage('assets/icons/Vector 9.png'),
              size: 60,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'My Collection',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Gistesy', fontSize: 48),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(203, 189, 154, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RecipeContainer(
              circleAvatarColors: const Color.fromRGBO(203, 189, 154, 1),
              recipeContainerIcon: Icons.search,
              recipeContainerType: 'Saved recipes',
              recipeContainerDescription: 'Discover new recipes',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            RecipeContainer(
              circleAvatarColors: const Color.fromRGBO(0, 0, 0, 1),
              recipeContainerIcon: Icons.add,
              recipeContainerType: 'My recipes',
              recipeContainerDescription: 'Create your own recipes',
              onPressed: () {},
            ),
            // Second container
          ],
        ),
      ),
    );
  }
}