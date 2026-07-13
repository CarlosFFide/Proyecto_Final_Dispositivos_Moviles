import '/components/admin_nav_tile/admin_nav_tile_widget.dart';
import '/components/admin_stat/admin_stat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'panel_administrador_widget.dart' show PanelAdministradorWidget;
import 'package:flutter/material.dart';

class PanelAdministradorModel
    extends FlutterFlowModel<PanelAdministradorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminStat.
  late AdminStatModel adminStatModel1;
  // Model for AdminStat.
  late AdminStatModel adminStatModel2;
  // Model for AdminStat.
  late AdminStatModel adminStatModel3;
  // Model for AdminStat.
  late AdminStatModel adminStatModel4;
  // Model for AdminNavTile.
  late AdminNavTileModel adminNavTileModel1;
  // Model for AdminNavTile.
  late AdminNavTileModel adminNavTileModel2;

  @override
  void initState(BuildContext context) {
    adminStatModel1 = createModel(context, () => AdminStatModel());
    adminStatModel2 = createModel(context, () => AdminStatModel());
    adminStatModel3 = createModel(context, () => AdminStatModel());
    adminStatModel4 = createModel(context, () => AdminStatModel());
    adminNavTileModel1 = createModel(context, () => AdminNavTileModel());
    adminNavTileModel2 = createModel(context, () => AdminNavTileModel());
  }

  @override
  void dispose() {
    adminStatModel1.dispose();
    adminStatModel2.dispose();
    adminStatModel3.dispose();
    adminStatModel4.dispose();
    adminNavTileModel1.dispose();
    adminNavTileModel2.dispose();
  }
}
