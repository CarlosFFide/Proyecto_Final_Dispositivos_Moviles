// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class SaludoHorario extends StatefulWidget {
  const SaludoHorario({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<SaludoHorario> createState() => _SaludoHorarioState();
}

class _SaludoHorarioState extends State<SaludoHorario> {
  @override
  Widget build(BuildContext context) {
    final hora = DateTime.now().hour;

    String saludo;

    if (hora < 12) {
      saludo = 'Buenos días';
    } else if (hora < 18) {
      saludo = 'Buenas tardes';
    } else {
      saludo = 'Buenas noches';
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Text(
          saludo,
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
