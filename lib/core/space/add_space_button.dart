import 'package:flutter/material.dart';

class AddSpaceButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AddSpaceButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: new SizedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.circle),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
