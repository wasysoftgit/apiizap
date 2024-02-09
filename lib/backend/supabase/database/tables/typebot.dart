import '../database.dart';

class TypebotTable extends SupabaseTable<TypebotRow> {
  @override
  String get tableName => 'typebot';

  @override
  TypebotRow createRow(Map<String, dynamic> data) => TypebotRow(data);
}

class TypebotRow extends SupabaseDataRow {
  TypebotRow(super.data);

  @override
  SupabaseTable get table => TypebotTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeType => getField<String>('nome_type');
  set nomeType(String? value) => setField<String>('nome_type', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  String? get saidaFluxo => getField<String>('saida_fluxo');
  set saidaFluxo(String? value) => setField<String>('saida_fluxo', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get mensagemInvalida => getField<String>('mensagem_invalida');
  set mensagemInvalida(String? value) =>
      setField<String>('mensagem_invalida', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  String? get instancia => getField<String>('instancia');
  set instancia(String? value) => setField<String>('instancia', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
