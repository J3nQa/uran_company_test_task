import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.accessible, color: Colors.black38, size: 80),
          SizedBox(height: 16),
          Text('Oops!', style: TextStyle(color: Colors.black38, fontSize: 36)),
          SizedBox(height: 8),
          Text('Something went wrong.',
              style: TextStyle(color: Colors.black38, fontSize: 24)),
        ],
      ),
    );
  }
}
