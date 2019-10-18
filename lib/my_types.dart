import 'package:meta/meta.dart';
import 'package:sum_types/sum_types.dart';

part 'my_types.g.dart';

enum UsState { florida }
enum CaProvince { ontario }

@SumType([
  Case<UsState>(name: 'usState'),
  Case<CaProvince>(name: 'caProvince'),
])
mixin _StateOrProvince implements _StateOrProvinceBase {
  String toFormattedString() => iswitch(
        usState: (state) => '$state',
        caProvince: (province) => '$province',
      );
}

class PostalInfo {
  final String street;
  final StateOrProvince stateOrProvince;

  PostalInfo({
    @required this.street,
    @required this.stateOrProvince,
  })  : assert(street != null),
        assert(stateOrProvince != null);

  @override
  String toString() => '$street, ${stateOrProvince.toFormattedString()}';
}

void run() {
  // Correct
  final postalInfoUS = PostalInfo(
    street: 'Some US Street',
    stateOrProvince: StateOrProvince.usState(UsState.florida),
  );
  print(postalInfoUS);

  // Correct
  final postalInfoCA = PostalInfo(
    street: 'Some Canadian Street',
    stateOrProvince: StateOrProvince.caProvince(CaProvince.ontario),
  );
  print(postalInfoCA);

  sendLetter(postalInfoUS);
  sendLetter(postalInfoCA);
}

void sendLetter(PostalInfo postalInfo) {
  postalInfo.stateOrProvince.iswitch(
    usState: (_) {
      printLetter(postalInfo);
      shipLetterUSPS();
    },
    caProvince: (_) {
      printLetter(postalInfo);
      shipLetterCanadaPost();
    },
  );
}

void printLetter(PostalInfo postalInfo) {
  // Imagine this prints a physical letter...
  print(
    '''
*******
${postalInfo.street}
${postalInfo.stateOrProvince.toFormattedString()}

Yours truly,
Reso Coder
*******
''',
  );
}

void shipLetterUSPS() {
  print('Shipping to United States\n\n');
}

void shipLetterCanadaPost() {
  print('Shipping to Canada\n\n');
}
