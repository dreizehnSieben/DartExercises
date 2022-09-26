abstract class Maybe<A> {
  const Maybe();

  const factory Maybe.just(A value) = _Just;
  const factory Maybe.nothing() = _Nothing;

  bool get isJust;
  bool get isNothing;

  B match<B>(
      {required B Function(A a) onJust, required B Function() onNothing});

  A withDefault(A defaultValue);
}

class _Just<A> extends Maybe<A> {
  final A _value;

  const _Just(this._value);

  @override
  bool get isJust => true;

  @override
  bool get isNothing => false;

  @override
  B match<B>(
          {required B Function(A a) onJust, required B Function() onNothing}) =>
      onJust(_value);

  @override
  A withDefault(A defaultValue) => _value;
}

class _Nothing<A> extends Maybe<A> {
  const _Nothing();

  @override
  bool get isJust => false;

  @override
  bool get isNothing => true;

  @override
  B match<B>(
          {required B Function(A a) onJust, required B Function() onNothing}) =>
      onNothing();

  @override
  A withDefault(A defaultValue) => defaultValue;
}

extension MaybeStringNullable on String? {
  Maybe<String> toMaybe() => this != null && (this as String).isNotEmpty
      ? Maybe.just(this as String)
      : Maybe<String>.nothing();
}

extension MaybeNumNullable on num? {
  Maybe<num> toMaybe() => this != null && !(this as num).isNaN
      ? Maybe.just(this as num)
      : Maybe.nothing();
}
