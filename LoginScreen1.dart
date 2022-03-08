import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
       body:Padding(
         padding: const EdgeInsets.only(top:30.0),
         child: Center(
           child: SingleChildScrollView(
             child: Container(
               decoration: BoxDecoration(
                 //border: Border.all(color: Colors.black)
               ),
               width: width/1.2,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Text(
                       'Sign In',
                     style: TextStyle(color: Colors.white , fontSize: 30.0 ,fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 30.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Email', style: TextStyle(color: Colors.white , fontSize: 15.0 ,),
                       ),
                     ],
                   ),
                   SizedBox(height: 10.0,),
                   TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.email , color: Colors.white,),
                       border: OutlineInputBorder(),
                       hintText: "Enter Your Email",
                       hintStyle: TextStyle(color: Colors.white,),
                     ),
                   ),
                   SizedBox(height: 30.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Password',style: TextStyle(color: Colors.white , fontSize: 15.0 ,)),
                     ],
                   ),
                   SizedBox(height: 10.0,),
                   TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.lock ,color: Colors.white,),
                       border: OutlineInputBorder(),
                       hintText: "Password",
                       hintStyle: TextStyle(color: Colors.white,),
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       TextButton(
                           onPressed: (){},
                            child: Text('Forget Password?' ,style:TextStyle(color: Colors.white ,)),
                       ),
                     ],
                   ),
                   SizedBox(height: 10.0,),
                   Row(
                     children: [
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                           child: ButtonTheme(
                             height: 50.0,
                             child: FlatButton(onPressed: (){},
                               child: Text('LOGIN',style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17.0)),
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(60.0),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 25.0,),
                   Text('-OR-',style:TextStyle(color: Colors.white ,)),
                   SizedBox(height: 15.0,),
                   Text('Sign in with',style:TextStyle(color: Colors.white ,)),
                   SizedBox(height: 50.0,),
                   Align(
                     alignment: Alignment.bottomCenter,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,8.0),
                           child: Text("Don't have an Account?",style:TextStyle(color: Colors.white ,)),
                         ),
                         TextButton(
                             onPressed:(){},
                             child: Padding(
                               padding:  EdgeInsets.fromLTRB(0.0,13.0,8.0,0.0),
                               child: Text('Sign up',style:TextStyle(color: Colors.white ,)),
                             ),
                         ),
                       ],
                     ),
                   ),


                 ],
               ),
             ),
           ),
         ),
       ),

      ),
    );
  }
}

