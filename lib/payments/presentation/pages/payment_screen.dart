import 'package:flutter/material.dart';
import 'package:driver_prototype/reusable_widgets/my_app_bar.dart';

// import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

import '../controllers/payments_controller.dart';
import 'add_payment_method.dart';

class PaymentScreen extends StatelessWidget {
  final PaymentsController? paymentsController;

  const PaymentScreen({Key? key, this.paymentsController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Wallet", context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 50,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'EK',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Erick Kipkoech',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.0),
                const Text(
                  "0798767470",
                  style: TextStyle(
                    // fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8.0),
                Card(
                  elevation: 0.0,
                  margin: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.grey[200],
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Balance Ksh. 120,000',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const Text(
              'Payment Methods',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              tileColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.phone_android, color: Colors.green),
              ),
              title: const Text(
                'M-Pesa Mobile payment',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: const Text('+254 712 345 678'),
              trailing: const Icon(Icons.check_circle, color: Colors.blue),
              onTap: () {
                // initiateMpesaPayment(context);
              },
            ),
            const SizedBox(height: 16.0),
            const Divider(),
            ListTile(
              textColor: Colors.blue,
              iconColor: Colors.blue,
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  weight: 20,
                ),
              ),
              title: const Text(
                'Add New Payment Method',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddPaymentMethodPage(),
                  ),
                );
              },
            ),
            const Divider(),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History (Last 30 days)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const PaymentTransactionHistoryListTile(
              false,
              'Brian Opicho',
              '21st June, 2023',
              '- Ksh. 900',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              true,
              'Brian Opicho',
              '21st June, 2023',
              '+ Ksh. 500',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              false,
              'Brian Opicho',
              '21st June, 2023',
              '- Ksh. 1000',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              true,
              'Brian Opicho',
              '21st June, 2023',
              '+ Ksh. 1200',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              false,
              'Brian Opicho',
              '21st June, 2023',
              '- Ksh. 800',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              true,
              'Brian Opicho',
              '21st June, 2023',
              '+ Ksh. 1000',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              false,
              'Brian Opicho',
              '21st June, 2023',
              '- Ksh. 900',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              true,
              'Brian Opicho',
              '21st June, 2023',
              '+ Ksh. 500',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              false,
              'Brian Opicho',
              '21st June, 2023',
              '- Ksh. 1000',
            ),
            const Divider(),
            const PaymentTransactionHistoryListTile(
              true,
              'Brian Opicho',
              '21st June, 2023',
              '+ Ksh. 1200',
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }

// void initiateMpesaPayment(BuildContext context) async {
//   try {
//     MpesaFlutterPlugin.setConsumerKey("YOUR_CONSUMER_KEY");
//     MpesaFlutterPlugin.setConsumerSecret("YOUR_CONSUMER_SECRET");
//
//     dynamic transactionInitialisation = await MpesaFlutterPlugin.initializeMpesaSTKPush(
//       businessShortCode: "YOUR_BUSINESS_SHORT_CODE",
//       transactionType: "CustomerPayBillOnline",
//       amount: 100.0,
//       partyA: "CUSTOMER_PHONE_NUMBER",
//       partyB: "YOUR_BUSINESS_SHORT_CODE",
//       callBackURL: "YOUR_CALLBACK_URL",
//       accountReference: "YOUR_ACCOUNT_REFERENCE",
//       phoneNumber: "CUSTOMER_PHONE_NUMBER",
//       baseUri: "YOUR_BASE_URI",
//       transactionDesc: "YOUR_TRANSACTION_DESCRIPTION",
//       passKey: "YOUR_PASSKEY",
//     );
//
//     if (transactionInitialisation is Map) {
//       dynamic customerMessage = transactionInitialisation['CustomerMessage'];
//       if (customerMessage != null) {
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Payment Initiated'),
//               content: Text(customerMessage),
//               actions: [
//                 TextButton(
//                   child: const Text('OK'),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   } catch (e) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Error'),
//           content: Text('An error occurred during payment initiation: $e'),
//           actions: [
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
}

class PaymentTransactionHistoryListTile extends ListTile {
  final bool isDeposit;
  final String name;
  final String date;
  final String amount;

  const PaymentTransactionHistoryListTile(
      this.isDeposit, this.name, this.date, this.amount,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Colors.black,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.phone_android,
          color: Colors.white,
        ),
      ),
      title: Text(name),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: isDeposit ? Colors.green : Colors.black,
          fontSize: 18,
        ),
      ),
      onTap: () {
        // Handle viewing the details of this transaction
      },
    );
  }
}
