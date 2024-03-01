// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:details/models/CustomerDetails.dart';
import 'package:details/providers/customer_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  get firstName => null;

  @override
  Widget build(BuildContext context) {
    CustomerDetailsProvider _customerDetailsProvider =
        Provider.of<CustomerDetailsProvider>(context, listen: false);

    CustomerDetails _customerDetails =
        _customerDetailsProvider.getCustomerDetails();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input & Output App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'firstName: ${_customerDetails.firstName}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'secondName: ${_customerDetails.secondName}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'email:${_customerDetails.email}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'address: ${_customerDetails.address}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
