import 'package:flutter/material.dart';


final ThemeData themeData = ThemeData(
  primarySwatch: const MaterialColor(
    0xFFD32F2F, // 赤色のシェード 700 (メインカラー)
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFF44336),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F), // **Primary Color**
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  ),

  // 👻 基本の色の設定
  primaryColor: const Color(0xFFD32F2F), // 赤（恐怖や警告の色）
  // 😈 背景色を黒に近いダークグレーに設定
  canvasColor: const Color(0xFF121212), // ダークな背景色（Ambient Darkness）
  scaffoldBackgroundColor: const Color(0xFF0A0A0A), // より暗い背景色
  
  // 🤍 テキストやアイコンの色は白を基調とする
  // `brightness: Brightness.dark` を設定することで、ダークテーマの基本設定を適用
  brightness: Brightness.dark, 
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFD32F2F), // 主色: 赤
    secondary: Color(0xFFFFFFFF), // アクセント色: 白
    surface: Color(0xFF1E1E1E), // カードやダイアログの表面色
    background: Color(0xFF0A0A0A), // 背景色
    error: Color(0xFFCF6679), // エラー色
    onPrimary: Color(0xFFFFFFFF), // Primaryの上に置く要素の色（白）
    onSecondary: Color(0xFF000000), // Secondaryの上に置く要素の色（黒）
    onSurface: Color(0xFFFFFFFF), // Surfaceの上に置く要素の色（白）
    onBackground: Color(0xFFFFFFFF), // Backgroundの上に置く要素の色（白）
    onError: Color(0xFF000000), // Errorの上に置く要素の色（黒）
  ),

  // 🩸 AppBarのテーマ設定
  appBarTheme: const AppBarTheme(
    color: Color(0xFF000000), // AppBarの背景を黒に
    foregroundColor: Color(0xFFD32F2F), // アイコンやタイトルの色を赤に
    elevation: 0, // 影をなくし、よりフラットで不気味な印象に
    titleTextStyle: TextStyle(
      color: Color(0xFFFFFFFF), // タイトルテキストは白
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5, // 緊張感を出すために文字間隔を調整
    ),
  ),

  // 💬 チャットアプリの重要な要素である TextTheme
  textTheme: const TextTheme(
    // ボディテキスト（一般的なチャットメッセージなど）
    bodyLarge: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFCCCCCC), fontSize: 14),
    // 見出し
    headlineLarge: TextStyle(color: Color(0xFFD32F2F), fontWeight: FontWeight.bold),
    // ボタンテキスト
    labelLarge: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
  ).apply(
    // 全体的なテキストの色を調整 (onBackgroundに設定した白を基調とする)
    bodyColor: const Color(0xFFFFFFFF), 
    displayColor: const Color(0xFFFFFFFF),
  ),

  // 🔳 Cardのテーマ設定 (チャットバブルなどに使用)
  cardTheme: const CardThemeData(
    color: Color(0xFF1E1E1E), // 暗い表面色
    elevation: 4, // わずかな立体感
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      side: BorderSide(color: Color(0xFFD32F2F), width: 1), // 赤い枠線で警告感
    ),
  ),

  // 🔴 Buttonのテーマ設定
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFD32F2F), // ボタンの背景は赤
      foregroundColor: const Color(0xFFFFFFFF), // ボタンのテキスト/アイコンは白
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),

  // 📝 TextField/InputDecorationのテーマ設定 (入力欄)
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF1E1E1E), // 入力欄の背景は暗い表面色
    hintStyle: TextStyle(color: Color(0xFF888888)), // ヒントテキストは薄いグレー
    labelStyle: TextStyle(color: Color(0xFFD32F2F)), // ラベルは赤
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFFD32F2F)), // 赤いボーダー
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2), // フォーカス時は白く光る
    ),
  ),

  // ⚡️ スクロール時のハイライトを赤に
  highlightColor: const Color(0x33D32F2F), 
  splashColor: const Color(0x33D32F2F),
);