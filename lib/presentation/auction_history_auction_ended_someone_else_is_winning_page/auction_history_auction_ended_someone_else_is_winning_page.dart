import 'package:flutter/material.dart';
import 'package:siin_app/core/app_export.dart';
import 'package:siin_app/widgets/custom_outlined_button.dart';
import 'package:siin_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AuctionHistoryAuctionEndedSomeoneElseIsWinningPage
    extends StatefulWidget {
  const AuctionHistoryAuctionEndedSomeoneElseIsWinningPage({Key? key})
      : super(
          key: key,
        );

  @override
  AuctionHistoryAuctionEndedSomeoneElseIsWinningPageState createState() =>
      AuctionHistoryAuctionEndedSomeoneElseIsWinningPageState();
}

class AuctionHistoryAuctionEndedSomeoneElseIsWinningPageState
    extends State<AuctionHistoryAuctionEndedSomeoneElseIsWinningPage>
    with
        AutomaticKeepAliveClientMixin<
            AuctionHistoryAuctionEndedSomeoneElseIsWinningPage> {
  TextEditingController editTextController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup33479,
                        height: 102.v,
                        width: 229.h,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "Reserve price not met",
                        style: CustomTextStyles.titleMediumRocGrotesk17,
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 24.h,
                        ),
                        child: CustomTextFormField(
                          controller: editTextController,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildThree(context),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.h),
                        child: _buildFrameRow3(
                          context,
                          userName: "User01",
                          date: "20 Oct 2023",
                          time: "12:45PM",
                          birthdayCounter: "BD 200.00",
                        ),
                      ),
                      _buildBackColumn(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse102,
                  height: 31.adaptSize,
                  width: 31.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "User01",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "20 Oct 2023",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28.h,
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "12:45PM",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "BD 100,00",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow1(
              context,
              userName: "You",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow2(
              context,
              userName: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 1.h),
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
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1021,
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "User01",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "20 Oct 2023",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "12:45PM",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "BD 200.00",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: _buildFrameRow3(
              context,
              userName: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow1(
              context,
              userName: "You",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow2(
              context,
              userName: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow2(
              context,
              userName: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: _buildFrameRow3(
              context,
              userName: "User01",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildFrameRow1(
              context,
              userName: "You",
              date: "20 Oct 2023",
              time: "12:45PM",
              birthdayCounter: "BD 200.00",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlackF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "Back",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow1(
    BuildContext context, {
    required String userName,
    required String date,
    required String time,
    required String birthdayCounter,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse10231x31,
            height: 31.adaptSize,
            width: 31.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(left: 5.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              userName,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              date,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              time,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              birthdayCounter,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow2(
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
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1023,
            height: 31.adaptSize,
            width: 31.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              userName,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              date,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              time,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              birthdayCounter,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow3(
    BuildContext context, {
    required String userName,
    required String date,
    required String time,
    required String birthdayCounter,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse1025,
          height: 31.adaptSize,
          width: 31.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 7.v,
            bottom: 8.v,
          ),
          child: Text(
            userName,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            top: 7.v,
            bottom: 8.v,
          ),
          child: Text(
            date,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            top: 7.v,
            bottom: 8.v,
          ),
          child: Text(
            time,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30.h,
            top: 7.v,
            bottom: 8.v,
          ),
          child: Text(
            birthdayCounter,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
