import 'package:details/models/CustomerDetails.dart';
import 'package:details/pages/home_page.dart';
import 'package:details/providers/customer_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _secondNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  loginDetails(BuildContext context) {
    CustomerDetailsProvider _customerDetailsProvider =
        Provider.of<CustomerDetailsProvider>(context, listen: false);

    CustomerDetails _customerDetails =
        _customerDetailsProvider.getCustomerDetails();

    _customerDetails.firstName = _firstNameController.text;
    _customerDetails.secondName = _secondNameController.text;
    _customerDetails.email = _emailController.text;
    _customerDetails.address = _addressController.text;

    _customerDetailsProvider.setCustomerDetails(_customerDetails);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(30)),
          TextField(
            controller: _firstNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your First Name:",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _secondNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your Last Name:",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your email",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _addressController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your address",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              loginDetails(context);
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
