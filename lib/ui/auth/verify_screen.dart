import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  Widget _buildBox({required String text, color = Colors.blueAccent}) =>
      Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: color,
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ));

  Widget _buildKey({required String? text, onClick}) => TextButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        onPressed: onClick,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
      );

  String _text1 = '-';
  String _text2 = '-';
  String _text3 = '-';
  String _text4 = '-';

  var keys = '';
  void addKey(var input) {
    setState(() {
      if (input == '-1') {
        if (keys.length <= 0) return;
        keys = keys.substring(0, keys.length - 1);
      } else {
        if (keys.length >= 4) return;
        keys += input;
      }

      var key1;
      var key2;
      var key3;
      var key4;

      try {
        key1 = keys[0];
        key2 = keys[1];
        key3 = keys[2];
        key4 = keys[3];
      } catch (e) {} // This is a magic trick.

      _text1 = key1 ?? '-';
      _text2 = key2 ?? '-';
      _text3 = key3 ?? '-';
      _text4 = key4 ?? '-';

      debugPrint("key: $keys, length: ${keys.length}");

      if (keys.length < 4) {
        // remove error, it assume reedit code.
        _boxColor = Colors.blueAccent;
        _showError = false;
      }

      if (keys.length == 4) {
        debugPrint("make request");
      }
    });
  }

  Color _boxColor = Colors.blueAccent;
  bool _showError = false;
  void verficationFailed() {
    setState(() {
      _boxColor = Colors.red;
      _showError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Verify Email',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Enter the 4-digit code we send you via email to continue.',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildBox(text: _text1, color: _boxColor),
                            _buildBox(text: _text2, color: _boxColor),
                            _buildBox(text: _text3, color: _boxColor),
                            _buildBox(text: _text4, color: _boxColor),
                          ],
                        ),
                        Visibility(
                          visible: _showError,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.info,
                                size: 14,
                                color: Colors.red,
                              ),
                              Text(
                                ' Verfication failed, Please try again.',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildKey(
                            text: '1',
                            onClick: () {
                              addKey('1');
                            }),
                        _buildKey(
                            text: '2',
                            onClick: () {
                              addKey('2');
                            }),
                        _buildKey(
                            text: '3',
                            onClick: () {
                              addKey('3');
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildKey(
                            text: '4',
                            onClick: () {
                              addKey('4');
                            }),
                        _buildKey(
                            text: '5',
                            onClick: () {
                              addKey('5');
                            }),
                        _buildKey(
                            text: '6',
                            onClick: () {
                              addKey('6');
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildKey(
                            text: '7',
                            onClick: () {
                              addKey('7');
                            }),
                        _buildKey(
                            text: '8',
                            onClick: () {
                              addKey('8');
                            }),
                        _buildKey(
                            text: '9',
                            onClick: () {
                              addKey('9');
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildKey(
                          text: '',
                        ),
                        _buildKey(
                            text: '0',
                            onClick: () {
                              addKey('0');
                            }),
                        _buildKey(
                            text: '⌫',
                            onClick: () {
                              addKey('-1');
                            }),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
