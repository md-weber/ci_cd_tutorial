import 'package:ci_cd_tutorial/screens/mood_screen.dart';
import 'package:ci_cd_tutorial/util/time_helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var timeOfTheDay = TimeHelper.getTimeOfTheDay(DateTime.now());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/$timeOfTheDay.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 64),
            FittedBox(
              child: Text(
                "Good $timeOfTheDay",
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 64),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(hintText: "Email"),
                          controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            return value!.isNotEmpty
                                ? null
                                : "Email should not be empty";
                          },
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          validator: (value) {
                            return value!.isNotEmpty
                                ? null
                                : "Password should not be empty";
                          },
                          decoration: const InputDecoration(hintText: "Password"),
                          controller: passwordController,
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MoodScreen(),
                              ),
                            );
                          },
                          child: const Text("Login"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
