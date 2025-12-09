// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's_friend_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SFriendState)
const sFriendStateProvider = SFriendStateProvider._();

final class SFriendStateProvider
    extends $NotifierProvider<SFriendState, Friends> {
  const SFriendStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sFriendStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sFriendStateHash();

  @$internal
  @override
  SFriendState create() => SFriendState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Friends value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Friends>(value),
    );
  }
}

String _$sFriendStateHash() => r'e7d0a547432274f4aee21a2b1dce58cc685b01ad';

abstract class _$SFriendState extends $Notifier<Friends> {
  Friends build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Friends, Friends>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Friends, Friends>,
              Friends,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
