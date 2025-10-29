import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/views/tabBar_views/all_vendor/all_vendor_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'vendors_viewmodel.dart';

class VendorsView extends StackedView<VendorsViewModel> {
  const VendorsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VendorsViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: offwhite,
          title: Text(
            "Vendors",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        backgroundColor: offwhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpaceMedium,
              Text(
                "Our Vendor",
                style: GoogleFonts.poppins(),
              ),
              Text(
                "Vendors",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              verticalSpaceMedium,
              const TabBar(
                labelPadding: EdgeInsets.only(right: 20),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: primaryColor,
                unselectedLabelColor: kcLightGrey,
                indicatorColor: primaryColor,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                tabs: [
                  Text("All"),
                  Text("Books"),
                  Text("Poems"),
                  Text("Non Fiction"),
                  Text("Novel"),
                  Text("Fiction")
                ],
              ),
              verticalSpaceMedium,
              const Expanded(
                child: TabBarView(children: [
                  AllVendorView(),
                  Center(child: Text("Building This Screen")),
                  Center(child: Text("Building This Screen")),
                  Center(child: Text("Building This Screen")),
                  Center(child: Text("Building This Screen")),
                  Center(child: Text("Building This Screen")),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  VendorsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VendorsViewModel();
}
