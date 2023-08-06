import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                image: DecorationImage(
                  image: AssetImage('image/hypest1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15,top: 10),
                        child: Text(
                          "Let's\nSign\nYou in.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            height:
                                0.9, // Adjust this value to set the desired line gap
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      
                     
                    ],
                  ),
                ),
              ),
            ),
         
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.green),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 25,color: Colors.white,
                    fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  Text("Do you have an account",style: TextStyle(color: Colors.white),),
                TextButton(onPressed: (){}, child: const Text("Sign up?",style: TextStyle(color: Colors.green)))
              ],
            ),
            const Text("or",style: TextStyle(color: Colors.white,fontSize: 20)),
          const   SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 3, 69, 122)
                 
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("image/facebookicon.png",height:50,width: 40,),
                    const Text("Continue with Facebook",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
                  ],
                )
              ),
            ),
            SizedBox(height: 15,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200
                 
                ),
                
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("image/googleicon - Copy.png",height:50,width: 40,),
                    const Text("Continue with Facebook",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold))
                  ],
                )
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}