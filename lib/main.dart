import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleOpts(
              icon: Icons.icecream_outlined,
              text: "Ice cream is very delicious right?",
              align: TextAlign.center,),
            SizedBox(height: 24,),
            CircleOpts(
                icon: Icons.code,
                text: "Programming is not boring if you love it",
              align: TextAlign.center,),
            SizedBox(height: 24,),
            CircleOpts(
                icon: Icons.egg_outlined,
                text: "If you submit code directly from chatgpt then mark will 0",
              align: TextAlign.start,),
          ],
        ),
      ),
    );
  }
}

class CircleOpts extends StatelessWidget {
  final IconData icon;
  final String text;
  final TextAlign align;

  const CircleOpts({super.key, required this.icon, required this.text, required this.align,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 85,
          backgroundColor: const Color(0xffeaddff),
          child: Icon(
            icon,
            size: 90,
            color: const Color(0xff210359),
          ),
        ),
        const SizedBox(height: 8,),
        Text(
          text,
          textAlign: align,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Arial'
          ),
        )
      ],
    );
  }
}


