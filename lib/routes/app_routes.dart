import 'package:flutter/material.dart';
import 'package:siin_app/presentation/auction_history_ongoing_someone_is_winning_screen/auction_history_ongoing_someone_is_winning_screen.dart';
import 'package:siin_app/presentation/auction_history_auction_ended_someone_won_screen/auction_history_auction_ended_someone_won_screen.dart';
import 'package:siin_app/presentation/auction_history_auction_ended_someone_else_is_winning_tab_container_screen/auction_history_auction_ended_someone_else_is_winning_tab_container_screen.dart';
import 'package:siin_app/presentation/auction_history_ongoing_canceled_screen/auction_history_ongoing_canceled_screen.dart';
import 'package:siin_app/presentation/auction_history_auction_ended_someone_else_won_paid_screen/auction_history_auction_ended_someone_else_won_paid_screen.dart';
import 'package:siin_app/presentation/auction_history_ongoing_you_re_winning_screen/auction_history_ongoing_you_re_winning_screen.dart';
import 'package:siin_app/presentation/auction_history_ended_you_won_screen/auction_history_ended_you_won_screen.dart';
import 'package:siin_app/presentation/auction_history_ended_you_won_one_screen/auction_history_ended_you_won_one_screen.dart';
import 'package:siin_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String auctionHistoryOngoingSomeoneIsWinningScreen =
      '/auction_history_ongoing_someone_is_winning_screen';

  static const String auctionHistoryAuctionEndedSomeoneWonScreen =
      '/auction_history_auction_ended_someone_won_screen';

  static const String auctionHistoryAuctionEndedSomeoneElseIsWinningPage =
      '/auction_history_auction_ended_someone_else_is_winning_page';

  static const String
      auctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen =
      '/auction_history_auction_ended_someone_else_is_winning_tab_container_screen';

  static const String auctionHistoryOngoingCanceledScreen =
      '/auction_history_ongoing_canceled_screen';

  static const String auctionHistoryAuctionEndedYouReWinningReservePage =
      '/auction_history_auction_ended_you_re_winning_reserve_page';

  static const String auctionHistoryAuctionEndedSomeoneElseWonPaidScreen =
      '/auction_history_auction_ended_someone_else_won_paid_screen';

  static const String auctionHistoryOngoingYouReWinningScreen =
      '/auction_history_ongoing_you_re_winning_screen';

  static const String auctionHistoryEndedYouWonScreen =
      '/auction_history_ended_you_won_screen';

  static const String auctionHistoryEndedYouWonOneScreen =
      '/auction_history_ended_you_won_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    auctionHistoryOngoingSomeoneIsWinningScreen: (context) =>
        AuctionHistoryOngoingSomeoneIsWinningScreen(),
    auctionHistoryAuctionEndedSomeoneWonScreen: (context) =>
        AuctionHistoryAuctionEndedSomeoneWonScreen(),
    auctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen:
        (context) =>
            AuctionHistoryAuctionEndedSomeoneElseIsWinningTabContainerScreen(),
    auctionHistoryOngoingCanceledScreen: (context) =>
        AuctionHistoryOngoingCanceledScreen(),
    auctionHistoryAuctionEndedSomeoneElseWonPaidScreen: (context) =>
        AuctionHistoryAuctionEndedSomeoneElseWonPaidScreen(),
    auctionHistoryOngoingYouReWinningScreen: (context) =>
        AuctionHistoryOngoingYouReWinningScreen(),
    auctionHistoryEndedYouWonScreen: (context) =>
        AuctionHistoryEndedYouWonScreen(),
    auctionHistoryEndedYouWonOneScreen: (context) =>
        AuctionHistoryEndedYouWonOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
