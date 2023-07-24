// ignore_for_file: sort_child_properties_last

import "package:flutter/material.dart";
class home_page extends StatefulWidget {
  static const String id='home_page';
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Stack(
          children: [
          Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ListView(
            children:const [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/nurse.jpg'),
                ),
                title:Text('Kritika Sharma',style: TextStyle(color: Colors.white,fontSize: 18),) ,
                subtitle:Text('Dang, Nepal',style: TextStyle(color: Colors.white),) ,
                trailing:Icon(Icons.search,color: Colors.white,),    
              )
            ],
          ),
            ),
            
            Center(  
              child: Padding(
                padding: const EdgeInsets.only(top:90,left: 15,right: 15 ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [
                              Column(
                                children:const [
                                  Icon(Icons.local_hospital),
                                  SizedBox(height: 10,),
                                  Text('Clinic Visit'),
                                ],
                              ), 
                              const SizedBox(width: 30,),
                                 Column(
                                children: const [
                                  Icon(Icons.home),
                                  SizedBox(height: 10,),
                                  Text('Home Visit'),
                                ],
                              ), 
                              const SizedBox(width: 30,),
                                 Column(
                                children: const [
                                  Icon(Icons.video_call),
                                  SizedBox(height: 10,),
                                  Text('Video Consult'),
                                ],
                              ),   
                            ],
                          ),
                        ),
                      ), 
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Row(
                                
                                children: [
                                  Column(
                                     children: const [
                                      Icon(Icons.local_pharmacy),
                                      SizedBox(height: 10,),
                                      Text('Pharmacy'),
                                    ],
                                  ),
                                  SizedBox(width: 50,),
                                   Column(
                                    children: const [
                                      Icon(Icons.bug_report),
                                      SizedBox(height: 10,),
                                      Text('Diseases'),
                                    ],
                                   ),SizedBox(width: 50,),
                                              
                                   Column(
                                    children: const [
                                      Icon(Icons.coronavirus),
                                      SizedBox(height: 10,),
                                      Text('Covid-19'),
                                    ],
                                   )
                                ],
                              )
                            ],
                          ),
                        ),
                      ) 
                    ],  
                   ),
                   
                      
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                   height: 800,
                  ),
                ),
              ),
            ),
          ]
        ),  
    );
  }
}