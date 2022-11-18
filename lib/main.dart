import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(DiabetesCh());
}

class DiabetesCh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => BaseApp(),
        '/NextPage': (context) => NextPage()
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Container(
          child: Center(
            child: Text('Diabetes Medication Support App'),
          ),
        ),
      ),
      body: Diabetes(),
    );
  }
}

class Diabetes extends StatefulWidget {
  @override
  _DiabetesState createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/image2.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Option 1 - Yes',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.lightGreen),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Option 2 - No',
                                style:
                                    TextStyle(fontSize: 28, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Normal Insulin Blood Levels',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: insulinBloodLevel,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  insulinBloodLevel = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: insulinBloodLevel,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  setState(() {});
                                  insulinBloodLevel = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Insulin Drug Medication',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: insulinDrug,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  insulinDrug = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: insulinDrug,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  setState(() {});
                                  insulinDrug = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Normal Glycose Blood Levels',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: glycose,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  glycose = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: glycose,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  glycose = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Metformin Drug Medication',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: metforminDrug,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  metforminDrug = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: metforminDrug,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  metforminDrug = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Hospital Readmission Issued',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: readmission,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  readmission = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: readmission,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  readmission = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Are you a Male',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: gender,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  gender = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: gender,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  gender = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Normal A1C test Results',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: normalA1C,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  normalA1C = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: normalA1C,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  normalA1C = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              'Steady Dosage Of Metformin',
                              style: TextStyle(fontSize: 20),
                            ),
                            Radio(
                              value: 1,
                              groupValue: steadyMetformin,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  steadyMetformin = T;
                                });
                              },
                            ),
                            Radio(
                              value: 2,
                              groupValue: steadyMetformin,
                              onChanged: (T) {
                                print(T);
                                setState(() {
                                  steadyMetformin = T;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            child: Text('Next Page'),
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.pushNamed(context, '/NextPage');
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Container(
          child: Center(
            child: Text('Diabetes Medication Support App'),
          ),
        ),
      ),
      body: DiabetesCh2(),
    );
  }
}

class DiabetesCh2 extends StatefulWidget {
  @override
  _DiabetesCh2State createState() => _DiabetesCh2State();
}

