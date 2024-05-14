abstract class NameScreenConstants {
  // parameters for the name screen spacing
  static const double topPadding = 88.0;
  static const double horizontalPadding = 22.0;
  static const double afterAddressTextSpacing = 28.0;
  static const double basicSpacing = 20.0;

  // width and height of the indicator in the name screen continue button
  static const double indicatorWidth = 18.33;
  static const double indicatorHeight = 20;

  // route name for the home screen
  static const homeRoute = '/home';
}

abstract class HomeScreenConstants {
  static const double cardBorderRadius = 40.0;
  static const double containerBorderRadius = 55.0;
  static const double buttonBorderRadius = 19.0;
  static const double topPadding = 10.0;
  static const double sidePadding = 22.0;
  static const double bottomPadding = 22.0;
  static const double innerPadding = 25.0;
  static const double spacing = 20.0;
  static const double innerSpacing = 20.0;
  static const double fractionWidth = 0.7;
  static const double iconSize = 8.0;
  static const double iconHeight = 30.0;
  static const double iconLeftSpacing = 6.2;
  static const double marginVertical = 22.0;
  static const double marginHorizontal = 25.0;
  static const double imageHeightPercentage = 0.4;
  static const double imageWidthPercentage = 0.88;
  static const double navSidePadding = 40.0;
  static const double bottomNavPadding = 7.0;
  static const double containerIconPadding = 17.0;
  static const double containerIconBorderRadius = 17.0;

  static const String carImagePath = 'assets/images/image.png';
  static const String wifiIconPath = 'assets/icons/wifi.svg';
  static const String geolocationImagePath = 'assets/images/location.png';
  static const String phoneIconPath = 'assets/icons/phone.svg';
  static const double imageScale = 0.5;

  static const String logoText = 'logo';

  static const String homeScreenCardTitle = 'Привіт, \n';
  static const String homeScreenCardSubtitle = 'Додавання авто';
  static const String homeScreenCardText =
      'Завантажте дані про ваше авто для кращого використання сервісу.';
  static const String homeScreenCardTextAddCar = 'Додати авто';

  static const String homeContainerTextInternetError = 'Відсутній зв\'язок';
  static const String homeContainerTextInternetErrorSubtitle =
      'Відсутність доступу до геолокації.\nПереконайтеся, що у додатку увімкнено '
      'геолокацію та перевірте з\'єднання з Інтернетом.';
  static const String homeContainerTextConfigureGeolocation =
      'Налаштувати геолокацію';

  static const String homeScreenButtonText = 'Викликати майстра';

  static const String homeContainerTextLoading = 'Завантаження...';
}
