import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_ui/pages/OPT/otp_screen.dart';

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       backgroundColor: Color(0xfff7f6fb),
       body: SafeArea(  
         child: Padding(  
           padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
           child: Column(  
             children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: GestureDetector(  
                   onTap: ()=>Get.back(),
                   child: Icon(
                     Icons.arrow_back,
                     size: 32,
                     color: Colors.black,

                   ),

                 ),
               ),
                 SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/illustration-2.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
                Text(
                'Registration',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Add your phone number. we'll send you a verification code so we know you're real",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(  
                  children: [
                    TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(  
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(  
                           enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),

                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '(+84)',
                                style: TextStyle(  
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ),
                             suffixIcon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 32,
                        ),

                        ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: ()=>Get.to(Otp()), 
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          shape:
                              MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Send',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
             ],
           ),
         ),
       ),
    );
  }
}