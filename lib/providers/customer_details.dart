import 'package:details/models/CustomerDetails.dart';
import 'package:flutter/material.dart';

class CustomerDetailsProvider with ChangeNotifier {
  CustomerDetails _customerDetails =
      CustomerDetails(firstName: '', secondName: '', email: '', address: '');

  getCustomerDetails() {
    return _customerDetails;
  }

  setCustomerDetails(CustomerDetails customerDetails) {
    _customerDetails = customerDetails;
    notifyListeners();
  }
}
