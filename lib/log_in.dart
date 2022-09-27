import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oesmacv/home_screen.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLogin();
}

class _StudentLogin extends State<StudentLogin> {
  bool _isVisible = false;

  get updateStatus {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  get textEditingController => null;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Student Login',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Student Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),

                    //The input variable will stored in value so you can get it.
                    onChanged: (String value) {},

                    validator: (value) {
                      return value!.isEmpty ? 'Please enter email' : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: textEditingController,
                    obscureText: _isVisible ? false : true,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                    ],
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Student Password',
                      suffixIcon: IconButton(
                        onPressed: () => updateStatus,
                        icon: Icon(_isVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      prefixIcon: const Icon(Icons.password),
                      border: const OutlineInputBorder(),
                    ),

                    //The input variable will stored in value so you can get it.
                    onChanged: (String value) {},

                    validator: (value) {
                      return value!.isEmpty ? 'Please enter password' : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  minWidth: 200,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
