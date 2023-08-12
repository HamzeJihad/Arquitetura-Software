
import 'package:flutter/material.dart';

class TextFieldTwoItens extends StatefulWidget {
  final Icon icon;
  final String text;
  final VoidCallback onPressed;
  final String ? img;
  const TextFieldTwoItens(
      {super.key, required this.icon, required this.text, required this.onPressed, this.img});
  @override
  _TextFieldTwoItensState createState() => _TextFieldTwoItensState();
}

class _TextFieldTwoItensState extends State<TextFieldTwoItens> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.grey.withAlpha(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side:const BorderSide(color: Colors.white),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          children: [

           widget.img == null ?     
            Flexible(
              fit: FlexFit.tight,
              child: widget.icon,
              
            )
              :
             Flexible(
                fit:  FlexFit.tight,
                child:Image.asset(widget.img ??'', color:  Colors.blueGrey,))    ,
            Flexible(
              fit: FlexFit.tight,
              child: Container(),
            ),
            Flexible(
                fit: FlexFit.tight,
                flex: 8,
                child: Text(
                  widget.text,
                  style:const TextStyle(color: Colors.black54),
                )),

         
            const Flexible(
                fit: FlexFit.tight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black45,
                ))

          
          ],
        ),
      ),
    );
  }
}
