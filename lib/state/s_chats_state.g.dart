// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's_chats_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SChatsState)
const sChatsStateProvider = SChatsStateProvider._();

final class SChatsStateProvider
    extends $NotifierProvider<SChatsState, List<ChatsInfo>> {
  const SChatsStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sChatsStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sChatsStateHash();

  @$internal
  @override
  SChatsState create() => SChatsState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ChatsInfo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ChatsInfo>>(value),
    );
  }
}

String _$sChatsStateHash() => r'8e212e0c2bbfab2f2ef7134f85539b2461f28b19';

abstract class _$SChatsState extends $Notifier<List<ChatsInfo>> {
  List<ChatsInfo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<ChatsInfo>, List<ChatsInfo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<ChatsInfo>, List<ChatsInfo>>,
              List<ChatsInfo>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
