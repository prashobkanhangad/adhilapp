import 'package:adil_project/core/core.dart';
import 'package:adil_project/presentation/homescreen/homescreen.dart';
import 'package:adil_project/presentation/navigationbar/navigationbar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    // final _formKey = GlobalKey<FormState>();

    final TextEditingController emailcontroller = TextEditingController();

    final TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Container(
        color: kprimarycolor,
        child: Column(
          children: [
            const Spacer(),
            Container(
              // height: screenheight / 2,
              width: screenwidth,
              decoration: const BoxDecoration(
                  color: kwhitecolor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Form(
                // key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heigh20,
                      heigh10,
                      const Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      heigh10,
                      TextFormField(
                        style: const TextStyle(fontSize: 20),
                        autofocus: false,
                        controller: emailcontroller,
                        keyboardType: TextInputType.phone,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return ("Enter Mobile Number");
                        //   }
                        //   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        //       .hasMatch(value)) {
                        //     return ("Please Enter a valid email");
                        //   }
                        //   return null;
                        // },
                        // onSaved: (value) {
                        //   emailcontroller.text = value!;
                        // },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0,
                            horizontal: 10.0,
                          ),
                          prefixIcon: const Icon(
                            Icons.mobile_friendly,
                            color: kprimarycolor,
                          ),
                          focusColor: kblackcolor,
                          filled: true,
                          fillColor: kwhitecolor,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Mobile Number',
                          hintStyle:
                              const TextStyle(fontSize: 17, color: kgreycolor),
                        ),
                      ),
                      heigh20,
                      const Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      heigh10,
                      TextFormField(
                        style: const TextStyle(fontSize: 20),
                        autofocus: false,
                        obscureText: true,
                        controller: passwordcontroller,
                        keyboardType: TextInputType.name,
                        // validator: (value) {
                        //   RegExp regex = new RegExp(r'^.{6,}$');
                        //   if (value!.isEmpty) {
                        //     return ('Please enter your password');
                        //   }
                        //   if (!regex.hasMatch(value)) {
                        //     return ("Please enter minimum 6 characters");
                        //   }
                        // },
                        // onSaved: (value) {
                        //   passwordcontroller.text = value!;
                        // },
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 13.0,
                              horizontal: 10.0,
                            ),
                            prefixIcon:
                                const Icon(Icons.vpn_key, color: kprimarycolor),
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: kblackcolor,
                            ),
                            focusColor: kblackcolor,
                            filled: true,
                            fillColor: kwhitecolor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                fontSize: 17, color: kgreycolor)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              fontSize: 16,
                              color: kblackcolor,
                            ),
                          )),
                      SizedBox(
                        width: double.maxFinite,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {      Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>  BottomnavScreen(selectedindex: 3,)));},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(kyellowcolor),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(kblackcolor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                              ),
                            ),
                          ),
                          child:  const Text('Login',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        
                      ),
                      heigh20,
                      heigh10
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
