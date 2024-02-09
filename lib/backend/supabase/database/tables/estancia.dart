import '../database.dart';

class EstanciaTable extends SupabaseTable<EstanciaRow> {
  @override
  String get tableName => 'estancia';

  @override
  EstanciaRow createRow(Map<String, dynamic> data) => EstanciaRow(data);
}

class EstanciaRow extends SupabaseDataRow {
  EstanciaRow(super.data);

  @override
  SupabaseTable get table => EstanciaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get apikey => getField<String>('apikey');
  set apikey(String? value) => setField<String>('apikey', value);

  bool? get conectada => getField<bool>('conectada');
  set conectada(bool? value) => setField<bool>('conectada', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  bool? get chatwasy => getField<bool>('chatwasy');
  set chatwasy(bool? value) => setField<bool>('chatwasy', value);

  String? get idChat => getField<String>('id_chat');
  set idChat(String? value) => setField<String>('id_chat', value);

  String? get tokenChat => getField<String>('token_chat');
  set tokenChat(String? value) => setField<String>('token_chat', value);

  String? get foneChat => getField<String>('fone_chat');
  set foneChat(String? value) => setField<String>('fone_chat', value);

  String? get urlChat => getField<String>('url_chat');
  set urlChat(String? value) => setField<String>('url_chat', value);

  int? get typeAtivo => getField<int>('type_ativo');
  set typeAtivo(int? value) => setField<int>('type_ativo', value);
}
