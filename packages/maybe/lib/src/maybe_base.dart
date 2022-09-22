abstract class Maybe<A> {
  const Maybe();

  const factory Maybe.just(A value) = _Just;
  const factory Maybe.nothing() = _Nothing;

  bool get isJust;
  bool get isNothing;

  B match<B>(
      {required B Function(A a) onJust, required B Function() onNothing});
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
}
