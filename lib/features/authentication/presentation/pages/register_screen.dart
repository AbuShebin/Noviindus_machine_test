import 'package:flutter/material.dart';
import 'package:noviindus_machine_test/core/common/custom_elevated_button.dart';
import 'package:noviindus_machine_test/core/common/custom_text_form_field.dart';
import 'package:noviindus_machine_test/features/authentication/presentation/widgets/add_treatment_custom_widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  String? _selectedOption = 'Option A';

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const TreatmentBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
          padding: EdgeInsets.zero,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: w * 0.05),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E50),
                    height: 1.3,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(w * 0.03),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: h * 0.023,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.01),

                  // SizedBox(height: h*0.01,),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Watsapp Number',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Address',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Branch',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Treatments',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Container(
                    width: w,
                    height: h * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.02),
                      color: Color.fromRGBO(217, 217, 217, 0.25),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(w * 0.01),
                              child: Text(
                                '1. Couple combo package i...',
                                style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2C3E50),
                                  height: 1.3,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: h * 0.018,
                              backgroundColor: Colors.red.shade400,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: h * 0.03,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 104, 55, 1),
                                  ),
                                ),
                                SizedBox(width: w * 0.02),
                                Container(
                                  height: h * 0.025,
                                  width: w * 0.09,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.shade500,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      w * 0.01,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 104, 55, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: w * 0.02),

                            Row(
                              children: [
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 104, 55, 1),
                                  ),
                                ),
                                SizedBox(width: w * 0.02),
                                Container(
                                  height: h * 0.025,
                                  width: w * 0.09,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.shade500,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      w * 0.01,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 104, 55, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 104, 55, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),

                  CustomElevatedButton(
                    ontap: () {_showCustomBottomSheet(context);},
                    backgroundColor: Color.fromRGBO(0, 104, 55, 1),
                    textColor: Colors.white,
                    width: w,
                    text: '+ Add Treatments',
                    height: h * 0.07,
                  ),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Discount Amount',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Payment Option',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Option A',
                            groupValue: _selectedOption,
                            onChanged: (value) {},
                          ),
                          const Text('Cash'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Option B',
                            groupValue: _selectedOption,
                            onChanged: (value) {},
                          ),
                          const Text('Card'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Option C',
                            groupValue: _selectedOption,
                            onChanged: (value) {},
                          ),
                          const Text('UPI'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Balance Amount',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Treatment Date',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  CustomTextFormField(),
                  SizedBox(height: h * 0.02),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Treatment Time',
                      style: TextStyle(
                        fontSize: h * 0.024,
                        color: Color(0xFF2C3E50),
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w * 0.4,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(217, 217, 217, 0.25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Hour"),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: w * 0.4,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(217, 217, 217, 0.25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Minutes"),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),

                  CustomElevatedButton(
                    ontap: () {
                      print('Button clicked');
                    },
                    backgroundColor: Color.fromRGBO(0, 104, 55, 1),
                    textColor: Colors.white,
                    width: w,
                    text: 'Save',
                    height: h * 0.07,
                  ),
                  SizedBox(height: h * 0.02),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
