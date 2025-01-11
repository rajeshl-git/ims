import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileName extends StatelessWidget {
  final String t2;
  final String t3;
   const ProfileName({
    super.key,
    required this.t2,
    required this.t3
    });
  @override
  Widget build(BuildContext context) {
    return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                
                                Text(t2,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text(t3,style: TextStyle(color: Colors.black,fontSize: 15,),),
                              
                          
                              ],
                            ),
                          ),
                        ],
                      );
  }
}