import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class BookTaxi extends StatefulWidget {
  const BookTaxi({super.key});

  @override
  State<BookTaxi> createState() => _BookTaxiState();
}

class _BookTaxiState extends State<BookTaxi> {
  
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
  double width=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/map1.jpg', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back,size: 30,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(height/60),
                        child: Column(
                          
                          children: [
                            SizedBox(height: 4,),
                            Icon(Icons.location_on_outlined,color: Colors.green,size: 30,),
                            Text('|'),
                            Text('|'),
                           
                            Icon(Icons.location_on_outlined,color: Colors.red,size: 30,),
                            
                      
                          ],
                        ),
                      ),
                      SizedBox(width: 8,),
                      Padding(
                        padding: EdgeInsets.only(bottom:height/380.5),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right:height/8),
                              child: Text("Source Location",style: TextStyle(fontSize:12,color: Colors.grey[700]),),
                            ),
                            Text("Banglore,Karnataka,India",style: TextStyle(fontSize: 15),),
              
                             SizedBox(
                        
                          height: 30,
                          child: Divider(
                            height: 20,
              
                            color: Colors.black,
                            thickness: 5,
                          ),
                        ),
              
              
                          
                          Padding(
                              padding: EdgeInsets.only(right:height/13),
                              child: Text("Destination Location",style: TextStyle(fontSize:12,color: Colors.grey[700]),),
                            ),
                            Text("Maysuru,Karnataka,India",style: TextStyle(fontSize: 15),),
              
              
                          ],
                        ),
                      )
              
              
                    ],
                  ),
                  SizedBox(
                        
                          height: 40,
                          child: Divider(
                            height: 20,
              
                            color: Colors.grey[600],
                            thickness: 1,
                          ),
                        ),
              
                        Row(
                          children: [
                Text("Top Suggestion for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(right:40.0,bottom: 10),
                  child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(right:height/3),
                        child: Text("Pickup Date Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),
                      ),
                      Container(
                                  constraints: BoxConstraints(
                                    minWidth: width/7,
                                  ),
                                   width: width/2,
                                   decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2
                                    ),
                                  color:Colors.white, 
                                  borderRadius: BorderRadius.circular(10.0), 
                                ),
                                                         
                                  child:TextFormField(
                                    
                                    maxLines: null,
                                   
                                    style: TextStyle(fontSize: 13),
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      
                                      border: InputBorder.none,
                                      hintText: '07-07-23 10:51 AM',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(Icons.calendar_month)
                                    
                                    ),
                                  )
                                ),
                  ],),
                )
                 
                        ],),
              
                        
                          Card(
                                        elevation: 4,
                                        child: Container(
                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color: Colors.white,
                                            boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      ),
                  ],
                     
                                          ),
                                          
                                          padding: EdgeInsets.all(6),
                                          child: Row(
                                            children: [
Image.asset(
  'assets/car2.jpeg',
  width: 40,
  height: 40,
  fit: BoxFit.cover,
),

SizedBox(width: 20,),
                                              Column(
                        children: [
                          
                          
                          Padding(
                            padding: EdgeInsets.only(right:height/4.4),
                            child: Text(
                              'Sedan',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Maruti Swift Dezire or similar',
                            style: TextStyle(fontSize: 16,color: Colors.black),
                          ),
                        ],
                                              ),

                                              SizedBox(width: 25,),


                                              Column(
                                                children: [
                                                  Text("3729",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                                                  SizedBox(height: 3,),
                                                  Icon(Icons.error_outline)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      Container(
                                        
                                        decoration: BoxDecoration(
                                        
                                          color: Colors.white,
                                          
                     
                                        ),
                                        
                                        padding: EdgeInsets.all(6),
                                        child: Row(
                                          children: [
Image.asset(
  'assets/car1.jpeg',
  width: 40,
  height: 40,
  fit: BoxFit.cover,
),

SizedBox(width: 20,),
                                            Column(
                        children: [
                          
                          
                          Padding(
                            padding: EdgeInsets.only(right:height/4.2),
                            child: Text(
                              'SUV',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Toyota Innova 6+1 or similar',
                            style: TextStyle(fontSize: 16,color: Colors.black),
                          ),
                        ],
                                            ),

                                            SizedBox(width: 33,),


                                            Column(
                                              children: [
                                                Text("5832",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 3,),
                                                Icon(Icons.error_outline)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),

                                      Container(
                                        
                                        decoration: BoxDecoration(
                                          
                                          color: Colors.white,
                                          
                     
                                        ),
                                        
                                        padding: EdgeInsets.all(6),
                                        child: Row(
                                          children: [
Image.asset(
  'assets/car3.jpeg',
  width: 40,
  height: 40,
  fit: BoxFit.cover,
),

SizedBox(width: 20,),
                                            Column(
                        children: [
                          
                          
                          Padding(
                            padding: EdgeInsets.only(right:height/4.4),
                            child: Text(
                              'Crysta',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Toyota Innova 6+1 or similar',
                            style: TextStyle(fontSize: 16,color: Colors.black),
                          ),
                        ],
                                            ),

                                            SizedBox(width: 27,),


                                            Column(
                                              children: [
                                                Text("8086",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 3,),
                                                Icon(Icons.error_outline)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                        SizedBox(height: 5,),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           width: 400, // Expand to full width of the card
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Color.fromARGB(255, 18, 69, 156),
                           ),
                           child: TextButton(
                             onPressed: () {
                              // Fluttertoast.showToast(msg: "Yayya you have successfully booked a cab from CABTO");
                               Fluttertoast.showToast(
        msg: "Yayya you have successfully booked a cab from CABTO",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0
    );
                             },
                             child: Text(
                               'Book Ride',
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                             ),
                           ),
                         ),
                       ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}