import 'package:flutter/material.dart';
enum SingingCharacter { lafayette, jefferson }




  class RadioCard extends StatefulWidget {
    RadioCard({Key? key,required this.radio_answer}) : super(key: key);

    final String radio_answer;
    
    //final String radioitem = radio_answer;

  @override
  _RadioCardState createState() => _RadioCardState();
}
  class _RadioCardState extends State<RadioCard> {

SingingCharacter? _character; // = SingingCharacter.lafayette;
  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        
      children: <Widget>[
     Text('Selected radio button = $_character'),

              ListTile(
          title: Text('$this.radio_answer'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
               // widget.radioitem = value.toString();
               // print(widget.radioitem);

              });
            },
          ),
        ),],));}}
