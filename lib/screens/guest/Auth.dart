import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // final RegExp emailRegex = RegExp(
  //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // String _email;
  bool _isSecret = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(3, 169, 244, 0.99),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/DigitalPACA-Logo_Round_poulpe-en-haut.png',
                  width: 400,
                  height: 140,
                ),
                // RichText(
                //   text: TextSpan(
                //     text: 'Everyone has\n'.toUpperCase(),
                //     style: const TextStyle(
                //       color: Colors.black,
                //       fontSize: 30.0,
                //     ),
                //     children: [
                //       TextSpan(
                //         text: 'knowledge\n'.toUpperCase(),
                //         style: TextStyle(
                //             color: Theme.of(context).primaryColor,
                //             fontWeight: FontWeight.bold),
                //       ),
                //       TextSpan(text: 'to share.'.toUpperCase())
                //     ],
                //   ),
                // ),
                // const Text(
                //   'It all starts here',
                //   style: TextStyle(fontStyle: FontStyle.italic),
                // ),
                // const SizedBox(
                //   height: 50.0,
                // ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Se connecter :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      // onChanged: (value) => setState(() => _email = value),
                      // validator: (value) =>
                      //     value.isEmpty || emailRegex.hasMatch(value)
                      //         ? 'Please enter a valid email'
                      //         : null,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Adresse mail',
                        hintStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: _isSecret,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => setState(() => _isSecret = !_isSecret),
                          child: Icon(!_isSecret
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Mot de passe',
                        hintStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // RaisedButton(
                    //   color: Theme.of(context).primaryColor,
                    //   elevation: 0,
                    //   padding: const EdgeInsets.symmetric(
                    //     vertical: 15.0,
                    //   ),
                    //   onPressed: () => print('send'),
                    //   child: Text(
                    //     'continue'.toUpperCase(),
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
