import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

class Form_D extends StatefulWidget {
  const Form_D({super.key});

  @override
  State<Form_D> createState() => _Form_DState();
}

class _Form_DState extends State<Form_D> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iago Figar 24/25'), elevation: 0, backgroundColor: Colors.lightBlueAccent,),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 5.0
        ),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                FormBuilderTypeAhead<String>(
                  name: 'autocomplete',
                  decoration: InputDecoration(
                    labelText: 'Autocomplete',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    hintText: 'Start typing country name',
                    
                  ),
                  itemBuilder: (context, country) {
                    return ListTile(
                      title: Text(country),
                    );
                  },
                  onSelected: (country) {
                    FormBuilder.of(context)?.fields['country']?.didChange(country);
                  },
                  suggestionsCallback: (query) {
                    return countries.where((country) => country.toLowerCase().contains(query.toLowerCase())).toList();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: FormBuilderDateTimePicker(
                    name: 'date',
                    inputType: InputType.date,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Date Picker'
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: FormBuilderDateRangePicker(
                    name: 'date_range',
                    firstDate: DateTime(2024, 10, 1),
                    lastDate: DateTime(2024, 11, 31),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.close),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Date Range'
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: FormBuilderDateTimePicker(
                    name: 'time',
                    inputType: InputType.time,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.access_time),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Time Picker'
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: FormBuilderFilterChip(
                    name: 'filter_chip',
                    alignment: WrapAlignment.center,
                    backgroundColor: Color(0xFF335F8C),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Input Chips (Filter Chip)'
                    ),
                    shape: StadiumBorder(),
                    spacing: 10,
                    options: ['HTML', 'CSS', 'React', 'Dart', 'TypeScript', 'Angular']
                        .map((option) => FormBuilderChipOption(
                        value: option,
                        child: Text(option, style: TextStyle(color: Colors.white))
                    ))
                        .toList(),
                  )
                )
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

  final List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'American Samoa',
    'Andorra',
    'Angola',
    'Anguilla',
    'Antarctica',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Aruba',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bermuda',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'British Indian Ocean Territory',
    'Brunei Darussalam',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Cayman Islands',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo',
    'Congo (Democratic Republic)',
    'Cook Islands',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'French Guiana',
    'French Polynesia',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Greenland',
    'Grenada',
    'Guadeloupe',
    'Guam',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kuwait',
    'Kyrgyzstan',
    'Lao People\'s Democratic Republic',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Martinique',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russian Federation',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syrian Arab Republic',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Timor-Leste',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States of America',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Venezuela',
    'Vietnam',
    'Yemen',
    'Zambia',
    'Zimbabwe'
  ];
}