import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Laboratory extends StatefulWidget {
  const Laboratory({Key? key}) : super(key: key);

  @override
  State<Laboratory> createState() => _LaboratoryState();
}

class _LaboratoryState extends State<Laboratory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Shahbozbek'),
              SizedBox(height: 10,),
              Divider(thickness: 2, height: 20, color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}
