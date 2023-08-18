import 'package:assignment_project/Screens/tabBarScreen.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

@override
  void initState() {
    // TODO: implement initState
    _controller.text="New Delhi,Delhi";
    super.initState();
  }
  
  
 @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  
  TextEditingController _controller=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
  
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu,size: 30,),
        backgroundColor: Colors.yellow,
        title: const Text('CABTO',style: TextStyle(fontFamily: 'Alumni-Sans',fontSize: 30,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/map1.jpg', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 16),
              SearchBar(),
              SizedBox(height: height/3,),

              Expanded(
                child: Container(
                         child: BottomNavigation(),
                color: Colors.white,
                        ),
              ),
            ],
          ),


          

          

        ],

      ),
  
        
    );
  }

  // ignore: non_constant_identifier_names
  Widget SearchBar(){
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child:TextFormField(
        readOnly: true,
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search...',
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
    
  }


  
}