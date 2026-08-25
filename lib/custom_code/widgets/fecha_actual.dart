// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class FechaActual extends StatefulWidget {
  const FechaActual({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<FechaActual> createState() => _FechaActualState();
}

class _FechaActualState extends State<FechaActual> {
  @override
  Widget build(BuildContext context) {
    final ahora = DateTime.now();

    final dia = ahora.day.toString().padLeft(2, '0');
    final mes = ahora.month.toString().padLeft(2, '0');
    final anio = ahora.year.toString();

    final fecha = '$dia/$mes/$anio';

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Text(
          fecha,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).labelLarge.override(
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                lineHeight: 1.2,
              ),
        ),
      ),
    );
  }
}
