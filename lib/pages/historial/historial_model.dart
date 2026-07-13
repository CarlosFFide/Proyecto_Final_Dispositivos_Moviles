import '/components/bottom_nav/bottom_nav_widget.dart';
import '/components/history_item/history_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'historial_widget.dart' show HistorialWidget;
import 'package:flutter/material.dart';

class HistorialModel extends FlutterFlowModel<HistorialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HistoryItem.
  late HistoryItemModel historyItemModel1;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel2;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel3;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel4;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel5;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel6;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel7;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel8;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    historyItemModel1 = createModel(context, () => HistoryItemModel());
    historyItemModel2 = createModel(context, () => HistoryItemModel());
    historyItemModel3 = createModel(context, () => HistoryItemModel());
    historyItemModel4 = createModel(context, () => HistoryItemModel());
    historyItemModel5 = createModel(context, () => HistoryItemModel());
    historyItemModel6 = createModel(context, () => HistoryItemModel());
    historyItemModel7 = createModel(context, () => HistoryItemModel());
    historyItemModel8 = createModel(context, () => HistoryItemModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    historyItemModel1.dispose();
    historyItemModel2.dispose();
    historyItemModel3.dispose();
    historyItemModel4.dispose();
    historyItemModel5.dispose();
    historyItemModel6.dispose();
    historyItemModel7.dispose();
    historyItemModel8.dispose();
    bottomNavModel.dispose();
  }
}
