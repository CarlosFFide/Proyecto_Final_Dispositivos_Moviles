import '../database.dart';

class LibrosTable extends SupabaseTable<LibrosRow> {
  @override
  String get tableName => 'libros';

  @override
  LibrosRow createRow(Map<String, dynamic> data) => LibrosRow(data);
}

class LibrosRow extends SupabaseDataRow {
  LibrosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LibrosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get autor => getField<String>('autor')!;
  set autor(String value) => setField<String>('autor', value);

  String get categoria => getField<String>('categoria')!;
  set categoria(String value) => setField<String>('categoria', value);

  String get descripcion => getField<String>('descripcion')!;
  set descripcion(String value) => setField<String>('descripcion', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
