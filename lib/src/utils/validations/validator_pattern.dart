/// Url RegExp pattern with or without http:// or https://
/// Example: https://www.utrodus.my.id
RegExp urlPattern = RegExp(
  r'^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$',
);

/// Email RegExp pattern
/// Example: contact.utrodus@gmail.com
RegExp emailPattern = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

/// Phone RegExp pattern
/// Example: +62 816 5416 082
RegExp phoneNumberPattern =
    RegExp(r'^(\+62|62)?[\s-]?0?8[1-9]{1}\d{1}[\s-]?\d{4}[\s-]?\d{2,5}$');

/// Location (longitude, latitude) RegExp pattern
/// Example: -6.175392, 106.827153
RegExp locationPattern =
    RegExp(r'^((\-?|\+?)?\d+(\.\d+)?),\s*((\-?|\+?)?\d+(\.\d+)?)$');
