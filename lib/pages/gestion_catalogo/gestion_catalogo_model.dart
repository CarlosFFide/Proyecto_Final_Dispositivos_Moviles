import '/components/admin_book_card/admin_book_card_widget.dart';
import '/components/button/button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gestion_catalogo_widget.dart' show GestionCatalogoWidget;
import 'package:flutter/material.dart';

class GestionCatalogoModel extends FlutterFlowModel<GestionCatalogoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel1;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel2;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel3;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel4;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel5;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel6;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel7;
  // Model for AdminBookCard.
  late AdminBookCardModel adminBookCardModel8;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    adminBookCardModel1 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel2 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel3 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel4 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel5 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel6 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel7 = createModel(context, () => AdminBookCardModel());
    adminBookCardModel8 = createModel(context, () => AdminBookCardModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    buttonModel1.dispose();
    adminBookCardModel1.dispose();
    adminBookCardModel2.dispose();
    adminBookCardModel3.dispose();
    adminBookCardModel4.dispose();
    adminBookCardModel5.dispose();
    adminBookCardModel6.dispose();
    adminBookCardModel7.dispose();
    adminBookCardModel8.dispose();
    buttonModel2.dispose();
  }
}
