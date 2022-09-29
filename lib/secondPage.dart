import 'package:flutter/material.dart';
import 'package:modul6_vazifa4_1/database.dart';
import 'package:modul6_vazifa4_1/user.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController? textEditingControlleremail;
  TextEditingController? textEditingControllerpassword;
  TextEditingController? textEditingControlleradress;

  @override
  void initState(){
    textEditingControlleremail = TextEditingController();
    textEditingControllerpassword = TextEditingController();
    textEditingControlleradress = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF077F7B),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Container(), flex: 1,),
              const Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 5),
                child: const Text('Welcome', style: TextStyle(color: Color(0xFF24A29E), fontSize: 16),),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
              Expanded(child: Container(), flex: 1,),
              Expanded(flex: 7,child:  Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                ),
                child: Column(
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
                      child: TextField(
                        controller: textEditingControlleremail,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700, ),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25),
                      child: TextField(
                        obscureText: true,
                        controller: textEditingControllerpassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ),
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25),
                      child: TextField(
                        controller: textEditingControlleradress,
                        decoration: InputDecoration(
                          labelText: 'Adress',
                          labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ),
                          hintText: 'Enter Adress',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF077F7B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text('Sign Up', style: TextStyle(color: Colors.white),),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 25,),
                          Flexible(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0, left: 8.0),
                            child: Text('OR', style: TextStyle(color: Colors.grey, fontSize: 20),),
                          ),
                          Flexible(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 25,),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.03,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10,),
                          Expanded(child: Image(image: AssetImage('images/img_1.png'),)),
                          Expanded(child: Image(image: AssetImage('images/img_2.png'),)),
                          Expanded(child: Image(image: AssetImage('images/img_3.png'),)),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),
                          TextButton(onPressed: (){
                            String email = '', password = '', adress = '';
                            setState(() {
                              email = textEditingControlleremail!.text.trim();
                              password = textEditingControllerpassword!.text.trim();
                              adress = textEditingControlleradress!.text.trim();
                              textEditingControlleradress!.text = "";
                              textEditingControllerpassword!.text = "";
                              textEditingControlleremail!.text = "";
                            });
                            User user = User(email: email, password: password, adress: adress);
                            Database().dataStore(user);
                          }, child: Text('Sign Up', style: TextStyle(color: Colors.blue, fontSize: 18),)),
                        ],
                      ),
                    )
                  ],
                ),
              ),),
            ],
          ),
        ),
      ),

    );
  }
}
