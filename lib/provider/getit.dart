import 'package:http/http.dart';
import 'package:ride_sharing/services/api_services.dart';
import 'package:ride_sharing/services/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'package:ride_sharing/src/screens/user_profile/user_profile.dart';
import 'package:ride_sharing/view/choose_location_viewmodel.dart';
import 'package:ride_sharing/view/complete_profile_viewmodel.dart';
import 'package:ride_sharing/view/login_viewmodel.dart';
import 'package:ride_sharing/view/post_ride_viewmodel.dart';
import 'package:ride_sharing/view/search_rider_viewmodel.dart';
import 'package:ride_sharing/view/user_profile_viewmodel.dart';
import 'package:ride_sharing/view/available_riders_viewmodel.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => ApiService());
  getIt.registerFactory(() => LoginViewModel());
  getIt.registerFactory(() => SearchRiderViewModel());
  getIt.registerFactory(() => CompleteProfileViewModel());
  getIt.registerFactory(() => ChooseLocationViewModel());
  getIt.registerFactory(() => UserProfileViewModel());
  getIt.registerFactory(() => AvailableRidersViewModel());
  getIt.registerFactory(() => PostRideViewModel());
}
