import 'package:flutter/material.dart';
import 'package:siin_app/core/app_export.dart';
import 'package:siin_app/presentation/auction_history_auction_ended_someone_else_is_winning_page/auction_history_auction_ended_someone_else_is_winning_page.dart';
import 'package:siin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:siin_app/widgets/app_bar/appbar_title.dart';
import 'package:siin_app/widgets/app_bar/custom_app_bar.dart';

class AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen
    extends StatefulWidget {
  const AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen(
      {Key? key})
      : super(key: key);

  @override
  AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreenState
      createState() =>
          AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreenState
    extends State<
        AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  _buildFrame(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 801.v,
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    AuctionHistoryAuctionEndedSomeoneElseIsWinningPage(),
                                    AuctionHistoryAuctionEndedSomeoneElseIsWinningPage()
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(children: [
      CustomAppBar(
          height: 26.v,
          leadingWidth: 34.h,
          leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 4.v),
              onTap: () {
                onTapArrowLeft(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Auction History")),
      SizedBox(height: 24.v),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle1148,
                    height: 39.v,
                    width: 40.h,
                    radius: BorderRadius.circular(8.h),
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rolex", style: theme.textTheme.labelLarge),
                          SizedBox(height: 4.v),
                          Text("Watch 155964sa...",
                              style: theme.textTheme.labelLarge)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgMaximize,
                    height: 16.v,
                    width: 18.h,
                    margin: EdgeInsets.only(top: 23.v)),
                Padding(
                    padding: EdgeInsets.only(left: 5.h, top: 22.v),
                    child:
                        Text("BHD 100,000", style: theme.textTheme.labelLarge))
              ])),
      SizedBox(height: 8.v),
      Container(
          height: 46.v,
          width: 342.h,
          child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(child: Text("Auction Ended")),
                Tab(child: Text("Bids 157"))
              ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
