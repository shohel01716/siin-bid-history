import 'package:flutter/material.dart';
import 'package:siin_app/core/app_export.dart';
import 'package:siin_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:siin_app/widgets/app_bar/appbar_title.dart';
import 'package:siin_app/widgets/app_bar/custom_app_bar.dart';
import 'package:siin_app/widgets/custom_elevated_button.dart';
import 'package:siin_app/widgets/custom_outlined_button.dart';
import 'package:siin_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AuctionHistoryOngoingCanceledScreen extends StatelessWidget {
  AuctionHistoryOngoingCanceledScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                _buildAuctionMPC(context),
                                SizedBox(height: 8.v),
                                CustomElevatedButton(
                                    text: "Auction Canceled",
                                    buttonStyle:
                                        CustomButtonStyles.fillDeepOrange,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumRedA200),
                                SizedBox(height: 15.v),
                                CustomTextFormField(
                                    controller: editTextController,
                                    textInputAction: TextInputAction.done),
                                SizedBox(height: 23.v),
                                _buildEleven(context),
                                SizedBox(height: 8.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 22.h),
                                    child: _buildAuctionMPCRow1(context,
                                        userOne: "User01",
                                        date: "20 Oct 2023",
                                        time: "12:45PM",
                                        bdCounter: "BD 200.00"))
                              ]))))
                ])),
            bottomNavigationBar: _buildBack(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 18.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Auction History"));
  }

  /// Section Widget
  Widget _buildAuctionMPC(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1148,
              height: 39.v,
              width: 40.h,
              radius: BorderRadius.circular(8.h),
              margin: EdgeInsets.symmetric(vertical: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rolex", style: theme.textTheme.labelLarge),
                    SizedBox(height: 4.v),
                    Text("Watch 155964sa...", style: theme.textTheme.labelLarge)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: _buildAuctionMPCRow1(context,
              userOne: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              bdCounter: "BD 200.00")),
      SizedBox(height: 8.v),
      _buildAuctionMPCRow4(context,
          userName: "You",
          date: "20 Oct 2023",
          time: "12:45PM",
          bdCounter: "BD 200.00"),
      _buildAuctionMPCRow2(context,
          userName: "User01",
          date: "20 Oct 2023",
          time: "12:45PM",
          birthdayCounter: "BD 200.00"),
      _buildAuctionMPCRow3(context,
          userName: "User01",
          date: "20 Oct 2023",
          time: "12:45PM",
          birthdayCounter: "BD 200.00"),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: _buildAuctionMPCRow1(context,
              userOne: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              bdCounter: "BD 200.00")),
      SizedBox(height: 8.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 57.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                              opacity: 0.3,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse10231x31,
                                  height: 31.adaptSize,
                                  width: 31.adaptSize,
                                  radius: BorderRadius.circular(15.h))),
                          Padding(
                              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                              child: Text("You",
                                  style: theme.textTheme.labelMedium))
                        ])),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                    child: Text("20 Oct 2023",
                        style: theme.textTheme.labelMedium)),
                Padding(
                    padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                    child: Text("12:45PM", style: theme.textTheme.labelMedium)),
                Padding(
                    padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                    child:
                        Text("BD 200.00", style: theme.textTheme.labelMedium))
              ])),
      _buildAuctionMPCRow2(context,
          userName: "User01",
          date: "20 Oct 2023",
          time: "12:45PM",
          birthdayCounter: "BD 200.00"),
      _buildAuctionMPCRow3(context,
          userName: "User01",
          date: "20 Oct 2023",
          time: "12:45PM",
          birthdayCounter: "BD 200.00"),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: _buildAuctionMPCRow1(context,
              userOne: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              bdCounter: "BD 200.00")),
      SizedBox(height: 8.v),
      _buildAuctionMPCRow4(context,
          userName: "You",
          date: "20 Oct 2023",
          time: "12:45PM",
          bdCounter: "BD 200.00")
    ]);
  }

  /// Section Widget
  Widget _buildBack(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 32.v),
        decoration: AppDecoration.outlineBlackF,
        child: CustomOutlinedButton(text: "Back"));
  }

  /// Common widget
  Widget _buildAuctionMPCRow1(
    BuildContext context, {
    required String userOne,
    required String date,
    required String time,
    required String bdCounter,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse1022,
                  height: 31.adaptSize,
                  width: 31.adaptSize,
                  radius: BorderRadius.circular(15.h))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 7.v, bottom: 8.v),
              child: Text(userOne,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.gray500))),
          Padding(
              padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
              child: Text(date,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.gray500))),
          Padding(
              padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
              child: Text(time,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.gray500))),
          Padding(
              padding: EdgeInsets.only(left: 29.h, top: 7.v, bottom: 8.v),
              child: Text(bdCounter,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.gray500)))
        ]);
  }

  /// Common widget
  Widget _buildAuctionMPCRow2(
    BuildContext context, {
    required String userName,
    required String date,
    required String time,
    required String birthdayCounter,
  }) {
    return Container(
        padding: EdgeInsets.fromLTRB(22.h, 8.v, 22.h, 7.v),
        decoration: AppDecoration.outlinePrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse1023,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      radius: BorderRadius.circular(15.h))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 7.v, bottom: 8.v),
                  child: Text(userName,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                  child: Text(date,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                  child: Text(time,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, top: 7.v, bottom: 8.v),
                  child: Text(birthdayCounter,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500)))
            ]));
  }

  /// Common widget
  Widget _buildAuctionMPCRow3(
    BuildContext context, {
    required String userName,
    required String date,
    required String time,
    required String birthdayCounter,
  }) {
    return Container(
        padding: EdgeInsets.fromLTRB(22.h, 8.v, 22.h, 7.v),
        decoration: AppDecoration.outlinePrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 72.h,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse1024,
                                height: 31.adaptSize,
                                width: 31.adaptSize,
                                radius: BorderRadius.circular(15.h))),
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                            child: Text(userName,
                                style: theme.textTheme.bodySmall!
                                    .copyWith(color: appTheme.gray500)))
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Text(date,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Text(time,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500))),
              Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Text(birthdayCounter,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray500)))
            ]));
  }

  /// Common widget
  Widget _buildAuctionMPCRow4(
    BuildContext context, {
    required String userName,
    required String date,
    required String time,
    required String bdCounter,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.3,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse10231x31,
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      radius: BorderRadius.circular(15.h),
                      margin: EdgeInsets.only(left: 5.h))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 7.v, bottom: 8.v),
                  child: Text(userName,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.primary))),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Text(date,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.primary))),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                  child: Text(time,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.primary))),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, top: 7.v, bottom: 8.v),
                  child: Text(bdCounter,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.primary)))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
