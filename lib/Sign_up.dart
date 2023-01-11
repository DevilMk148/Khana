import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'main.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}
class _Sign_InState extends State<Sign_In> {

  String? gender;
  bool valuefirst = false;
  TextEditingController dateInput = new TextEditingController();
  void initState(){
    dateInput.text="";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        Container(
          child: Column(
            children: [

              Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(height: 7,),
                          Text("Add ditals to Sign Up",style: TextStyle(fontSize: 14,color: Colors.white),)
                        ],
                      ),
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(107, 0, 0, 1),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(160),bottomLeft: Radius.circular(160),)
                      ),
                    ),//Sign Up text
                    Container(
                      height: 595,
                      margin: EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your name",
                                    labelText: "Name",
                                    prefixIcon: Icon(Icons.person_outline)
                                ),
                              ),
                            ),//name
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your email",
                                    labelText: "Email",
                                    prefixIcon: Icon(Icons.email_outlined)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your Mobile Number",
                                    labelText: "Phone",
                                    prefixIcon: Icon(Icons.call_outlined)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: dateInput,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                    ),
                                    // icon: Icon(Icons.calendar_month_outlined),
                                    labelText: "Date",
                                    prefixIcon: Icon(Icons.date_range_outlined)
                                ),
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2050),
                                  );
                                  if(pickedDate != null){
                                    setState(() {
                                      dateInput.text= DateFormat('yyyy-MM-dd').format(pickedDate);
                                    });
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    hintText: "Enter your Hobbies",
                                    labelText: "Hobbies",
                                    prefixIcon: Icon(Icons.note_alt_outlined)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            Row(children: [
                              Checkbox(value: this.valuefirst, onChanged: (value){
                                setState(() {
                                  this.valuefirst=value!;
                                });
                              }),
                              Text("Accept All"),
                              SizedBox(width: 5,),
                              Text("Tearm & Condition",style: TextStyle(decoration: TextDecoration.underline)),
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child:Container(
                                  height: 40,
                                  margin: EdgeInsets.only(top:20),
                                  width: 250,
                                  child:ElevatedButton(
                                    onPressed:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home_Page()));
                                    },

                                    child: Text('SUBMIT',style: TextStyle(fontSize: 14,color: Colors.white)),
                                    style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty.all(Colors.black54),
                                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(107, 0 , 0, 1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          side: BorderSide(color:Colors.transparent),
                                        ))
                                    ),

                                  )
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:Color.fromRGBO(107, 0, 0, 1)
                        ),
                        width: 400,
                        height: 50,
                        child:Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text('Already have an Account?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Colors.white ),),
                            ), //line before login
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: new GestureDetector(
                                  onTap: (){

                                  },
                                  child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Color.fromRGBO(254, 132 , 132, 1) ),),
                                )

                            ), // login text
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}