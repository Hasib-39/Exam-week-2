import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("My Profile"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.phone))
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleOpts(icon: Icons.icecream_outlined, text: "Ice cream is very delicious right?"),
          CircleOpts(icon: Icons.code, text: "Programming is not boring if you love it"),
          CircleOpts(icon: Icons.egg_outlined, text: "If you submit code directly from chatgpt then mark will 0")
        ],
      ),
    );
  }
}

class CircleOpts extends StatelessWidget {
  final IconData icon;
  final String text;

  const CircleOpts({super.key, required this.icon, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xffeaddff),
            shape: BoxShape.circle
          ),
          child: Icon(
            icon,
            size: 60,
            color: Color(0xff210359),
          ),
        ),
        SizedBox(height: 8,),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}


