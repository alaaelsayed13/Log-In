
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        elevation:0,
       ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body:

     Center(
       child: Stack(
         alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 100),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white, ),
                height: 587,
                width: 535,
               
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: ListView(children: [
                    Text('Email',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   TextFormField(
                        keyboardType: TextInputType.emailAddress,
onFieldSubmitted: (String value){
  print(value);
  
},
onChanged: (String value){
  print(value);
}
          ,decoration: InputDecoration(
labelText: 'Enter Your Email Here',
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20)
),
prefixIcon: Icon(Icons.email,),
          )
          ),
                    
    SizedBox(height: 15.0),
                    
                    
                    Text('Password',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
onFieldSubmitted: (String value){
  print(value);
  
},
onChanged: (String value){
  print(value);
}
          
          ,obscureText: true,
          decoration:
           InputDecoration(
labelText: 'Enter Your Password Here',
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20)
),
prefixIcon: Icon(Icons.lock,),
suffixIcon: Icon(Icons.remove_red_eye),
          )
          ),
          SizedBox(height: 3),

                 
                          FlatButton(onPressed: (){}, child:
                          Text('Forgot Your Password?',style: TextStyle(color: Color.fromRGBO(12, 4, 64, 1))
                          ,)
                           ),
                           Container(  
                             
                             height: 40,
                             width: 30,
                            
                             color: Color.fromRGBO(102, 95, 214, 1),
                             
                             child: MaterialButton(onPressed: (){
                               
                             },
                             child: Text('Login',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))),
                           ),
                           SizedBox(height: 10,)

                      ,Row
                    (mainAxisAlignment: MainAxisAlignment.center
                      ,children:[
                         Text('Dont Have An Account?', style: TextStyle(color: Color.fromRGBO(102, 95, 214, 1),fontSize: 20),),
                          FlatButton(onPressed: (){}, child:
                          Text('Register Here', style: TextStyle(color: Color.fromRGBO(102, 95, 214, 1), fontWeight: FontWeight.bold, fontSize: 20),)
                           )
  
                            ],)
                  
                    ]  ),
                )
              
              ,),
            ),
             Column(children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text('Log In', style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,
                   
                 ),)
                 ,
               ),
               
                 Container(
                   child: Image.asset('assets/images/secure-shield.png', color: Colors.white,
                     ),
                   
                    
                             height: 120,
                             width: 120,
                            decoration: BoxDecoration(
                             color: Color.fromRGBO(80, 80, 206, 0.6),
                              borderRadius: BorderRadius.circular(35)
                            ),
                            
                          
                          ),
              ],),
            
          ]
       ),
     ),
    
    );
        
      
    
  }
}