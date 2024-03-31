import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Switch Widget',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff848484),
        body: Center(
          child: SwitchWidget(),
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool on = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          on = !on;
        });
      },
      child: AnimatedContainer(
        width: 50,
        height: 30,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: on ? const Color(0xffFA8820) : const Color(0xffF5F5F8),
        ),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: on ? 25 : 5,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 20,

              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFFFFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
