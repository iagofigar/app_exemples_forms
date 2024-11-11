import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Form_C extends StatefulWidget {
  const Form_C({super.key});

  @override
  State<Form_C> createState() => _Form_CState();
}

class _Form_CState extends State<Form_C> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iago Figar 24/25'), elevation: 0, backgroundColor: Colors.lightBlueAccent,),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 13.0
        ),
        child: FormBuilder(
          key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 0),
                  // CHOICE CHIPS - START
                  FormBuilderChoiceChip<String>(
                    name: 'choice_chips',
                    alignment: WrapAlignment.center,
                    decoration: InputDecoration(
                      labelText: 'Choice Chips',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4)
                    ),
                    shape: StadiumBorder(),
                    spacing: 30,
                    options: ['Flutter', 'Android', 'Chrome OS']
                      .map((option) => FormBuilderChipOption(
                      value: option,
                      avatar: CircleAvatar(
                        child: FlutterLogo()
                      )
                    ))
                      .toList(),
                  ),
                  // CHOICE CHIPS - END

                  // SWITCH - START
                  Padding (
                    padding: EdgeInsets.only(top: 20),
                    child: FormBuilderSwitch(
                      name: 'switch',
                      decoration: InputDecoration(
                        labelText: 'Switch',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8)
                      ),
                      title: const Text('This is a switch')
                    ),
                  ),
                  // SWITCH - END

                  // TEXT - START
                  Padding (
                    padding: EdgeInsets.only(top: 20),
                    child: FormBuilderTextField(
                      name: 'textField',
                      decoration: InputDecoration(
                        labelText: 'Text Field',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.text_format),
                        errorText: _hasError ? 'Value must have a length less than or equal to 15' : null,
                      ),
                      maxLength: 15,
                      maxLengthEnforcement: MaxLengthEnforcement.none,
                      onChanged: (text) {
                        setState(() {
                          _hasError = text != null && text.length > 15;
                        });
                      }
                    ),

                  ),
                  // TEXT - END

                  // DROPDOWN - START
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: FormBuilderDropdown(
                        name: 'dropdown',
                        decoration: InputDecoration(
                          labelText: 'Dropdown Field',
                          border: OutlineInputBorder()
                        ),
                        items: ['Finland', 'Spain', 'United Kingdom']
                        .map((option) => DropdownMenuItem(
                          child: Text(option),
                          value: option
                        ))
                        .toList(),
                    )
                  ),
                  // DROPDOWN - END

                  // RADIO - START
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: FormBuilderRadioGroup(
                        name: 'radioGroup',
                        decoration: InputDecoration(
                          labelText: 'Radio Group Model',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8)
                        ),
                        options: ['Option 1', 'Option 2', 'Option 3', 'Option 4']
                        .map((option) => FormBuilderFieldOption(
                          child: Text(option),
                          value: option
                        ))
                        .toList(),
                        orientation: OptionsOrientation.vertical
                    )
                  )
                  // RADIO - END
                ]
              )
            )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _formKey.currentState?.save();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Submission Completed'),
                content: Text(_formKey.currentState!.value.toString()),
                  icon: const Icon(Icons.check_circle),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close')
                  )
                ]
              );
            }
          );
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}