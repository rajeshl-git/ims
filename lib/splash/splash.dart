import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rit_ims/dashboard/dashboard.dart';
// ignore: unused_import
import 'package:rit_ims/login_page/login.dart';
import 'package:rit_ims/textform_design/textform.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   final _formkey = GlobalKey<FormState>();
  final TextEditingController regno = TextEditingController();
  final TextEditingController phoneno = TextEditingController();
  IconData iconPassword = CupertinoIcons.eye_fill;
	bool obscurePassword = true;
	bool signUpRequired = true;

	bool containsUpperCase = false;
	bool containsLowerCase = false;
	bool containsNumber = false;
	bool containsSpecialChar = false;
	bool contains8Length = false;
  bool animate = true;
  bool isLoading = false;
  /*@override
  void initState() {
    super.initState();
    startAnimation();
  }*/



  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.75,
           
           
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Animate(
                    effects: [FadeEffect(duration: 3.seconds),SlideEffect(end: Offset(0.0, -0.8),delay: 4.seconds,duration: 2.seconds)],
                    child: Padding(
                     padding: const EdgeInsets.only(left: 40,right: 40),
                      child: Column(
                        children: [
                          
                            
                            Image(image: AssetImage("assets/splash/rit_nob.png"),width: MediaQuery.of(context).size.width-130,),
                        
                          Text(
                            "BELEIVE IN THE POSSIBILITIES",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,),),
                            Text(
                            "AN AUTONOMOUS INSTITUTION",
                            style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 247, 119, 0)),),
                        ],
                      ),
                    ),
              
                  ),
                 
                
                  
                  ],
                ),
              
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.335,
           
              child: Column(
                children: [
                  Animate(
              effects: [SlideEffect(begin: Offset(0.0, 0.4),end: Offset(00, -0.1),delay: 4.seconds,duration: 2.seconds),FadeEffect(duration: 2.seconds)],
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    children: [
                       MyTextForm(
                                        controller: regno,
                                        hintText: 'Reg no',
                                        obscureText: false,
                                        keyboardType: TextInputType.name,
                                        prefixIcon: const Icon(CupertinoIcons.number),
                                        validator: (val) {
                                          if(val!.isEmpty) {
                                            return 'Please fill in this field';													
                                          } else if(val.length != 12) {
                                            return 'Enter valid Reg no';
                                          }
                                          return null;
                                        }
                                      ),
                                      SizedBox(height: 10,),
                                      MyTextForm(
                                        controller: phoneno,
                                        hintText: 'Phone no',
                                        obscureText: obscurePassword,
                                        keyboardType: TextInputType.visiblePassword,
                                        prefixIcon: const Icon(CupertinoIcons.lock_fill),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              obscurePassword = !obscurePassword;
                                              if(obscurePassword) {
                                                iconPassword = CupertinoIcons.eye_fill;
                                              } else {
                                                iconPassword = CupertinoIcons.eye_slash_fill;
                                              }
                                            });
                                          },
                                          icon: Icon(iconPassword),
                                        ),
                                        validator: (val) {
                                          if(val!.isEmpty) {
                                            return 'Please fill in this field';			
                                          } else if(val.length != 10) {
                                            return 'Please enter a valid password';
                                          }
                                          return null;
                                        }
                                      ),
                                      SizedBox(height: 20,),
                                      SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              style:  ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(2, 137, 255, 1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  Future.delayed(Duration(seconds: 2),(){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>DashBoard()));
                                  });
                                
                                 
                                    }                             
                                },
                              
                              child: isLoading?CircularProgressIndicator(color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white),),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
  /*Future startAnimation() async {
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      setState(() => animate = true);
    }
    await Future.delayed(const Duration(seconds: 4 ));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => const LogInScreen()),
    );
  }*/
}
