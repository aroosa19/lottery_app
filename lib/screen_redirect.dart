import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_redirect';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login Screen')),
        backgroundColor: Colors.brown.withOpacity(0.8),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Screen 2')),
          ),
          Container(
            height: 250,
            width: 250,
            transform: Matrix4.rotationZ(0.5),

            decoration: BoxDecoration(
                color:const Color.fromARGB(80, 30, 40, 50),
                borderRadius:BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://images.pexels.com/photos/7006365/pexels-photo-7006365.jpeg?auto=compress&cs=tinysrgb&w=400')
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 100,
                  )
                ]
            ),
            // child: const Center(child: Text('Container 1')),
          ),
        ],
      ),
    );
  }
}
