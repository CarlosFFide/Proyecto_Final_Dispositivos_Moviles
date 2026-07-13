import '/components/button/button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registrar_usuario_model.dart';
export 'registrar_usuario_model.dart';

class RegistrarUsuarioWidget extends StatefulWidget {
  const RegistrarUsuarioWidget({super.key});

  static String routeName = 'RegistrarUsuario';
  static String routePath = '/registrarUsuario';

  @override
  State<RegistrarUsuarioWidget> createState() => _RegistrarUsuarioWidgetState();
}

class _RegistrarUsuarioWidgetState extends State<RegistrarUsuarioWidget> {
  late RegistrarUsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrarUsuarioModel());
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 60.0, 40.0, 40.0),
                child: Container(
                  child: Container(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary10,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.auto_stories_rounded,
                            color: FlutterFlowTheme.of(context).onPrimary,
                            size: 32.0,
                          ),
                        ),
                        Text(
                          'La Casa del Libro',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                                lineHeight: 1.3,
                              ),
                        ),
                        Text(
                          'Crea tu cuenta para empezar a leer',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.5,
                              ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.textFieldModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: 'Nombre completo',
                              labelPresent: true,
                              helper: '',
                              helperPresent: false,
                              leadingIconPresent: false,
                              trailingIconPresent: false,
                              hint: 'Ej. Juan Pérez',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              variant: 'outlined',
                              error: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: 'Correo electrónico',
                              labelPresent: true,
                              helper: '',
                              helperPresent: false,
                              leadingIconPresent: false,
                              trailingIconPresent: false,
                              hint: 'correo@ejemplo.com',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              variant: 'outlined',
                              error: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: 'Contraseña',
                              labelPresent: true,
                              helper: '',
                              helperPresent: false,
                              leadingIconPresent: false,
                              trailingIconPresent: false,
                              hint: 'Mínimo 8 caracteres',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              variant: 'outlined',
                              error: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: 'Confirmar contraseña',
                              labelPresent: true,
                              helper: '',
                              helperPresent: false,
                              leadingIconPresent: false,
                              trailingIconPresent: false,
                              hint: 'Repite tu contraseña',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              variant: 'outlined',
                              error: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.buttonModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                iconPresent: false,
                                iconEndPresent: false,
                                content: 'Registrarse',
                                variant: 'primary',
                                size: 'medium',
                                fullWidth: true,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '¿Ya tengo cuenta?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(LoginWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      iconPresent: false,
                                      iconEndPresent: false,
                                      content: 'Iniciar sesión',
                                      variant: 'ghost',
                                      size: 'small',
                                      fullWidth: false,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Container(
                  child: Container(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'v1.0.0',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).onBackground,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                            lineHeight: 1.2,
                          ),
                    ),
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
