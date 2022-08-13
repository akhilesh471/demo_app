import 'package:demo/core/constants.dart';
import 'package:demo/core/widget.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
   FormWidget({required this.hint,required this.icn,required this.isTap,required this.index,required this.onTaped,
    Key? key, required this.textController,
  }) : super(key: key);
final String hint;
final IconData icn;
final int index;
final TextEditingController textController;
 bool isTap;
 void Function()? onTaped;
  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
bool istouch=false;

  @override
  Widget build(BuildContext context) {
   
    return Container(
        padding: const EdgeInsets.only(top: 9),
        height:size(ctx: context).height*0.07,
        decoration: BoxDecoration(
          color:  widget.isTap? Colors.white:Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            widget.isTap? const BoxShadow(
              color: Color.fromARGB(255, 239, 234, 234),
              offset:  Offset(1, 2),
              blurRadius: 4,
              spreadRadius: 3,
            ):const BoxShadow(color: Colors.transparent)
          ],
        ),
        child: TextFormField(onTap: widget.onTaped,
        validator:  (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        } else {
          return null;
        }
      },
        controller: widget.textController,
          style: TextStyle(
              color: kgreen,
              fontWeight: FontWeight.bold,
              fontSize: 16),
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icn,
                color:widget.isTap?kgreen:Colors.grey,
              ),
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              labelText: widget.hint,
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none)),
        ));
  }
  change(){
 switch(widget.index){

 }  }
}
