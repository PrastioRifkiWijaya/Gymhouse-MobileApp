import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
import '../size_config.dart';
 
const kPrimaryColor = Color(0xFF050522);
const kSecondaryColor = Color(0xFF398AB9);
const kThirdColor = Color(0xFFD8D2CB);
const kFourthColor = Color(0xFFEEEEEE);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kColorTeal = Color(0xFF008080);
const kColorTealSlow = Color(0xFF159897);
const kColorTealToSlow = Color(0xFF03c0c1);
const kColorBlue = Color(0xFF3EB2FF);
const kColorGreen = Color(0xFF00FCA6);
const kColorRedSlow = Color(0xFFf55f60);
const kColorYellow = Color(0xFFFFC654);
 
const mBackgroundColor = Color(0xFFFAFAFA);
const mBlueColor = Color(0xFF2C53B1);
const mGreyColor = Color(0xFFC5C5C5);
const mTitleColor = Color(0xFF23374D);
const mSubtitleColor = Color(0xFF8E8E8E);
const mBorderColor = Color(0xFFE8E8F3);
const mFillColor = Color(0xFFFFFFFF);
const mCardTitleColor = Color(0xFF2E4ECF);
const mCardSubtitleColor = mTitleColor;
 
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
// const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
 
const kAnimationDuration = Duration(milliseconds: 200);
 
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
 
const defaultDuration = Duration(milliseconds: 250);
 
// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kUsernameNullError = "Please Enter your username";
const String kKategoryNullError = "Please Enter your category";
const String kJudulBahanyNullError = "";
const String kKeteranganNullError = "Keterangan tidak boleh kosong";
const String kPersentaseBobotNullError = "Please Enter your weight percentage";
const String kInvalidUsernameError = "Please Enter Valid username";
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
 
final otpInputDecoration = InputDecoration(
  fillColor: kPrimaryColor,
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);
 
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
 
// Style for title
var mTitleStyle = GoogleFonts.notoSans(
    fontWeight: FontWeight.w500, color: mTitleColor, fontSize: 20);
    
var mTitleStyleCreateAccount = GoogleFonts.notoSans(
    fontWeight: FontWeight.w700, color: mTitleColor, fontSize: 20);

var mTitleStyleCreateAccount3 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mTitleColor, fontSize: 20);

var mTitleStyleGymhouse = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 30);

var mTitleStyleGymhouse1 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 28);

var mTitleStyleGymhouse2 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w500, color: mBackgroundColor, fontSize: 16);

var mTitleStyleNameAppbar = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 25);

var mTitleStyleNameAppbar2 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 25);

var mTitleStylesubs = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 35);

var mTitleStylesubs2 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kColorRedSlow, fontSize: 35);

var mTitleStylesubs3 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 15);

var mTitleStylesubs4 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kColorRedSlow, fontSize: 20);

var mTitleStyleNameProfile = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 20);

var mTitleStyleWelcome = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 40);

var mTitleStyleMyprofile = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 30);

var mTitleStyleMembership = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 30);

var mTitleStyleMyprofilepage1 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 25);

var mTitleStyleMyprofilepage3 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w600, color: kPrimaryColor, fontSize: 15);

var mTitleStyleLogin = GoogleFonts.notoSans(
    fontWeight: FontWeight.w700, color: mTitleColor, fontSize: 30);

var mTitleStyle2 = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);
 
var mTitleStyleColorWhite = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: mFillColor, fontSize: 12);
 
var mTitleStyle16 = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 16);
 
var mTitleStyleColorTeal = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: kColorTeal, fontSize: 10);
 
var mTitleStyleColorRed = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: kColorRedSlow, fontSize: 10);
 
var mTitle = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: kFourthColor, fontSize: 14);
 
var mTitle2 = GoogleFonts.notoSans(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);

var mTitleStyleYoga= GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: kPrimaryColor, fontSize: 20);

var mTitleStyleYoga1= GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w800, color: kPrimaryColor, fontSize: 25);

var mEditProfile = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 17);

var mEditProfile2= GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w500, color: mBackgroundColor, fontSize: 15);

var mEditDetailDataAnda = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 18);

var mEditDetailDataAnda1 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700, color: mBackgroundColor, fontSize: 25);



