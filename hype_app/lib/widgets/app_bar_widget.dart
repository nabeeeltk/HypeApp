import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 40,
                  child: Padding(
                    padding:  const  EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       InkWell(
                        onTap: () {
                          showModalBottomSheet(
                         
                            context: context, builder: (context) {
                            return Container(
                                height: 800,
                                color: Colors.grey.shade900,

                                child: Column(
                                  children: [

                                    TextButton.icon(onPressed: (){}, icon:  const Icon(Icons.person),
                                     label:  const Text("My Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                                    ListTile(
                                       title: const  Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                                       leading:  const Icon(Icons.wallet,color: Colors.white,),
                                       
                                       onTap: (){},
                                    ),
                                  const   Divider(),
                                      ListTile(
                                       title:  const Text("Verification ANd KYC",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                                       leading: const  Icon(Icons.wallet,color: Colors.white,),
                                       
                                       onTap: (){},
                                    ),
                                      const   Divider(),
                                      ListTile(
                                       title:  const Text("Refer and Eran",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                                       leading:  const Icon(Icons.share,color: Colors.white,),
                                       
                                       onTap: (){},
                                    ),
                                      const   Divider(),
                                      ListTile(
                                       title:  const Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                                       leading:  const Icon(Icons.settings,color: Colors.white,),
                                       
                                       onTap: (){},
                                    ),
                                      const   Divider(),
                                      ListTile(
                                       title:  const Text("Help and Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                                       leading: const  Icon(Icons.help_center_sharp,color: Colors.white,),
                                       
                                       onTap: (){},
                                    ),

                                  ],
                                ),
                            );
                          },);
                        },
                         child: const   CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 123, 250, 127),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('image/facebookicon.png'),
                              radius: 18,
                            ),
                          ),
                       ),
                      const  SizedBox(
                          height: 50,
                          width: 50,
                          child: Image(image: AssetImage('image/facebookicon.png')),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade900,
                          child: IconButton(
                            onPressed: () {},
                            icon:  Icon(
                              Icons.search,
                              size: 25,
                            ),
                            color: const Color.fromARGB(255, 123, 250, 127),
                          ),
                        )
                      ],
                    ),
                  ),
                );
  }
}