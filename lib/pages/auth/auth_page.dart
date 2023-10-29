import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/pages/all_pages.dart';
import 'package:mars_client/pages/home/bloc/home_bloc.dart';
import 'package:mars_client/pages/home/bloc/home_event.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _usernameController.text = '';
    _passwordController.text = '';
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Positioned.fill(
              child: ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: Colors.white),
                  ),
                  width: 450,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 15),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 32),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                          child: TextFormField(
                            validator: (String? text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter the username..';
                              }

                              return null;
                            },
                            controller: _usernameController,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: 'username',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7)),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 15),
                          child: TextFormField(
                            validator: (String? text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter the password..';
                              }

                              if (text != 'admin') {
                                return 'Not correct password..';
                              }

                              return null;
                            },
                            controller: _passwordController,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'password',
                              labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7)),
                              prefixIcon: const Icon(
                                Icons.key,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.5),
                                foregroundColor:
                                    const Color.fromRGBO(0, 0, 0, 50),
                                textStyle: const TextStyle(fontSize: 20),
                                padding: const EdgeInsets.all(25)),
                            onPressed: () {
                              // admin check
                              if (_formKey.currentState!.validate()) {}

                              if (_usernameController.text ==
                                      _passwordController.text &&
                                  _usernameController.text == 'admin') {
                                BlocProvider.of<HomeBloc>(context)
                                    .add(LoginAdmin());

                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
