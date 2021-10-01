import 'package:flutter/material.dart';
import 'package:login_app/widgets/progress_dialog.dart';

class DialogTestScreen extends StatefulWidget {
  const DialogTestScreen({Key? key}) : super(key: key);

  @override
  _DialogTestScreenState createState() => _DialogTestScreenState();
}

class _DialogTestScreenState extends State<DialogTestScreen> {
  Future _incrementCounter() async {
    return Future.delayed(
      const Duration(seconds: 3),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () async {
              DialogBuilder(context)
                  .showLoadingIndicator(message: 'Logging in...');
              await _incrementCounter();
              DialogBuilder(context).dismmis();
            },
            child: const Text("Click Here!"),
          ),
        ),
      ),
    );
  }
}
