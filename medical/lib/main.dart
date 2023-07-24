import 'package:flutter/material.dart';
import 'package:medical/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
 {
  const MyApp({super.key});
  static const String id='MyApp.id';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: const Color.fromARGB(255, 8, 55, 183),
        body: SafeArea(
          child: Center(
            
            child: Column(
              children: [
                  Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: TextButton(onPressed: (){
    
                  },
                   child: const Text('Skip',style: TextStyle(color: Colors.white),)),
                ),
              ),
              
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:const [
                     CircleAvatar(
                      radius: 130,
                      backgroundImage:AssetImage('images/profile.jpg')
                     ),
                    ], 
                  ),
                ),
              const SizedBox(height: 10,),
              Column(
                
                children:const [
                 Center(child: Text('Easy Appoinment',style:
                  TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)))
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children:const [
                   Center(child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',style:
                  TextStyle(fontSize: 15,color: Colors.grey,),textAlign: TextAlign.center,))
                ],
              ),
              const SizedBox(height: 30,),
    
              // InkWell(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder:(context)=> home_page()));
              //   },
              //   child: Align(
              //     alignment: Alignment.bottomRight,
              //     child: Padding(
              //       padding: const EdgeInsets.only(top:90),
              //       child: Container(
              //         height: 50,
              //         width: 100,
              //         color: Colors.red,
              //         child: Center(child: Text('Get Started')),
              //       ),
              //     ),
              //   ),
              // ),
                 Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: ElevatedButton(onPressed: (){
                       Navigator.pushNamed(context, home_page.id);
                      print('Pressed');
                    },
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ) ,
                     child: const Text('Get Started',style: TextStyle(color: Colors.blue)
                     
                     ,)),
                  ),
                               ),
      
              
              ],
            
            ), 
          ),
        
        ),
      ),
initialRoute: MyApp.id,
    routes: {
      // MyApp.id : (context)=> MyApp(),
      home_page.id :(context)=> home_page(),
    },
    );
    
  }
}