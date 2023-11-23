import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

@override
  Widget build(BuildContext context) {
    return 
    AppBar(
        backgroundColor: const Color(0xFFB5DBCE),
        toolbarHeight: 100,
        elevation: 0,
        
        title: Expanded(
          child: Row(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Hey',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Tina',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 250,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 50,
                  width: 50,
                  color:const  Color(0xFF81BFBA),
                  child:const  Icon(Icons.notifications,color:   Color(0xFFB5DBCE),),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
