import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Text(
                'Explore',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed:() {
                  
                }, 
                icon: const Icon(Icons.menu,size: 32,)
              )
            ],
          ),
        ),
      ),
    );
  }
}