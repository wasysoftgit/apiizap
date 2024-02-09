import '../database.dart';

class AgendaTable extends SupabaseTable<AgendaRow> {
  @override
  String get tableName => 'agenda';

  @override
  AgendaRow createRow(Map<String, dynamic> data) => AgendaRow(data);
}

class AgendaRow extends SupabaseDataRow {
  AgendaRow(super.data);

  @override
  SupabaseTable get table => AgendaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get horarioAviso => getField<String>('horario_aviso');
  set horarioAviso(String? value) => setField<String>('horario_aviso', value);

  String? get horarioAgenda => getField<String>('horario_agenda');
  set horarioAgenda(String? value) => setField<String>('horario_agenda', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  bool? get avizado => getField<bool>('avizado');
  set avizado(bool? value) => setField<bool>('avizado', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get assunto => getField<String>('assunto');
  set assunto(String? value) => setField<String>('assunto', value);

  String? get apikey => getField<String>('apikey');
  set apikey(String? value) => setField<String>('apikey', value);

  String? get textoFinal => getField<String>('texto_final');
  set textoFinal(String? value) => setField<String>('texto_final', value);

  String? get nomeInstancia => getField<String>('nome_instancia');
  set nomeInstancia(String? value) => setField<String>('nome_instancia', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);
}
