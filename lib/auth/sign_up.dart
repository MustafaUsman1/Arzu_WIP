// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import 'package:main/auth/login_screen.dart';
// // import 'package:main/widgets/round_button.dart';
// // import 'package:firebase_auth/firebase_auth.dart';

// // class SignUpScreen extends StatefulWidget {
// //   const SignUpScreen({Key? key}) : super(key: key);

// //   @override
// //   State<SignUpScreen> createState() => _SignUpScreenState();
// // }

// // class _SignUpScreenState extends State<SignUpScreen> {
// //   final _fromkey = GlobalKey<FormState>();
// //   final emailController = TextEditingController();
// //   final passwordController = TextEditingController();

// //   FirebaseAuth _auth = FirebaseAuth.instance;

// //   @override
// //   void dispose() {
// //     emailController.dispose();
// //     passwordController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Sign Up'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 20),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             Form(
// //               key: _fromkey,
// //               child: Column(children: [
// //                 TextFormField(
// //                     controller: emailController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Email',
// //                       border: OutlineInputBorder(),
// //                       prefixIcon: Icon(Icons.email),
// //                     ),
// //                     validator: (value) {
// //                       if (value!.isEmpty) {
// //                         return 'Please enter email';
// //                       }
// //                       return null;
// //                     }),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 TextFormField(
// //                     controller: passwordController,
// //                     obscureText: true,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Password',
// //                       border: OutlineInputBorder(),
// //                       prefixIcon: Icon(Icons.lock),
// //                     ),
// //                     validator: (value) {
// //                       if (value!.isEmpty) {
// //                         return 'Please enter password';
// //                       }
// //                       return null;
// //                     }),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //               ]),
// //             ),
// //             RoundButton(
// //               data: 'Sign Up',
// //               ontap: () async {
// //                     if (_fromkey.currentState!.validate()) {
// //                       try {
// //                         UserCredential userCredential =
// //                             await _auth.createUserWithEmailAndPassword(
// //                                 email: emailController.text.toString(),
// //                                 password: passwordController.text.toString());
// //                         await FirebaseFirestore.instance
// //                             .collection('users')
// //                             .doc(userCredential.user!.uid)
// //                             .set({
// //                           'email': userCredential.user!.email,
// //                         });
// //                       } on FirebaseAuthException catch (e) {
// //                         if (e.code == 'weak-password') {
// //                           print('The password provided is too weak.');
// //                         } else if (e.code == 'email-already-in-use') {
// //                           print('The account already exists for that email.');
// //                         }
// //                       } catch (e) {
// //                         print(e);
// //                       }
// //                     }
// //                   },

// //             ),
// //             const SizedBox(
// //               height: 20,
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text("Already have an account?"),
// //                 TextButton(
// //                   onPressed: () {
// //                     Navigator.push(context,
// //                         MaterialPageRoute(builder: (context) => LoginScreen()));
// //                   },
// //                   child: const Text('Login'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:main/auth/login_screen.dart';
// import 'package:main/widgets/round_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   final _auth = FirebaseAuth.instance;

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       hintText: 'Email',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.email),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter email';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     controller: _passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: 'Password',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.lock),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter password';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//             RoundButton(
//               data: 'Sign Up',
//               ontap: () async {
//                 if (_formKey.currentState!.validate()) {
//                   try {
//                     UserCredential userCredential =
//                         await _auth.createUserWithEmailAndPassword(
//                       email: _emailController.text.toString(),
//                       password: _passwordController.text.toString(),
//                     );
//                     await FirebaseFirestore.instance
//                         .collection('users')
//                         .doc(userCredential.user!.uid)
//                         .set({
//                       'email': userCredential.user!.email,
//                     });
//                   } on FirebaseAuthException catch (e) {
//                     if (e.code == 'weak-password') {
//                       print('The password provided is too weak.');
//                     } else if (e.code == 'email-already-in-use') {
//                       print('The account already exists for that email.');
//                     }
//                   } catch (e) {
//                     print(e);
//                   }
//                 }
//               },
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Already have an account?'),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => LoginScreen()),
//                     );
//                   },
//                   child: Text('Login'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:main/auth/login_screen.dart';
// import 'package:main/widgets/round_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _fromkey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();

//   FirebaseAuth _auth = FirebaseAuth.instance;
  
//   get import => null;

//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     nameController.dispose();
//     phoneController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Form(
//               key: _fromkey,
//               child: Column(children: [
//                 TextFormField(
//                     controller: emailController,
//                     decoration: const InputDecoration(
//                       hintText: 'Email',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.email),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter email';
//                       }
//                       return null;
//                     }),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       hintText: 'Password',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.lock),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter password';
//                       }
//                       return null;
//                     }),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                     hintText: 'Name',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.person),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your name';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   controller: phoneController,
//                   decoration: const InputDecoration(
//                     hintText: 'Phone',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.phone),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your phone number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//               ]),
//             ),
//             RoundButton(
//               data: 'Sign Up',
//               ontap: () async {
//                 if (_fromkey.currentState!.validate()) {
//                   try {
//                     UserCredential userCredential =
//                         await _auth.createUserWithEmailAndPassword(
//                             email: emailController.text.toString(),
//                             password: passwordController.text.toString());
//                     await FirebaseFirestore.instance
//                         .collection('users')
//                         .doc(userCredential.user!.uid)
//                         .set({
//                       'email': userCredential.user!.email,
//                       'name': import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:main/auth/login_screen.dart';
// import 'package:main/widgets/round_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _fromkey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();

//   FirebaseAuth _auth = FirebaseAuth.instance;

//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     nameController.dispose();
//     phoneController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Form(
//               key: _fromkey,
//               child: Column(children: [
//                 TextFormField(
//                     controller: emailController,
//                     decoration: const InputDecoration(
//                       hintText: 'Email',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.email),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter email';
//                       }
//                       return null;
//                     }),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       hintText: 'Password',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.lock),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter password';
//                       }
//                       return null;
//                     }),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                     hintText: 'Name',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.person),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your name';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   controller: phoneController,
//                   decoration: const InputDecoration(
//                     hintText: 'Phone',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.phone),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your phone number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//               ]),
//             ),
//             RoundButton(
//               data: 'Sign Up',
//               ontap: () async {
//                 if (_fromkey.currentState!.validate()) {
//                   try {
//                     UserCredential userCredential =
//                         await _auth.createUserWithEmailAndPassword(
//                             email: emailController.text.toString(),
//                             password: passwordController.text.toString());
//                     await FirebaseFirestore.instance
//                         .collection('users')
//                         .doc(userCredential.user!.uid)
//                         .set({
//                       'email': userCredential.user!.email,
//                       'name': 
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:main/auth/login_screen.dart';
import 'package:main/widgets/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fromkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _fromkey,
              child: Column(children: [
                TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
            RoundButton(
              data: 'Sign Up',
              ontap: () async {
                if (_fromkey.currentState!.validate()) {
                  try {
                    UserCredential userCredential =
                        await _auth.createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString());
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(userCredential.user!.uid)
                        .set({
                      'email': userCredential.user!.email,
                      'name': nameController.text.toString(),
                      'phone': phoneController.text.toString(),
                    });
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('The password is too weak')));
                    } else if (e.code == 'email-already-in-use') {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('The account already exists for that email')));
                    }
                  } catch (e) {
                    print(e);
                  }
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text('Login'))
              ],
            ) 
          ],
        ),
      ),
    );
  }
}



