import 'package:flutter/material.dart';

class trangsrttinghome extends StatefulWidget {
  const trangsrttinghome({super.key});

  @override
  State<trangsrttinghome> createState() => _trangsrttinghomeState();
}

class _trangsrttinghomeState extends State<trangsrttinghome> {
  double _currentSliderValue = 5;
  double _currentSliderValue1 = 5;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(''),
          ),
          Container(
            child: Expanded(
              flex: 4,
              child: const Text(
                'Settings',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 65, 70, 128),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 25,
                left: 20,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 35,
                  color: Colors.red,
                ),
                onPressed: () => Navigator.pop(context, 'OK'),
              ),
            ),
          )
        ],
      ),
      content: Container(
        width: 400,
        height: 250,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/musical_note.png'),
                Center(
                  child: Column(
                    children: [
                      Container(
                          child: Text(
                        'Music',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      )),
                      Slider(
                          value: _currentSliderValue,
                          max: 100,
                          divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          })
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset('assets/volume.png'),
                Center(
                  child: Column(
                    children: [
                      Container(
                          child: Text(
                        'Volume',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 70, 128),
                        ),
                      )),
                      Slider(
                          value: _currentSliderValue1,
                          max: 100,
                          divisions: 10,
                          label: _currentSliderValue1.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue1 = value;
                            });
                          })
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red[300],
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text(
              'Đăng xuất',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
