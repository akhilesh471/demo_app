import 'package:demo/core/constants.dart';
import 'package:demo/core/widget.dart';
import 'package:demo/infrastructure/login/login.dart';
import 'package:demo/presentation/homepage/homepage.dart';
import 'package:demo/presentation/login/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isEmailOnTap = false;
  bool isPasswordOnTap = false;
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
final formkey = GlobalKey<FormState>();
@override
  void initState() {
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            kheight20,
            const TopSection(),
            Form(
              key:formkey,
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40),
                child: Column(
                  children: [
                   kheight10,
                    FormWidget(textController: _usernameController,
                      hint: 'EMAIL',
                      icn: Icons.mail_outline,
                      isTap: isEmailOnTap,
                      index: 1,
                      onTaped: () {
                        setState(() {
                          isEmailOnTap = true;
                          isPasswordOnTap = false;
                        });
                      },
                    ),
                    kheight20,
                    FormWidget(textController: _passwordController,
                      onTaped: () {
                        setState(() {
                          isEmailOnTap = false;
                          isPasswordOnTap = true;
                        });
                      },
                      hint: 'PASSWORD',
                      icn: Icons.lock,
                      isTap: isPasswordOnTap,
                      index: 2,
                    ),
                    kheight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: kgreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    kheight35,
                    ElevatedButton(
                      onPressed: ()async {
                        if(formkey.currentState!.validate()){
                       var  isLogged=await authentication(username: _usernameController.text, password: _passwordController.text);
                        setState(() {
                           isEmailOnTap = false;
                           isPasswordOnTap = false;
                            

                       if(isLogged.isRight()){
                        
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return HomePage();
                        }));
                       }

                        });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: kgreen,
                          fixedSize: Size(size(ctx: context).width * 0.8,
                              size(ctx: context).height * 0.07)),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 16, wordSpacing: 1),
                      ),
                    ),
                    kheight35,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        loginBodyText(
                            info: 'Don\'t have account?',
                            clr: const Color.fromARGB(255, 98, 89, 89)),
                        loginBodyText(info: 'create a new account', clr: kgreen),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Text loginBodyText({required String info, required Color clr}) {
    return Text(
      info,
      style: TextStyle(color: clr, fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size(ctx: context).height*0.3,
      // color: Colors.amber,
      child: Column(
        children: [
          SizedBox(height: size(ctx: context).height*0.05,),
          CircleAvatar(
            backgroundImage: const AssetImage('assets/avatar1.jpg'),
            radius: size(ctx: context).height / 15,
          ),
           SizedBox(
            height: size(ctx: context).height*0.02,
          ),
          Text(
            'Welcome Back',
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: size(ctx: context).height*0.01,
          ),
          const Text(
            'Sign to continue',
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
