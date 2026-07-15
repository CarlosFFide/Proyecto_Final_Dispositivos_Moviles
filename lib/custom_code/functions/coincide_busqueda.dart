import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool coincideBusqueda(
  String? autor,
  String? titulo,
  String? busqueda,
  String? categoriaLibro,
  String? categoriaSeleccionada,
) {
  final texto = (busqueda ?? '').trim().toLowerCase();

  final tituloNormalizado = (titulo ?? '').trim().toLowerCase();
  final autorNormalizado = (autor ?? '').trim().toLowerCase();

  final coincideTexto = texto.isEmpty ||
      tituloNormalizado.contains(texto) ||
      autorNormalizado.contains(texto);

  final categoriaActual =
      (categoriaSeleccionada ?? 'Todos').trim().toLowerCase();

  final categoriaDelLibro = (categoriaLibro ?? '').trim().toLowerCase();

  final coincideCategoria =
      categoriaActual == 'todos' || categoriaDelLibro == categoriaActual;

  return coincideTexto && coincideCategoria;
}
