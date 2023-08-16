

import 'package:flutter/material.dart';
import 'package:food_bank/widgets/New.dart';
import 'package:food_bank/widgets/sectionCard.dart';

import '../widgets/title.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();

}

List icon=[Icons.ac_unit_outlined,Icons.access_alarm_rounded,Icons.accessibility_outlined,Icons.add,Icons.add_business_rounded,Icons.ac_unit_outlined,Icons.access_alarm_rounded,Icons.accessibility_outlined,Icons.add,Icons.add_business_rounded];
List titles=['ahmed','abdllah','mahmoud','mohamed','ibrahim','ahmed','abdllah','mahmoud','mohamed','ibrahim',];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),

     // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox (height: 20),
                customTitle(title: 'Explore',fontSize: 30,),
                SizedBox (height: 10),

            Row(
              children: [
                 Expanded(
                  child: Container(
                    height: 50,


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                        ,color: Colors.transparent,
                       border: Border.all(width: 2 ,color: Colors.grey)
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField (
                        decoration: InputDecoration(




                            hintText: 'find a Food',
                          prefixIcon:Icon(Icons.search,color:Colors. indigo) ,
                          suffixIcon:Icon(Icons.add_road_rounded)  ,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
                SizedBox (height: 10),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titles.length,
                      itemBuilder:((context, index) {
return sectionCard(icon: icon[index], title: titles[index]);
                  })),
                ),
                SizedBox (height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,bottom: 5),
                  child: customTitle(title: 'Popular Food',fontSize: 20,),
                ),
                Container(
                 height: 200,

                  child:
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 20,

                      itemBuilder: (context, index) {
                        return  NewWidget();
                      },)
                  ,
                ),
                SizedBox (height: 10),
                Padding(
                  padding: const EdgeInsets.only( left: 10.0),
                  child: customTitle(title: 'Top offers',fontSize: 20,),
                ),
                Container(
                  height: 300,

                  child:
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,

                    itemBuilder: (context, index) {
                      return  ahr();
                    },)
                  ,
                ),
 



            ],
            ),
          ),
        ),
      ),

    );
  }

  Widget ahr() {
    return  Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Container(
                  /////////////////////////////////////////////

                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage('https://media.istockphoto.com/id/1403973419/photo/table-top-of-food-spread-on-table.webp?b=1&s=170667a&w=0&k=20&c=82mAqd_JUxsEsYRlrQCRIvpEVWkwdB3aiw5DMh74N5I=')
                          ,fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width:  20,),

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


 

 



