// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_types.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

abstract class _StateOrProvinceBase {
  __T iswitch<__T>({
    @required __T Function(UsState) usState,
    @required __T Function(CaProvince) caProvince,
  });
  __T iswitcho<__T>({
    __T Function(UsState) usState,
    __T Function(CaProvince) caProvince,
    @required __T Function() otherwise,
  });
}

class StateOrProvince with _StateOrProvince implements _StateOrProvinceBase {
  const StateOrProvince.usState(
    UsState usState,
  ) : this._unsafe(usState: usState);
  const StateOrProvince.caProvince(
    CaProvince caProvince,
  ) : this._unsafe(caProvince: caProvince);
  const StateOrProvince._unsafe({
    this.usState,
    this.caProvince,
  }) : assert(usState != null && caProvince == null ||
            usState == null && caProvince != null);
  static StateOrProvince load<__T extends StateOrProvinceRecordBase<__T>>(
    __T rec,
  ) {
    if (!(rec.usState != null && rec.caProvince == null ||
        rec.usState == null && rec.caProvince != null)) {
      throw Exception("Cannot select a $StateOrProvince case given $rec");
    }
    return StateOrProvince._unsafe(
      usState: rec.usState,
      caProvince: rec.caProvince,
    );
  }

  __T dump<__T>(
    __T Function({
      UsState usState,
      CaProvince caProvince,
    })
        make,
  ) {
    return iswitch(
      usState: (usState) => make(usState: usState),
      caProvince: (caProvince) => make(caProvince: caProvince),
    );
  }

  @override
  __T iswitch<__T>({
    @required __T Function(UsState) usState,
    @required __T Function(CaProvince) caProvince,
  }) {
    if (this.usState != null) {
      return usState(this.usState);
    } else if (this.caProvince != null) {
      return caProvince(this.caProvince);
    } else {
      throw StateError("an instance of $StateOrProvince has no case selected");
    }
  }

  @override
  __T iswitcho<__T>({
    __T Function(UsState) usState,
    __T Function(CaProvince) caProvince,
    @required __T Function() otherwise,
  }) {
    __T _otherwise(Object _) => otherwise();
    return iswitch(
      usState: usState ?? _otherwise,
      caProvince: caProvince ?? _otherwise,
    );
  }

  @override
  bool operator ==(
    dynamic other,
  ) {
    return other.runtimeType == runtimeType &&
        other.usState == usState &&
        other.caProvince == caProvince;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + usState.hashCode;
    result = 37 * result + caProvince.hashCode;
    return result;
  }

  @override
  String toString() {
    final ctor = iswitch(
      usState: (value) => "usState($value)",
      caProvince: (value) => "caProvince($value)",
    );
    return "$runtimeType.$ctor";
  }

  @protected
  final UsState usState;
  @protected
  final CaProvince caProvince;
}

abstract class StateOrProvinceRecordBase<Self> {
  UsState get usState;
  CaProvince get caProvince;
}
