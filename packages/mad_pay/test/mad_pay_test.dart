// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:mad_pay/mad_pay.dart';
// import 'package:mad_pay/src/constants.dart';
// import 'package:mad_pay/src/protos/mad_pay.pb.dart' as porto;

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   const MethodChannel channel = MethodChannel(kChannel);

//   MadPay pay;

//   setUp(() {
//     pay = MadPay();

//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       switch (methodCall.method) {
//         case kSwitchEnvironment:
//           {
//             break;
//           }

//         case kPayment:
//           {
//             return porto.Response(success: true).writeToBuffer();
//           }

//         case kCheckPayments:
//           {
//             return porto.Response(success: true).writeToBuffer();
//           }

//         case kCheckActiveCard:
//           {
//             return porto.Response(success: true, data: <String, String>{})
//                 .writeToBuffer();
//           }
//         default:
//       }
//     });
//   });

//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });

//   test('processingPayment', () async {
//     expect(
//       await pay.processingPayment(
//         google: GoogleParameters(
//           gatewayName: 'example',
//           gatewayMerchantId: 'example_id',
//         ),
//         apple: AppleParameters(
//           merchantIdentifier: 'merchant.flutterpay.example',
//         ),
//         currencyCode: 'USD',
//         countryCode: 'US',
//         paymentItems: <PaymentItem>[
//           PaymentItem(name: 'T-Shirt', price: 2.98),
//           PaymentItem(name: 'Trousers', price: 15.24),
//         ],
//         paymentNetworks: <PaymentNetwork>[
//           PaymentNetwork.visa,
//           PaymentNetwork.mastercard,
//         ],
//       ),
//       <String, String>{},
//     );
//   });

//   test('checkPayments', () async {
//     expect(
//       await pay.checkPayments(),
//       true,
//     );
//   });

//   test('checkActiveCard', () async {
//     expect(
//       await pay.checkActiveCard(
//         paymentNetworks: <PaymentNetwork>[
//           PaymentNetwork.visa,
//           PaymentNetwork.mastercard,
//         ],
//       ),
//       true,
//     );
//   });
// }
