import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key, this.btcolor, required this.btname});
  final Color? btcolor;
  final String btname;

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
          child: Container(
            
            height: MediaQuery.sizeOf(context).height *0.17,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade800,
           
            ),
            child:  Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(image:AssetImage('image/facebookicon.png'),fit: BoxFit.cover )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('The Phantom Thief ',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(
                          width: MediaQuery.sizeOf(context).width *0.55,
                          child: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry',style: TextStyle(color: Colors.white,fontSize: 13))),
                        const SizedBox(height: 5,),
                      // const  SizedBox(height: 6,),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: btcolor),
                        child:  Center(child: Text(btname,style:const TextStyle(color: Colors.white),),),
                      )
                    ],
                  ),
                ),
              

              ],
            ),)
        );
      }, separatorBuilder: (context, index) => const SizedBox(), itemCount: 10);
    
  }
}