import 'organization_service.dart';

class Profile {
  late String avatar;
  late final String name;
  late final String sex;
  late final String email;
  late final String phoneNumber;
  late final String regionData;
  late final List<OrganizationService> serviceList;

  // TODO: Продумать nullCheck
  Profile( Map<String, String> profileData, List<OrganizationService> serviceOfList) {
    name = profileData["name"]!;
    sex = profileData["sex"]!;
    email = profileData["email"]!;
    avatar = profileData["avatar"]!;
    phoneNumber = profileData["phoneNumber"]!;
    regionData = profileData["regionData"]!;
    serviceList = serviceOfList;
  }
}
