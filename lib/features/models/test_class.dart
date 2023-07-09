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
  /*
  final Widget orgPage = OrganizationPage(
    organization: Organization(
      image: "images/test_image1.png",
      title: "Organization Name",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis magna sit amet urna luctus maximus. Pellentesque iaculis velit ipsum, nec interdum lacus laoreet in. Aenean rutrum congue facilisis. Donec odio odio, viverra in mi et, venenatis egestas ante. Morbi malesuada at ante ut convallis. Aliquam egestas, nisi non mollis convallis, lectus sem suscipit lacus, in rhoncus sem felis in sapien. Morbi sed lacinia purus, ut maximus enim. Morbi bibendum semper viverra. Aliquam finibus enim non fringilla convallis. Curabitur quis sem tortor. Nunc euismod dui in tellus tristique rutrum.",
      services: [
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
        OrganizationService(
          image: 'images/service.jpg',
          title: 'Service 5',
          description:
              'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 1000,
        ),
        OrganizationService(
          image: 'images/service.jpg',
          title: 'Service 6',
          description:
              'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 1000,
        ),
        OrganizationService(
          image: 'images/service.jpg',
          title: 'Service 7',
          description:
              'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
          price: 1000,
        ),
      ],
    ),
  );
   */

  /*
  final Widget pend = CategoryPage(
    categoryInfo: Category("Category 1", [
      OrganizationForCategory(
          {"title": "Organization Name 1", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests', 'wedding', 'funerals', 'quests']),
      OrganizationForCategory(
          {"title": "Organization Name 2", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
      OrganizationForCategory(
          {"title": "Organization Name 3", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
      OrganizationForCategory({
        "title": "Very Very Very Long Organization Name 4",
        "image": "images/test_image1.png"
      }, [
        'wedding',
        'funerals',
        'quests'
      ]),
      OrganizationForCategory(
          {"title": "Organization Name 5", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
      OrganizationForCategory(
          {"title": "Organization Name 6", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
      OrganizationForCategory(
          {"title": "Organization Name 7", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
      OrganizationForCategory(
          {"title": "Organization Name 8", "image": "images/test_image1.png"},
          ['wedding', 'funerals', 'quests']),
    ]),
  );
   */

  // final Widget bakP = BasketPage(
  //   serviceList: [
  //     OrganizationService(
  //       image: 'images/service.jpg',
  //       title: 'Service 1',
  //       description:
  //           'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
  //       price: 1000,
  //     ),
  //     OrganizationService(
  //       image: 'images/service.jpg',
  //       title: 'Service 2',
  //       description:
  //           'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
  //       price: 1000,
  //     ),
  //     OrganizationService(
  //       image: 'images/service.jpg',
  //       title: 'Service 3',
  //       description:
  //           'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
  //       price: 1000,
  //     ),
  //     OrganizationService(
  //       image: 'images/service.jpg',
  //       title: 'Service 4',
  //       description:
  //           'Cras sem metus, tincidunt vel aliquet eu, condimentum id sem. Phasellus feugiat tellus dolor, tincidunt porta orci suscipit vel. Etiam ultrices, eros eu venenatis varius, urna nisi euismod dolor,',
  //       price: 1000,
  //     ),
  //   ],
  // );

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
  final ProfilePage profilePage = ProfilePage(profile:Profile({
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
  )
  );
}
