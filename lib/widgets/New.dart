import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [
                Container(

                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: NetworkImage('https://media.istockphoto.com/id/1403973419/photo/table-top-of-food-spread-on-table.webp?b=1&s=170667a&w=0&k=20&c=82mAqd_JUxsEsYRlrQCRIvpEVWkwdB3aiw5DMh74N5I=')
                          ,fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: 14,),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pasta With Ham', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                        Row(
                          children: [
                            Text('4.2'),
                            Icon(Icons.star, color: Colors.indigo,size: 15,),
                            Icon(Icons.star, color: Colors.indigo,size: 15,),
                            Icon(Icons.star, color: Colors.indigo,size: 15,),
                            Icon(Icons.star, color: Colors.grey,size: 15,),
                            Text('(12+)'),
                            SizedBox(width: 23,),
                            Text('25 \$', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    ) ;

  }
}