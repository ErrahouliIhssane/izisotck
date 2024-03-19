import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:izistock/common/widgets/products.cart/cart/cart_item.dart';
import 'package:izistock/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:izistock/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:izistock/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:izistock/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:izistock/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products.cart/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///ITems in cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Coupon TextField
              TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Billing Section
              TRoundedContainer(
                showBorder:true,
                padding:const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black :TColors.white,
                child: Column(
                  children: [


                    ///pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///payment
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///adress
                    TBillingAddressSection()
                  ],
                )

              ),
            ],
          ),
        ),
      ),


      /// CHEKOUT BUTTON
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Chekout \$256.0')),
      ),
    );

  }
}



