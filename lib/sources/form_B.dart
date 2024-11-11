import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Form_B extends StatelessWidget {
  const Form_B({super.key});

  @override
  Widget build(BuildContext context) {
    return FormB_Pers();
  }
}

class FormB_Pers extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iago Figar 24/25'), elevation: 0, backgroundColor: Colors.lightBlueAccent,),
      body: Padding(
        padding: EdgeInsets.only(
          left: 0.0,
          right: 0.0,
          top: 10.0
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14, right: 14, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      label: Text('Pers.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white)), backgroundColor: Color(0xFF335F8C), radius: 10),
                      onPressed: () {}
                  ),
                  TextButton.icon(
                      label: Text('Contact', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(child: Icon(Icons.edit, color: Colors.white, size: 12), backgroundColor: Colors.grey, radius: 10),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FormB_Contact();
                            },
                          ),
                        );
                      }
                  ),
                  TextButton.icon(
                      label: Text('Upload', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(child: Icon(Icons.check, color: Colors.white, size: 12), backgroundColor: Colors.grey, radius: 10),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FormB_Upload();
                            },
                          ),
                        );
                      }
                  ),
                ]
              )
            ),
            Divider(
              indent: 0.0,
              endIndent: 0.0
            ),
            Center(
              child: Text('Personal', style: TextStyle(fontSize: 40))
            ),
            Text('Pulsi "Contact" o pulsi el botó de "Continue".', style: TextStyle(fontSize: 16)),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                  children: [
                    ElevatedButton(
                        child: Text('CONTINUE'),
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF335F8C)),
                            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return FormB_Contact();
                              },
                            ),
                          );
                        }
                    ),
                    TextButton(
                        child: Text('CANCEL'),
                        onPressed: () {}
                    )
                  ]
              )
            )
          ]
        )
      )
    );
  }
}

class FormB_Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Iago Figar 24/25'), elevation: 0, backgroundColor: Colors.lightBlueAccent,),
        body: Padding(
            padding: EdgeInsets.only(
                left: 0.0,
                right: 0.0,
                top: 10.0
            ),
            child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14, right: 14, bottom: 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                                label: Text('Pers.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white)), backgroundColor: Color(0xFF335F8C), radius: 10),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Pers();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Contact', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Icon(Icons.edit, color: Colors.white, size: 12), backgroundColor: Color(0xFF335F8C), radius: 10),
                                onPressed: () {}
                            ),
                            TextButton.icon(
                                label: Text('Upload', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Icon(Icons.check, color: Colors.white, size: 12), backgroundColor: Colors.grey, radius: 10),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Upload();
                                      },
                                    ),
                                  );
                                }
                            ),
                          ]
                      )
                  ),
                  Divider(
                      indent: 0.0,
                      endIndent: 0.0
                  ),
                  Center(
                      child: Text('Contact', style: TextStyle(fontSize: 40))
                  ),
                  Text('Pulsi "Upload" o pulsi el botó de "Continue".', style: TextStyle(fontSize: 16)),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                          children: [
                            ElevatedButton(
                                child: Text('CONTINUE'),
                                style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF335F8C)),
                                    foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Upload();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton(
                                child: Text('CANCEL'),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Pers();
                                      },
                                    ),
                                  );
                                }
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}

class FormB_Upload extends StatefulWidget {
  @override
  State<FormB_Upload> createState() => _FormB_UploadState();
}

class _FormB_UploadState extends State<FormB_Upload> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Iago Figar 24/25'), elevation: 0, backgroundColor: Colors.lightBlueAccent,),
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.only(
                left: 0.0,
                right: 0.0,
                top: 7.0
            ),
            child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14, right: 14, bottom: 2),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                                label: Text('Pers.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white)), backgroundColor: Color(0xFF335F8C), radius: 10),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Pers();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Contact', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Icon(Icons.edit, color: Colors.white, size: 12), backgroundColor: Color(0xFF335F8C), radius: 10),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return FormB_Contact();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Upload', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(child: Icon(Icons.check, color: Colors.white, size: 12), backgroundColor: Color(0xFF335F8C), radius: 10),
                                onPressed: () {}
                            ),
                          ]
                      )
                  ),
                  Divider(
                      indent: 0.0,
                      endIndent: 0.0
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child:
                      FormBuilder(
                        key: _formKey,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              FormBuilderTextField(
                                name: 'Email',
                                decoration:
                                  InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xFFA0CBF8)),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.mail),
                                    prefixIconColor: Color(0xFFA0CBF8),
                                    hintStyle: TextStyle(color: Color(0xFFA0CBF8))
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: SizedBox(
                                  height: 135,
                                  child: FormBuilderTextField(
                                    name: 'Address',
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xFFA0CBF8)),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      hintText: 'Address',
                                      prefixIcon: Icon(Icons.home_rounded),
                                      prefixIconColor: Color(0xFFA0CBF8),
                                      hintStyle: TextStyle(color: Color(0xFFA0CBF8))
                                    )
                                  )
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: FormBuilderTextField(
                                    name: 'Mobile',
                                    decoration:
                                    InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Color(0xFFA0CBF8)),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        hintText: 'Mobile No',
                                        prefixIcon: Icon(Icons.phone),
                                        prefixIconColor: Color(0xFFA0CBF8),
                                        hintStyle: TextStyle(color: Color(0xFFA0CBF8))
                                    )
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: Row(
                                    children: [
                                      ElevatedButton(
                                          child: Text('CONTINUE'),
                                          style: ButtonStyle(
                                              backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF335F8C)),
                                              foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                                          ),
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
                                          }
                                      ),
                                      TextButton(
                                          child: Text('CANCEL'),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return FormB_Contact();
                                                },
                                              ),
                                            );
                                          }
                                      )
                                    ]
                                )
                              )
                            ]
                          )
                        )
                      )
                    )
                ]
            )
        )
    );
  }
}
