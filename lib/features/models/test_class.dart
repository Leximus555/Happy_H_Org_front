import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:organization_app1/features/profile/profile_page.dart';

import '../pending/pending_page.dart';
import '../pending/models/pending.dart';
import '../history/history_page.dart';
import '../history/models/selected_services.dart';

// import '../organization/models/organization.dart';
// import '../organization/models/organization_service.dart';
// import '../organization/organization_page.dart';
import '../profile/models/organization_service.dart';
import '../profile/models/profile.dart';

class TestClass {

  final Widget pend = PendingPage(
    selectedServiceList: [
      Pending(
        customer: "customer",
        service: SelectedService(
          // TODO: Посмотреть другие форматы
          date: DateFormat.yMMMEd().format(DateTime.now()),
          image: 'images/service.jpg',
          title: 'Service 1',
          description:
              'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 1000,
        ),
      ),
      Pending(
        customer: "customer",
        service: SelectedService(
          date: DateFormat.yMMMEd().format(DateTime.now()),
          image: 'images/service.jpg',
          title: 'Service 2',
          description:
          'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 9000,
        ),
      ),
      Pending(
        customer: "customer",
        service: SelectedService(
          date: DateFormat.yMMMEd().format(DateTime.now()),
          image: 'images/service.jpg',
          title: 'Service 3',
          description:
          'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 4500,
        ),
      ),
    ],
  );


  final Widget histP = HistoryPage(
    historyList: [
      SelectedService(
        // TODO: Посмотреть другие форматы
        date: DateFormat.yMMMEd().format(DateTime.now()),
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      SelectedService(
        date: DateFormat.yMMMEd().format(DateTime.now()),
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      SelectedService(
        date: DateFormat.yMMMEd().format(DateTime.now()),
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      SelectedService(
        date: DateFormat.yMMMEd().format(DateTime.now()),
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      SelectedService(
        date: DateFormat.yMMMEd().format(DateTime.now()),
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
    ],
  );

  // final Profile profile =
  final ProfilePage profilePage = ProfilePage(
      profile: Profile(
    {
      "name": " Pistoletov",
      "sex": "male",
      "email": "@mail",
      "avatar": "assets/images/smile_face.png",
      "phoneNumber": "+70000000000",
      "regionData": "Saratov",
    },
    [
      OrganizationService(
        image: 'images/service.jpg',
        title: 'Service 1',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      OrganizationService(
        image: 'images/service.jpg',
        title: 'Service 2',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      OrganizationService(
        image: 'images/service.jpg',
        title: 'Service 3',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
      OrganizationService(
        image: 'images/service.jpg',
        title: 'Service 4',
        description:
            'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
        price: 1000,
      ),
    ],
  ));
}
