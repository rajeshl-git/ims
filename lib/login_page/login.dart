import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rit_ims/dashboard/dashboard.dart';
import 'package:rit_ims/textform_design/textform.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key, });

  @override
  State<LogInScreen> createState() => _SignUpState();
}


class _SignUpState extends State<LogInScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.white
                ],
                ),
            ),
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/splash/rit_nob.png"),width: 350,),
                ],
              ),
              SingleChildScrollView(
                child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          const SizedBox(height: 10,),
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
                          
                    const SizedBox(height: 10,),
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
                    
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(2, 137, 255, 1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> const DashBoard()));
                                  }                             
                              },
                            
                            child:const Text("SignUp",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                        ),
              ),
            ]
          ),
        ),
        ),
      )
    );
  }
}