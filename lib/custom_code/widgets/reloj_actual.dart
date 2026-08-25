// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RelojActual extends StatefulWidget {
  const RelojActual({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<RelojActual> createState() => _RelojActualState();
}

class _RelojActualState extends State<RelojActual>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ahora = DateTime.now();

    int hora = ahora.hour;
    final minuto = ahora.minute.toString().padLeft(2, '0');
    final segundo = ahora.second.toString().padLeft(2, '0');

    final periodo = hora >= 12 ? 'PM' : 'AM';

    if (hora == 0) {
      hora = 12;
    } else if (hora > 12) {
      hora -= 12;
    }

    final horaTexto = '$hora:$minuto:$segundo $periodo';

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Text(
          horaTexto,
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
