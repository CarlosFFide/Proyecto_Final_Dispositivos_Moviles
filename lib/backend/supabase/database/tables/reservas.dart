import '../database.dart';

class ReservasTable extends SupabaseTable<ReservasRow> {
  @override
  String get tableName => 'reservas';

  @override
  ReservasRow createRow(Map<String, dynamic> data) => ReservasRow(data);
}

class ReservasRow extends SupabaseDataRow {
  ReservasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReservasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int get libroId => getField<int>('libro_id')!;
  set libroId(int value) => setField<int>('libro_id', value);

  String get tituloLibro => getField<String>('titulo_libro')!;
  set tituloLibro(String value) => setField<String>('titulo_libro', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
