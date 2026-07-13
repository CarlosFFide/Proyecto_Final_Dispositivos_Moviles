import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_book_card_widget.dart' show AdminBookCardWidget;
import 'package:flutter/material.dart';

class AdminBookCardModel extends FlutterFlowModel<AdminBookCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
