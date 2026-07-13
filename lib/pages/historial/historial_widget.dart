import '/components/bottom_nav/bottom_nav_widget.dart';
import '/components/bottom_nav_child/bottom_nav_child_widget.dart';
import '/components/history_item/history_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'historial_model.dart';
export 'historial_model.dart';

class HistorialWidget extends StatefulWidget {
  const HistorialWidget({super.key});

  static String routeName = 'Historial';
  static String routePath = '/historial';

  @override
  State<HistorialWidget> createState() => _HistorialWidgetState();
}

class _HistorialWidgetState extends State<HistorialWidget> {
  late HistorialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistorialModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                      PaginaBienvenidaWidget.routeName);
                                },
                              ),
                              Text(
                                'Historial',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.filter_list_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Container(
                                  child: Text(
                                    'Actividad reciente',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '15/10/2023',
                                  status: 'Devuelto',
                                  statusColor:
                                      FlutterFlowTheme.of(context).success,
                                  title: 'Cien años de soledad',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '02/09/2023',
                                  status: 'Devuelto',
                                  statusColor:
                                      FlutterFlowTheme.of(context).success,
                                  title: 'El Psicoanalista',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '20/08/2023',
                                  status: 'Cancelado',
                                  statusColor:
                                      FlutterFlowTheme.of(context).error,
                                  title: 'Don Quijote de la Mancha',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '12/07/2023',
                                  status: 'Vencido',
                                  statusColor:
                                      FlutterFlowTheme.of(context).warning,
                                  title: 'Crónica de una muerte anunciada',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '05/06/2023',
                                  status: 'Devuelto',
                                  statusColor:
                                      FlutterFlowTheme.of(context).success,
                                  title: 'Rayuela',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '22/05/2023',
                                  status: 'Devuelto',
                                  statusColor:
                                      FlutterFlowTheme.of(context).success,
                                  title: 'Fahrenheit 451',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '10/04/2023',
                                  status: 'Devuelto',
                                  statusColor:
                                      FlutterFlowTheme.of(context).success,
                                  title: '1984',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.historyItemModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: HistoryItemWidget(
                                  date: '15/03/2023',
                                  status: 'Cancelado',
                                  statusColor:
                                      FlutterFlowTheme.of(context).error,
                                  title: 'Un mundo feliz',
                                ),
                              ),
                              Container(
                                height: 24.0,
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                child: wrapWithModel(
                  model: _model.bottomNavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: BottomNavWidget(
                    child: () => BottomNavChildWidget(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
