import '/components/book_item/book_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogo_publico_widget.dart' show CatalogoPublicoWidget;
import 'package:flutter/material.dart';

class CatalogoPublicoModel extends FlutterFlowModel<CatalogoPublicoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for BookItem.
  late BookItemModel bookItemModel1;
  // Model for BookItem.
  late BookItemModel bookItemModel2;
  // Model for BookItem.
  late BookItemModel bookItemModel3;
  // Model for BookItem.
  late BookItemModel bookItemModel4;
  // Model for BookItem.
  late BookItemModel bookItemModel5;
  // Model for BookItem.
  late BookItemModel bookItemModel6;
  // Model for BookItem.
  late BookItemModel bookItemModel7;
  // Model for BookItem.
  late BookItemModel bookItemModel8;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    bookItemModel1 = createModel(context, () => BookItemModel());
    bookItemModel2 = createModel(context, () => BookItemModel());
    bookItemModel3 = createModel(context, () => BookItemModel());
    bookItemModel4 = createModel(context, () => BookItemModel());
    bookItemModel5 = createModel(context, () => BookItemModel());
    bookItemModel6 = createModel(context, () => BookItemModel());
    bookItemModel7 = createModel(context, () => BookItemModel());
    bookItemModel8 = createModel(context, () => BookItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    bookItemModel1.dispose();
    bookItemModel2.dispose();
    bookItemModel3.dispose();
    bookItemModel4.dispose();
    bookItemModel5.dispose();
    bookItemModel6.dispose();
    bookItemModel7.dispose();
    bookItemModel8.dispose();
  }
}