class _DiabetesCh2State extends State<DiabetesCh2> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/image2.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'What Is Your Age: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) =>
                              input.length > 3 ? 'Enter a valid Age' : null,
                          onSaved: (input) => age = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Number Of Hospital Inpatient Visits: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 2
                              ? 'Enter a valid Number of Visits'
                              : null,
                          onSaved: (input) => inpatientVisits = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Number Of Different Diagnoses: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 2
                              ? 'Enter a valid Number of Diagnoses:'
                              : null,
                          onSaved: (input) => numDiagnoses = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText:
                                'Number Of Medication Substances In Drugs: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 2
                              ? 'Enter a valid number of Medication Number Substances'
                              : null,
                          onSaved: (input) => medicationNumber = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'How Many Days You Stayed In Hospital: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 3
                              ? 'Enter a valid Number of days'
                              : null,
                          onSaved: (input) => timeInHospital = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText:
                                'Number of test Procedures in Hospital: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 3
                              ? 'Enter a valid Number of procedures'
                              : null,
                          onSaved: (input) => numProcedures = input,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText:
                                'Number Of Emergency Visits In Hospital: ',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          validator: (input) => input.length > 2
                              ? 'Enter a valid number of visits'
                              : null,
                          onSaved: (input) => emergencyVisits = input,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              color: Colors.blue,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Previous Page',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: _submit,
                              child: Text('Submit'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      if (insulinBloodLevel == 2) {
        Alert(context: context, title: "WARNING", desc: "High Levels Of Risk")
            .show();
      } else {
        if (metforminDrug == 2) {
          if (insulinDrug == 2) {
            Alert(context: context, title: "Results", desc: "Out Of Danger")
                .show();
          } else {
            if (double.parse(age) < 50) {
              Alert(context: context, title: "Results", desc: "Out Of Danger")
                  .show();
            } else {
              if (double.parse(medicationNumber) <= 14) {
                Alert(context: context, title: "Results", desc: "Out Of Danger")
                    .show();
              } else {
                if (glycose == 1) {
                  Alert(
                          context: context,
                          title: "Results",
                          desc: "Out Of Danger")
                      .show();
                } else {
                  if (double.parse(inpatientVisits) > 1) {
                    Alert(
                            context: context,
                            title: "WARNING",
                            desc: "High Levels Of Risk")
                        .show();
                  } else {
                    if (double.parse(age) <= 60) {
                      Alert(
                              context: context,
                              title: "Results",
                              desc: "Out Of Danger")
                          .show();
                    } else {
                      if (double.parse(medicationNumber) > 27) {
                        if (readmission == 1) {
                          Alert(
                                  context: context,
                                  title: "WARNING",
                                  desc: "You Need To Visit The Doctor")
                              .show();
                        } else {
                          if (double.parse(numDiagnoses) <= 8) {
                            Alert(
                                    context: context,
                                    title: "WARNING",
                                    desc: "High Levels Of Risk")
                                .show();
                          } else {
                            Alert(
                                    context: context,
                                    title: "Results",
                                    desc: "Out Of Danger")
                                .show();
                          }
                        }
                      } else {
                        if (double.parse(age) >= 90) {
                          Alert(
                                  context: context,
                                  title: "WARNING",
                                  desc: "High Levels Of Risk")
                              .show();
                        } else {
                          if (double.parse(numDiagnoses) <= 8) {
                            if (readmission == 2) {
                              Alert(
                                      context: context,
                                      title: "WARNING",
                                      desc: "You Need To Visit The Doctor")
                                  .show();
                            } else {
                              if (double.parse(timeInHospital) > 3) {
                                Alert(
                                        context: context,
                                        title: "Results",
                                        desc: "Out Of Danger")
                                    .show();
                              } else {
                                if (double.parse(numProcedures) <= 0) {
                                  Alert(
                                          context: context,
                                          title: "WARNING",
                                          desc: "High Levels Of Risk")
                                      .show();
                                } else {
                                  if (double.parse(timeInHospital) > 2) {
                                    Alert(
                                            context: context,
                                            title: "WARNING",
                                            desc: "High Levels Of Risk")
                                        .show();
                                  } else {
                                    Alert(
                                            context: context,
                                            title: "Results",
                                            desc: "Out Of Danger")
                                        .show();
                                  }
                                }
                              }
                            }
                          } else {
                            if (double.parse(inpatientVisits) > 0) {
                              Alert(
                                      context: context,
                                      title: "Results",
                                      desc: "Out Of Danger")
                                  .show();
                            } else {
                              if (double.parse(age) < 70) {
                                Alert(
                                        context: context,
                                        title: "Results",
                                        desc: "Out Of Danger")
                                    .show();
                              } else {
                                if (gender == 2) {
                                  Alert(
                                          context: context,
                                          title: "Results",
                                          desc: "Out Of Danger")
                                      .show();
                                } else {
                                  if (double.parse(timeInHospital) > 5) {
                                    Alert(
                                            context: context,
                                            title: "Results",
                                            desc: "Out Of Danger")
                                        .show();
                                  } else {
                                    Alert(
                                            context: context,
                                            title: "WARNING",
                                            desc: "High Levels Of Risk")
                                        .show();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        } else {
          if (insulinDrug == 1) {
            Alert(
                    context: context,
                    title: "WARNING",
                    desc: "High Levels Of Risk")
                .show();
          } else {
            if (steadyMetformin == 2) {
              Alert(
                      context: context,
                      title: "WARNING",
                      desc: "High Levels Of Risk")
                  .show();
            } else {
              if (normalA1C == 2) {
                Alert(
                        context: context,
                        title: "WARNING",
                        desc: "High Levels Of Risk")
                    .show();
              } else {
                if (double.parse(medicationNumber) <= 11) {
                  if (double.parse(medicationNumber) <= 6) {
                    Alert(
                            context: context,
                            title: "Results",
                            desc: "Out Of Danger")
                        .show();
                  } else {
                    if (double.parse(numDiagnoses) > 8) {
                      Alert(
                              context: context,
                              title: "WARNING",
                              desc: "High Levels Of Risk")
                          .show();
                    } else {
                      if (double.parse(numProcedures) > 0) {
                        Alert(
                                context: context,
                                title: "Results",
                                desc: "Out Of Danger")
                            .show();
                      } else {
                        if (gender == 1) {
                          Alert(
                                  context: context,
                                  title: "WARNING",
                                  desc: "High Levels Of Risk")
                              .show();
                        } else {
                          if (double.parse(medicationNumber) > 8) {
                            Alert(
                                    context: context,
                                    title: "WARNING",
                                    desc: "High Levels Of Risk")
                                .show();
                          } else {
                            Alert(
                                    context: context,
                                    title: "Results",
                                    desc: "Out Of Danger")
                                .show();
                          }
                        }
                      }
                    }
                  }
                } else {
                  if (double.parse(emergencyVisits) > 2) {
                    Alert(
                            context: context,
                            title: "Results",
                            desc: "Out Of Danger")
                        .show();
                  } else {
                    if (normalA1C == 1) {
                      Alert(
                              context: context,
                              title: "Results",
                              desc: "Out Of Danger")
                          .show();
                    } else {
                      if (double.parse(inpatientVisits) <= 1) {
                        Alert(
                                context: context,
                                title: "WARNING",
                                desc: "High Levels Of Risk")
                            .show();
                      } else {
                        if (readmission == 2) {
                          Alert(
                                  context: context,
                                  title: "Results",
                                  desc: "Out Of Danger")
                              .show();
                        } else {
                          Alert(
                                  context: context,
                                  title: "WARNING",
                                  desc: "High Levels Of Risk")
                              .show();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
