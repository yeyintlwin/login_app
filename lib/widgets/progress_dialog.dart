import 'dart:ui';

import 'package:flutter/material.dart';

class DialogBuilder {
  BuildContext context;
  DialogBuilder(this.context);

  showLoadingIndicator({required String message}) {
    showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: WillPopScope(
            child: AlertDialog(
              content: LoadingIndicator(
                message: message,
              ),

              //   backgroundColor: Color(0x88000000),
            ),
            onWillPop: () async => false,
          ),
        );
      },
    );
  }

  dismmis() {
    Navigator.of(context).pop();
  }
}

// ignore: must_be_immutable
class LoadingIndicator extends StatelessWidget {
  late String msg;
  LoadingIndicator({Key? key, required String message}) : super(key: key) {
    msg = message;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          Text(msg),
        ],
      ),
    );
  }
}
