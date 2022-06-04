import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';

class Payment extends StatelessWidget {
  static final String tokenizationKey = 'sandbox_pg29t5zt_wmc3k37mkc7yfpjk';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 60,
        child: ElevatedButton(
          onPressed: () async {
            var request = BraintreeDropInRequest(
              tokenizationKey: tokenizationKey,
              collectDeviceData: true,
              googlePaymentRequest: BraintreeGooglePaymentRequest(
                totalPrice: '4.20',
                currencyCode: 'USD',
                billingAddressRequired: false,
              ),
            );
            final result = await BraintreeDropIn.start(request);
            if (result != null) {
              print(result.paymentMethodNonce.description);
              print(result.paymentMethodNonce.nonce);
            }
          },
          child: Text('PAY'),
        ),
      ),
    );
  }
}
