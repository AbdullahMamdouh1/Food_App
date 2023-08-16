


import 'package:flutter/material.dart';

class sectionCard extends StatelessWidget {
  const sectionCard({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 8,right: 8.0,),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)

            ),
            child: Icon(icon,color: Colors.indigo,size: 30,)
            ,

          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(title),
          )
        ],
      ),
    );

  }
}