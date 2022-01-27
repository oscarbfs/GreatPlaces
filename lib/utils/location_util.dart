const GOOGLE_API_KEY = 'AIzaSyDmdp-XyKdQ_fQEtT23XFO66Q_Vv-O9Fpk';

class LocationUtil {
  static String generateLocationPreviewImage({
    required double latitude,
    required double longitute,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitute&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitute&key=$GOOGLE_API_KEY';
  }
}
