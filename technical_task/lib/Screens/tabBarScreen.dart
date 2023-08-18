import 'package:assignment_project/Screens/bookingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  @override
  void initState() {
    // TODO: implement initState
    _controller1.text="Mysuru,Karnataka,India";
    _controller2.text="One-way";
    _controller3.text="Round-trip";
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  final List<Tab> _tabs = [
    Tab(icon: Icon(Icons.local_taxi), text: 'City Cab'),
    Tab(icon: Icon(Icons.directions_car), text: 'Rental'),
    Tab(icon: Icon(Icons.airport_shuttle), text: 'Outstation'),
  ];

  bool _isSelected = false;
  bool _isSelected1=true;
  int _currentIndex=0;
  TextEditingController _controller1=new TextEditingController();
  TextEditingController _controller2=new TextEditingController();
  TextEditingController _controller3=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
  double width=MediaQuery.of(context).size.height;
    return  DefaultTabController(
      length: _tabs.length,
      initialIndex: _currentIndex,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0,
          bottom: TabBar(
        indicatorColor: Colors.black,
        labelColor: Colors.black,
          tabs: _tabs,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              //_showNewArea = false;
            });
          },
        ),
        ),
        body: TabBarView(
      children: [
        //
            

  cityCab(height,width),
  rental(height,width),
  outstation(height,width),
        
      ],
    ),
      )
    );
  }

  Widget cityCab(double height,double width){
    return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Card(
                    
                      shape: RoundedRectangleBorder(
    
    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
  ),
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
      BoxShadow(
        blurRadius: 5.0,
        ),
    ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                            
                            padding: EdgeInsets.all(height/37),
                            width: 300,
                            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Container(
                          decoration: BoxDecoration(
                            
                                
                              color: Colors.grey[200], // Gray color
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                      
                        child: TextFormField(
                          autofocus: true,
                          controller: _controller1,
                          readOnly: true,

                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Colors.white,
                      ),
                            ),
                            labelStyle: TextStyle(color: Colors.black), // Label text color
                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Destination',
                            hintText: 'Mysuru,Karnataka,India',
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Colors.white,
                      ),
                            ),
                            prefixIcon: Icon(Icons.search,color:Colors.black,)
                          ),
                        ),
                      ),
                      
                      
                      
                    ],
                            ),
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
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookTaxi()));
                             },
                             child: Text(
                               'Next',
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                             ),
                           ),
                         ),
                       ),

                  ],
                ),
              ),
            );
  }
  Widget rental(double height,double width){
    return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Card(
                    
                      shape: RoundedRectangleBorder(
    
    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
  ),
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
      BoxShadow(
        blurRadius: 5.0,
        ),
    ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                            
                            padding: EdgeInsets.all(height/37),
                            width: 300,
                            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Text("Select Packages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      SizedBox(height: 7),
                      Padding(
                        padding: EdgeInsets.only(right:height/4),
                        child: Card(
                                        elevation: 4,
                                        child: Container(
                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.white,
                                            boxShadow: [
      BoxShadow(
        blurRadius: 3.0,
        ),
    ],
       
                                          ),
                                          
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                        children: [
                          Text(
                            '8hr',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '80km',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[600]),
                          ),
                        ],
                                          ),
                                        ),
                                      ),
                      ),
                       
                      
                    ],
                            ),
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
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookTaxi()));
                             },
                             child: Text(
                               'Next',
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                             ),
                           ),
                         ),
                       ),

                  ],
                ),
              ),
            );
  }
  Widget outstation(double height,double width){
    return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Card(
                    
                      shape: RoundedRectangleBorder(
    
    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
  ),
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
      BoxShadow(
        blurRadius: 5.0,
        ),
    ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                            
                            padding: EdgeInsets.all(height/37),
                            width: 300,
                            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Container(
                          decoration: BoxDecoration(
                                
                              color: Colors.grey[200], // Gray color
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                      
                        child: TextFormField(
                          autofocus: true,
                          controller: _controller1,
                          readOnly: true,

                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Colors.white,
                      ),
                            ),
                            labelStyle: TextStyle(color: Colors.black), // Label text color
                            hintStyle: TextStyle(color: Colors.black),
                            labelText: 'Destination',
                            hintText: 'Mysuru,Karnataka,India',
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                        color: Colors.white,
                      ),
                            ),
                            prefixIcon: Icon(Icons.search,color:Colors.black,)
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                       Row(
                       
                        children: [
                          
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: width/2,
                              ),
                               width: width/6.5,
                               decoration: BoxDecoration(
                                border: _isSelected==false?Border.all(
                                  color: Colors.grey,
                                  width: 2
                                ):null,
                              color:_isSelected==false?Colors.white:Colors.grey[300], 
                              borderRadius: BorderRadius.circular(10.0), 
                            ),
                                                     
                              child:TextFormField(
                                onTap: () {
                                  setState(() {
                                  _isSelected=!_isSelected;
                                });
                                },maxLines: null,
                                textAlign: TextAlign.center,
                                controller: _controller2,
                                style: TextStyle(fontSize: 17),
                                readOnly: true,
                                decoration: InputDecoration(
                                  
                                  border: InputBorder.none,
                                  hintText: 'One-way',
                                  hintStyle: TextStyle(color: Colors.black),
                                  
                                
                                ),
                              )
                            ),
                        
                          SizedBox(width: 7),
                          
                            Container(
                               width: width/4.5,
                               padding: EdgeInsets.only(right:height/40),
                            decoration: BoxDecoration(
                              border: _isSelected1?null:Border.all(
                                color: Colors.grey,
                                  width: 2
                              ),
                              color: _isSelected1?Colors.grey[300]:Colors.white, // Gray color
                              borderRadius: BorderRadius.circular(10.0), // Curved edges
                            ),
                              child:TextFormField(
                                onTap: () {
                                  setState(() {
                                    _isSelected1=!_isSelected1;
                                  });
                                },
                                textAlign: TextAlign.center,
                                controller: _controller3,
                                style: TextStyle(fontSize: 17),
                                readOnly: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Round-trip',
                                  hintStyle: TextStyle(color: Colors.black),
                                  prefixIcon: Icon(Icons.check),
                            
                                
                                ),
                              )
                            ),
                          
                        ],
                      ),
                      
                    ],
                            ),
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookTaxi()));

                             },
                             child: Text(
                               'Next',
                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                             ),
                           ),
                         ),
                       ),

                  ],
                ),
              ),
            );
  }
}