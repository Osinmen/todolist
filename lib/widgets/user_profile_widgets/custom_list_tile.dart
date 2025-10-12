import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todolist/gen/assets.gen.dart';


class CustomListTile extends StatelessWidget {
  final String? title;
  final String? leading;
 final  Widget routeDestination;
 bool islogout = false;
  
  CustomListTile({super.key, required this.title, required this.leading, required this.routeDestination,  this.islogout = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(islogout){
          () async {
            await FirebaseAuth.instance.signOut();
          } ;
        } else if(routeDestination != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return routeDestination;
          }));
        }
      },
      child: ListTile(
        title: Text("$title", style: TextStyle(color: Colors.white),),
        leading: Image.asset(leading.toString()),
        trailing: Assets.icons.arrowLeft.image(),
      ),
    );
  }
}