import 'package:flutter/material.dart';
import 'package:mad_pay/mad_pay.dart';

void main() {
  runApp(MyApp());
}

/// Test app
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

  final AppleParameters appleParameters = AppleParameters(
    merchantIdentifier: 'example_id',
    billingContact: Contact(
      emailAddress: 'test@test.com',
      postalAddress: PostalAddress(
        street: 's',
        city: 'c',
        state: 'st',
        postalCode: '123321',
        country: 'ct',
      ),
      name: PersonNameComponents(
        familyName: 'qwe',
        middleName: 'ewq',
        namePrefix: 'a',
        nameSuffix: 'h',
        nickname: 'test',
        phoneticRepresentation: PersonNameComponents(
          middleName: 'ewq2',
          givenName: 'rty2',
          namePrefix: 'a2',
          nameSuffix: 'h2',
          nickname: 'test2',
        ),
      ),
    ),
    shippingContact: Contact(
      emailAddress: 'test@test.com',
    ),
    merchantCapabilities: <MerchantCapabilities>[
      MerchantCapabilities.threeds,
      MerchantCapabilities.credit,
    ],
  );

  final GoogleParameters googleParameters = GoogleParameters(
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
      checkoutOption: CheckoutOption.completeImmediatePurchase,
    ),
    shippingAddressRequired: true,
    shippingAddressParameters: ShippingAddressParameters(
      phoneNumberRequired: true,
    ),
  );

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
                      PaymentRequest(
                        google: googleParameters,
                        apple: appleParameters,
                        currencyCode: 'USD',
                        countryCode: 'US',
                        paymentItems: items,
                        paymentNetworks: <PaymentNetwork>[
                          PaymentNetwork.visa,
                          PaymentNetwork.mastercard,
                        ],
                      ),
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
              ),
              AdaptivePayButton(
                applePayButton: ApplePayButton(
                  style: ApplePayButtonStyle.automatic,
                  type: ApplePayButtonType.buy,
                  request: PaymentRequest.apple(
                    apple: appleParameters,
                    currencyCode: 'USD',
                    countryCode: 'US',
                    paymentItems: items,
                  ),
                  onPaymentResult: (PaymentResponse? req) {
                    setState(() {
                      result = 'ApplePayButton, Try to pay:\n${req?.token}';
                    });
                  },
                  onError: (Object? e) {
                    setState(() {
                      result = 'ApplePayButton, Error:\n$e';
                    });
                  },
                ),
                googlePayButton: GooglePayButton(
                  type: GooglePayButtonType.plain,
                  request: PaymentRequest.google(
                    paymentNetworks: <PaymentNetwork>[
                      PaymentNetwork.amex,
                      PaymentNetwork.discover,
                      PaymentNetwork.interac,
                      PaymentNetwork.jcb,
                      PaymentNetwork.mastercard,
                      PaymentNetwork.visa,
                      PaymentNetwork.mir,
                    ],
                    google: googleParameters,
                    currencyCode: 'USD',
                    countryCode: 'US',
                    paymentItems: items,
                  ),
                  onPaymentResult: (PaymentResponse? req) {
                    setState(() {
                      result = 'GooglePayButton, Try to pay:\n${req?.token}';
                    });
                  },
                  onError: (Object? e) {
                    setState(() {
                      result = 'GooglePayButton, Error:\n$e';
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
