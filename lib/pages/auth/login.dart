import 'package:astro/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColors.appbarBackgroundColor,
        title: const Text('Astro'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: 'Enter your mobile number',
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: SizedBox(
                    height: 50,
                    width: w / 1,
                    child: Card(
                      color: AppColors.mainColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: Text(
                        'Send Otp',
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