// PROFILE IMAGE //
const String tProfileImage = "assets/images/Gym-rafiki 1.png";
const String tProfile = "Firman Fathoni";



// Style for title Name
var mTitleStyleNameApps = GoogleFonts.notoSans(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  fontSize: 18,
);
 
var mTitleStyletugas = GoogleFonts.notoSans(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  fontSize: 12,
);
 
// Style for Discount Section
var mMoreDiscountStyle = GoogleFonts.notoSans(
    fontSize: 12, fontWeight: FontWeight.w700, color: mBlueColor);
 
// Style for Service Section
var mServiceTitleStyle = GoogleFonts.notoSans(
    fontWeight: FontWeight.w500, fontSize: 12, color: mTitleColor);
 
var mServiceTitleStyleBold = GoogleFonts.notoSans(
    fontWeight: FontWeight.bold, fontSize: 12, color: mTitleColor);
 
var mServiceSubtitleStyle = GoogleFonts.notoSans(
    fontWeight: FontWeight.w400, fontSize: 10, color: mSubtitleColor);
 
var mServiceSubtitleStyle12 = GoogleFonts.notoSans(
    fontWeight: FontWeight.w400, fontSize: 12, color: mSubtitleColor);
 
var mServiceSeeAll = GoogleFonts.notoSans(
    fontWeight: FontWeight.w400, fontSize: 12, color: mSubtitleColor);
 
// Style for Popular Destination Section
var mPopularDestinationTitleStyle = GoogleFonts.notoSans(
  fontWeight: FontWeight.w700,
  fontSize: 16,
  color: mCardTitleColor,
);
var mPopularDestinationSubtitleStyle = GoogleFonts.notoSans(
  fontWeight: FontWeight.w500,
  fontSize: 10,
  color: mCardSubtitleColor,
);
 
// Style for Travlog Section
var mTravlogTitleStyle = GoogleFonts.notoSans(
    fontSize: 14, fontWeight: FontWeight.w900, color: mFillColor);
var mTravlogContentStyle = GoogleFonts.notoSans(
    fontSize: 10, fontWeight: FontWeight.w500, color: mTitleColor);
var mTravlogPlaceStyle = GoogleFonts.notoSans(
    fontSize: 10, fontWeight: FontWeight.w500, color: mBlueColor);
 
// DateTime _parseDateStr(String inputString) {
//   DateFormat format = DateFormat.yMMMMd();
//   return format.parse(inputString);
// }
//
// parseDateIndo (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   var dateValue = new DateFormat("yyyy-MM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   String formattedDate =
//   DateFormat("dd MMM yyyy - HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }
//
 
// nameDay(data) {
//   initializeDateFormatting('id_ID', null);
//   var nameDate = new DateFormat('EEEE', "id_ID").format(data);
//   // String formattedDate =
//   // DateFormat("EEEE").format(dateValue);
//   return nameDate;
// }
//
// kodeDay(data) {
//   initializeDateFormatting('id_ID', null);
//   var nameDate = new DateFormat('EEEE', "id_ID").format(data);
//   var kodeDate;
//   if(nameDate == 'Senin') {
//     kodeDate = 1;
//   }else if(nameDate == 'Selasa') {
//     kodeDate = 2;
//   }else if(nameDate == 'rabu') {
//     kodeDate = 3;
//   }else if(nameDate == 'Kamis') {
//     kodeDate = 4;
//   }else if(nameDate == 'Jumat') {
//     kodeDate = 5;
//   }else if(nameDate == 'Sabtu') {
//     kodeDate = 6;
//   }
//
//   return kodeDate;
// }
 
//
// parseDateIndoFullNameMount (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   print(tanggal);
//   var dateValue = DateFormat("yyyy-MM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   print(dateValue);
//   String formattedDate =
//   DateFormat("dd MMMM yyyy - HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }
//
// parseDate (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   var dateValue = new DateFormat("yyyy-MMMM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   String formattedDate =
//   DateFormat("dd-mm-yyyy HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }
 
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
 
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
 
// var perseDate = (){
//   var today = new DateTime.now();
//   var formatedTanggal = new DateFormat.MMMM().format(today);
//   return formatedTanggal;
// };
 
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}