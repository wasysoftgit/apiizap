import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://zmmfrjnuygztltuzocyx.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InptbWZyam51eWd6dGx0dXpvY3l4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQxMzk3NDgsImV4cCI6MjAwOTcxNTc0OH0.XCD1AGzkxFtlORDPf3zqS5PnBskeeT2LOZ0WOhi32NU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
