import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:horror_chat_app/data/game_message.dart';

/// Gemini Apiに接続し、会話形式のチャットを保持するためのクラス
/// Gemini Apiに接続するために、Google AI StudioでAPIKeyを取得する必要がある
class GoogleAiService {
  late final GenerativeModel _model;
  late final ChatSession _chatSession;

  /// 単一コンストラクタ
  GoogleAiService({required String apiKey, String? initialPrompt}) {
    _model = GenerativeModel(
      model: 'gemini-2.5-flash-lite',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
      )
    );
    _initChat(initialPrompt); 
  }

  /// チャットの初期化
  /// internal method
  void _initChat(String? initialPrompt) {
    if(initialPrompt == null) {
      _chatSession = _model.startChat(history: [Content.text('"Act as someone who is extremely emotionally dependent and "clingy" in a text chat. Write a series of messages to a partner who hasn\'t replied for 2 hours. The tone should be a mix of deep affection, extreme anxiety, and subtle guilt-tripping. Use repetitive phrasing, frequent ellipses (...), and ask questions like \'Are you tired of me?\' or \'Did I do something wrong?\'"response must be 100 characters and in Japanese')]);
    } else {
      _chatSession = _model.startChat(history: [Content.text('''$initialPrompt{
  "currentScene": "{Current Flag Code}",
  "nextScene": "SCENE_X_Y", 
  "message": "最初の1文\n次の1文\n..."
}''')]);
    }
  }

  /// クラスが保持するモデルに対してチャットを送信したいときに使うメソッド
  Future<GameMessage> sendMessage(String text) async {
    try {
      final content = Content.text(text);
      final response = await _chatSession.sendMessage(content);

      debugPrint(response.text);

      final message = GameMessage.fromJson(jsonDecode(response.text ?? '''
        "currentScene": "SCENE_0_0",
        "nextScene": "SCENE_0_0", 
        "message": "error"
        '''
      ) 
  );

      return message;
    } catch (e) {

      final response = GameMessage.fromJson(jsonDecode('''
        "currentScene": "SCENE_0_0",
        "nextScene": "SCENE_0_0", 
        "message": "error"
        '''));

      return response;
    }
  }
}


