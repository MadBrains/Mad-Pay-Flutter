import 'package:flutter/material.dart';

import 'package:mad_pay/mad_pay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MadPay pay = MadPay();
  final List<PaymentItem> items = <PaymentItem>[
    PaymentItem(name: 'T-Shirt', price: 2.98),
    PaymentItem(name: 'Trousers', price: 15.24),
  ];

  String result = 'Result will be shown here';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(result),
              TextButton(
                onPressed: () async {
                  try {
                    final bool req = await pay.checkPayments();
                    setState(() {
                      result = 'Can make payments: $req';
                    });
                  } catch (e) {
                    setState(() {
                      result = 'Error:\n$e';
                    });
                  }
                },
                child: const Text('Can make payments?'),
              ),
              TextButton(
                onPressed: () async {
                  try {
                    final bool req = await pay.checkActiveCard(
                      paymentNetworks: <PaymentNetwork>[
                        PaymentNetwork.visa,
                        PaymentNetwork.mastercard,
                      ],
                    );
                    setState(() {
                      result = 'Can make payments with verified card: $req';
                    });
                  } catch (e) {
                    setState(() {
                      result = 'Error:\n$e';
                    });
                  }
                },
                child: const Text('Can make payments with verified card?'),
              ),
              TextButton(
                onPressed: () async {
                  try {
                    final PaymentResponse? req = await pay.processingPayment(
                      google: GoogleParameters(
                        gatewayName: 'example',
                        gatewayMerchantId: 'example_id',
                        merchantId: 'TEST',
                        merchantName: 'Test',
                        cardParameters: CardParameters(
                          billingAddressRequired: true,
                          billingAddressParameters: BillingAddressParameters(
                            billingFormat: BillingFormat.full,
                            phoneNumberRequired: true,
                          ),
                        ),
                        transactionInfo: TransactionInfo(
                          totalPriceLabel: 'Test',
                          checkoutOption:
                              CheckoutOption.completeImmediatePurchase,
                        ),
                        shippingAddressRequired: true,
                        shippingAddressParameters: ShippingAddressParameters(
                          phoneNumberRequired: true,
                        ),
                      ),
                      apple: AppleParameters(
                        merchantIdentifier: 'example_id',
                        billingContact: Contact(
                          emailAddres: 'test@test.com',
                        ),
                        shippingContact: Contact(
                          emailAddres: 'test@test.com',
                        ),
                      ),
                      currencyCode: 'USD',
                      countryCode: 'US',
                      paymentItems: items,
                      paymentNetworks: <PaymentNetwork>[
                        PaymentNetwork.visa,
                        PaymentNetwork.mastercard,
                      ],
                    );
                    setState(() {
                      result = 'Try to pay:\n${req?.token}';
                    });
                  } catch (e) {
                    setState(() {
                      result = 'Error:\n$e';
                    });
                  }
                },
                child: const Text('Try to pay?'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
