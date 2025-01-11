

import 'package:flutter/material.dart';
import 'package:rit_ims/drawer/drawer.dart';
import 'package:rit_ims/spacefunction/space.dart';

import 'package:table_calendar/table_calendar.dart';

class DashBoard extends StatefulWidget {
  
    const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isSearchBarVisible = false;
  // ignore: prefer_typing_uninitialized_variables
  var controller ;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
  void toggleSearchBarVisibility() {
    setState(() {
      isSearchBarVisible = !isSearchBarVisible;
    });
  }
  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.8,
    );
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(41,44,49,0.9),
      drawer: const NavigationDrawerWidget(),
      body: CustomScrollView( 
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            expandedHeight: 3,
            backgroundColor:Color.fromRGBO(41,44,49,0.9),
            leading: 
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade800
                        ),
                      child: 
                          IconButton(
                            onPressed: _openDrawer,
                            icon: const Icon(Icons.menu,color: Colors.white,)
                            ),
                  
                        
                      
                    
                                
                              ),
                ),
              actions: [
               Row(
                 children: [
                  const Text("Hi, Rajesh!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  const SpaceFunction(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                         decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade800
                        ),
                         child: IconButton(
                          onPressed: toggleSearchBarVisibility,
                                     icon: const Icon(Icons.search,color: Colors.white,), // Replace with your desired end icon
                                   ),
                       ),
                   ),
                 ],
               ),

        ],  
              
          ),
          
          SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
        children: [
          Image(image: AssetImage("assets/splash/rit_nob.png"),width: 190,)
          
        ],
      ),
    ),
  ),
  const SliverToBoxAdapter(
    child: SizedBox(
      height: 10,
    ),
  ),
  SliverToBoxAdapter(
            child: Visibility(
              visible: isSearchBarVisible,
              
              child: Padding(
                padding: const EdgeInsets.only(left: 17,right: 17,top: 6,bottom: 6),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(200, 202, 236, 1), 
                  ),
                  child: SearchBar(
                    
                    hintText: "search..",
                    leading: Icon(Icons.search_outlined),
                  ),
                )
              )),
          ),
         
          
          SliverToBoxAdapter(
          
                child: Container(
                  padding: const EdgeInsets.only(top:15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                      color: Color.fromRGBO(200, 202, 236, 1), 
                      
                      ),
                  child: Column(
                    children: [
                      const Icon(Icons.drag_handle_outlined),
                      const SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width-30,
                        height: 270,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(238, 240, 248, 0.859),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 40,top: 10),
                               child: Row(
                                 children: [
                                   Text("Details",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold),),
                                 ]
                               ),
                             ),
                             Padding(
                              padding: EdgeInsets.only(left: 15,right: 15),
                              child: Divider(color: Colors.black54,thickness: 0.3,)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                   
                                    Material(
                                      borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color.fromRGBO(238, 240, 248, 0.859),
                                      child: InkWell(
                                        onTap: (){},
                                        splashColor: Colors.black38,
                                        child: Ink(
                                          height:49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(200, 202, 236, 1),
                                            borderRadius: const BorderRadius.all(Radius.circular(49)),
                                          ),
                                          child: const Image(image: AssetImage("assets/dashboard/book_dash.png"),color: Colors.black,)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text("Subjects",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black54))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color.fromRGBO(238, 240, 248, 0.859),
                                      child: InkWell(
                                        onTap: (){},
                                        splashColor: Colors.black38,
                                        child: Ink(
                                          height: 49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(200, 202, 236, 1),
                                            borderRadius: const BorderRadius.all(Radius.circular(49)),
                                          ),
                                          child: const Image(image: AssetImage("assets/dashboard/mark_dash.png"),color: Colors.black87,)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text("CAT marks",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black54),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color.fromRGBO(238, 240, 248, 0.859),
                                      child: InkWell(
                                        onTap: (){},
                                        splashColor: Colors.black38,
                                        child: Ink(
                                          height: 49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(200, 202, 236, 1),
                                            borderRadius: const BorderRadius.all(Radius.circular(49)),
                                          ),
                                          child: const Image(image: AssetImage("assets/dashboard/assignments_dash.png"),color: Colors.black87,)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text("Assignment",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black54))
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Column(
                                      children: [
                                        Material(
                                          borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color.fromRGBO(238, 240, 248, 0.859),
                                          child: InkWell(
                                            onTap: (){},
                                            splashColor: Colors.black38,
                                            child: Ink(
                                              height: 49,
                                              width: 49,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(200, 202, 236, 1),
                                                borderRadius: const BorderRadius.all(Radius.circular(49)),
                                              ),
                                              child: const Image(image: AssetImage("assets/dashboard/pc.png"),color: Colors.black,)
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5,),
                                        const Text("LAB Marks",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black54))
                                      ],
                                    ),
                                  
                                
                                Column(
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color.fromRGBO(238, 240, 248, 0.859),
                                      child: InkWell(
                                        onTap: (){},
                                        splashColor: Colors.black38,
                                        child: Ink(
                                          height: 49,
                                          width: 49,
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(200, 202, 236, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(49)),
                                          ),
                                          child: const Image(image: AssetImage("assets/dashboard/calendar_dash.png"))
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text("TimeTable",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black54),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(49),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color.fromRGBO(238, 240, 248, 0.859),
                                      child: InkWell(
                                        onTap: (){},
                                        splashColor: Colors.black38,
                                        child: Ink(
                                          height: 49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(200, 202, 236, 1),
                                            borderRadius: const BorderRadius.all(Radius.circular(49)),
                                          ),
                                          child: const Image(image: AssetImage("assets/dashboard/leave_dash.png"),color: Colors.black,)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text("Apply Leave",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black54))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        "Records",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: const Text(
        "See All",
        style: TextStyle(color: Colors.blue),
      ),
    )
  ],
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
  borderRadius: BorderRadius.circular(20), // Set the same borderRadius as Ink
  color: Color.fromRGBO(200, 202, 236, 1), 
  child: InkWell(
    onTap: (){},
    splashColor: Colors.black38,
    child: Ink(
      width: ((MediaQuery.of(context).size.width)-40)/2,
      height: 210,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(248, 255, 244, 210),
            Color.fromRGBO(254, 178, 177, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/dashboard/paper_dash.png",height: 80,width: 80,),
            const SizedBox(height: 15,),
            const Text("CGPA",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Icon(Icons.keyboard_double_arrow_right_outlined)
          ],
        ),
      ),
    ),
  ),
),

          const SizedBox(width: 10,),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
  borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(200, 202, 236, 1), 
            child: InkWell(
              onTap: (){},
                splashColor: Colors.black38,
              child: Ink(
                width: ((MediaQuery.of(context).size.width)-40)/2,
                height: 210,
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF5F3FF),
                   gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      
                      Color.fromRGBO(82, 207, 216, 1),
                      Color.fromRGBO(209, 122, 244, 1),
                      
                    ]
                    ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset("assets/dashboard/paper1-dash.png",height: 80,width: 80,),
                      const SizedBox(height: 15,),
                      const Text("Arrears",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      const Icon(Icons.keyboard_double_arrow_right_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
  borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(200, 202, 236, 1), 
            child: InkWell(
              onTap: (){},
                splashColor: Colors.black38,
              child: Ink(
                width: ((MediaQuery.of(context).size.width)-30)/2,
                height: 210,
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(227, 143, 184, 1),
                      Color.fromRGBO(255, 144, 155, 1),
                      
                    ]
                    ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset("assets/dashboard/attend_dash.png",height: 80,width: 80,),
                      const SizedBox(height: 15,),
                      const Text("Attendance",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      const Icon(Icons.keyboard_double_arrow_right_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
  borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(200, 202, 236, 1), 
            child: InkWell(
              onTap: (){},
                splashColor: Colors.black38,
              child: Ink(
                width: ((MediaQuery.of(context).size.width)-30)/2,
                height: 210,
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(181, 230, 78, 1),
                      Color.fromRGBO(20, 184, 210, 1),
                      
                    ]
                    ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset("assets/dashboard/school_dash.png",height: 80,width: 80,),
                      const SizedBox(height: 15,),
                      const Text("Absents",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      const Icon(Icons.keyboard_double_arrow_right_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Calendar",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          "See All",
          style: TextStyle(color: Colors.blue),
        ),
      )
    ],
  ),
  SizedBox(height: 7,),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Colors.black)
                      ),
                      child: TableCalendar(
                        headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
                        rowHeight: 35,
                        focusedDay: today,
                        firstDay: DateTime.utc(2024,01,01),
                        lastDay: DateTime.utc(2024,12,31)
                        ),
                    ),
  ),
                  SizedBox(height: 50,),
                  Divider(thickness: 1,color: Colors.black,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.copyright),
                        SizedBox(width: 3,),
                        Text("All rights reserved."),
                      ],
                    ),
                  )
  
    ],
  ),
),
                    ]
   )
                )
          )
        ]
      )
    );

                      
              
           
            
              
              
    
              

             
        
  }
}




Future<void> itemSelected(BuildContext context, int index) async {
  Navigator.of(context).pop();
  switch(index) {
  }
}


