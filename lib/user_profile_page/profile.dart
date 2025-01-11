import 'package:flutter/material.dart';
import 'package:rit_ims/dashboard/dashboard.dart';
import 'package:rit_ims/textform_design/profile_name_function.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSearchBarVisible = false;
  bool isarrowback = true;
  void toggleSearchBarVisibility() {
    setState(() {
      isSearchBarVisible = !isSearchBarVisible;
      isarrowback = !isarrowback;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 202, 236, 1),
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(200, 202, 236, 1),
        shadowColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (builder) => DashBoard()));
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromRGBO(200, 202, 236, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            child: Image(
                              image: AssetImage("assets/photos/211721118040.jpg"),
                            )),
                      ),
                      Text(
                        "Rajesh L",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("2021-2025/B.E Computer & Communication", style: TextStyle(color: Colors.black),),
                      Text("Engineering"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xFFF5F3FF),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("  Students Info", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    ProfileName(
                      t2: "Full Name",
                      t3: "Rajesh L",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Register Number",
                      t3: "211721118040",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Phone Number",
                      t3: "7358053573",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Email                                                      ",
                      t3: "rajesh.l.2021.cce@ritchennnai.edu.in"
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 78,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFF5F3FF)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Personal Info", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
                          IconButton(onPressed: toggleSearchBarVisibility, icon: Icon(isarrowback ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_left_outlined),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2,),
              Visibility(
                visible: isSearchBarVisible,
                child: Container(
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color(0xFFF5F3FF),
                ),
                child: Column(
                  children: [
                    
                    ProfileName(
                      t2: "Full Name",
                      t3: "Rajesh L",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Email                                                      ",
                      t3: "rajesh.l.2021.cce@ritchennai.edu.in",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Phone Number",
                      t3: "7358053573",
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "DOB",
                      t3: "03/08/2003"
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Age",
                      t3: "19"
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Late Entry(yes/no)",
                      t3: "no"
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),

                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Day scholar/Hostler",
                      t3: "Day Scholar"
                    ),Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Blood Group",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: "A+ve"
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Mother Tongue",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),
                    Divider(color: Colors.black, thickness: 0.2, height: 5,),
                    ProfileName(
                      t2: "Adhar Number",
                      t3: ""
                    ),
                  ],
                ),
              ),  
              ),
              SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
    );
  }
}
