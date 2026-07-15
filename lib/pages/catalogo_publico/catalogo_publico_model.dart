import '/components/text_field_busqueda/text_field_busqueda_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogo_publico_widget.dart' show CatalogoPublicoWidget;
import 'package:flutter/material.dart';

class CatalogoPublicoModel extends FlutterFlowModel<CatalogoPublicoWidget> {
  ///  Local state fields for this page.

  String? textoBusqueda;

  String categoriaSeleccionada = 'Todos';

  ///  State fields for stateful widgets in this page.

  // Model for TextFieldBusqueda component.
  late TextFieldBusquedaModel textFieldBusquedaModel;

  @override
  void initState(BuildContext context) {
    textFieldBusquedaModel =
        createModel(context, () => TextFieldBusquedaModel());
  }

  @override
  void dispose() {
    textFieldBusquedaModel.dispose();
  }
}
