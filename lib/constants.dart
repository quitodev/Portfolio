import 'package:flutter/material.dart';

// *** COLORS ***
const Color colorIndigoDark = Color.fromARGB(255, 45, 45, 60);
const Color colorIndigoLight = Color.fromARGB(255, 178, 146, 246);
const Color colorMagentaDark = Color.fromARGB(255, 144, 29, 124);
const Color colorViolet = Color.fromARGB(255, 87, 37, 201);
const Color colorWhite = Color.fromARGB(255, 255, 255, 255);
const Color colorGrayDark = Color.fromARGB(255, 66, 66, 66);
const Color colorBlackLight = Color.fromARGB(255, 22, 22, 22);
const Color colorShadowDark = Color.fromARGB(123, 60, 60, 60);

// *** IMAGES ***
const String imageEnglish = "english.png";
const String imageSpanish = "spanish.png";
const String imageHome = "home.jpg";
const String imageAboutMe = "about.jpg";
const String imageApple = "apple.png";
const String imageAndroid = "android.png";
const String imageWeb = "web.png";

// *** TEXTS ***
// ** GENERIC **
const String textApp = "Marcos Vitureira Pose";
const String textDeveloper = "QuitoDev";
const String textHomeStatisticsYears = "+4";
const String textHomeStatisticsProjects = "+10";
const String textJobsGoogle = "Google";
const String textJobsAccefy = "Accefy";
const String textJobsProsegur = "Prosegur";
const String textJobsGoogleTime = "May 2020 / Oct 2020";
const String textContactGitHubTitle = "GitHub";
const String textContactGitHubUrl = "https://github.com/quitodev";
const String textContactLinkedInTitle = "LinkedIn";
const String textContactLinkedInUrl =
    "https://www.linkedin.com/in/marcos-vitureira-pose/";
const String textContactEmailTitle = "Email";
const String textContactEmailUrl = "mailto:marcos.vitureira@hotmail.com";
const String textTechSwift = "Swift";
const String textTechSwiftUI = "SwiftUI";
const String textTechObjectiveC = "Objective-C";
const String textTechUIKit = "UIKit";
const String textTechCocoaPods = "CocoaPods";
const String textTechStoryboards = "Storyboards";
const String textTechWebView = "WebView";
const String textTechQRScanner = "QR Scanner";
const String textTechRESTApi = "REST-Api";
const String textTechJSON = "JSON";
const String textTechPostman = "Postman";
const String textTechTesting = "Testing";
const String textTechGit = "Git";
const String textTechAzure = "Azure";
const String textTechFigma = "Figma";
const String textTechScrum = "Scrum";
const String textTechNotifications = "Notifications";
const String textTechJira = "Jira";
const String textTechFirebase = "Firebase";
const String textTechGoogleMaps = "Google Maps";
const String textTechMVVM = "MVVM";
const String textTechCleanCode = "Clean Code";
const String textTechSOLID = "SOLID";
const String textTechAndroidTech = "Android Tech";
const String textTechiOSTech = "iOS Tech";
const String textTechDart = "Dart";
const String textTechFlutter = "Flutter";
const String textTechRespBuilder = "Resp Builder";
const String textTechBloc = "Bloc";
const String textTechGetIt = "Get It";
const String textTechKotlin = "Kotlin";
const String textTechLiveData = "LiveData";
const String textTechKodein = "Kodein";
const String textTechKtor = "Ktor";
const String textTechRoom = "Room";
const String textTechRetrofit = "Retrofit";
const String textTechCoroutines = "Coroutines";
const String textTechDaggerHilt = "Dagger Hilt";
const String textProjectsIconnect = "Iconnect";
const String textProjectsAutoBaires = "AutoBaires";
const String textProjectsMorfando = "Morfando";
const String textProjectsPuntoPlato = "PuntoPlato";
const String textProjectsPeluTime = "PeluTime";

// ** SPANISH **
// * MENU *
const String textMenuHomeSP = "Inicio";
const String textMenuAboutMeSP = "Acerca de mi";
const String textMenuJobsSP = "Trabajos";
const String textMenuProjectsSP = "Proyectos";
const String textMenuContactSP = "Contacto";
// * HOME *
const String textHomeNameSP = "¡Hola! Soy Marcos Vitureira Pose";
const String textHomeAreaSP = "Desarrollador de software";
const String textHomeStatisticsYearsInfoSP = "Años en el mundo del desarrollo";
const String textHomeStatisticsProjectsInfoSP = "Proyectos realizados";
// * ABOUT ME *
const String textAboutMeTitleSP = "Un poco sobre mi";
const String textAboutMeInfoOneSP =
    "Tengo 27 años, soy argentino con nacionalidad española, y actualmente vivo en Buenos Aires. Amo la programación y tengo como objetivo seguir creciendo profesionalmente haciendo lo que me apasiona que es el desarrollo de aplicaciones tanto para web como mobile.";
const String textAboutMeInfoTwoSP =
    "Actualmente me encuentro trabajando pero siempre estoy dispuesto a escuchar nuevas propuestas, tanto para trabajos a tiempo completo como para proyectos puntuales!";
// * JOBS *
const String textJobsTitleSP = "Experiencias laborales recientes";
const String textJobsiOSPositionSP = "Desarrollador iOS";
const String textJobsAdminPositionSP =
    "Administrativo en Google Marketing Platform";
const String textJobsAccefyTimeSP = "Ago 2021 / May 2022";
const String textJobsProsegurTimeSP = "Sep 2022 / Hoy";
// * PROJECTS *
const String textProjectsTitleSP = "Algunos proyectos personales";
const String textProjectsIconnectAreaSP = "Complejo de edificios";
const String textProjectsIconnectInfoSP =
    "Iconnect es un sitio web creado para un cliente que muestra información sobre un nuevo complejo de edificios con servicios en la Ciudad de Buenos Aires, con el fin de atraer potenciales clientes y mostrar todos los beneficios que posee el complejo.";
const String textProjectsAutoBairesAreaSP = "Gestión de flota rent a car";
const String textProjectsAutoBairesInfoSP =
    "AutoBaires es una aplicación que fue creada para un cliente en la cual se pueden ver los autos que están disponibles para alquilar, así como los que están siendo utilizados por los clientes. De esta forma, el propietario puede tener más control sobre los clientes actuales y la flota en general.";
const String textProjectsMorfandoAreaSP = "Reserva de turnos";
const String textProjectsMorfandoInfoSP =
    "Morfando es una aplicación que facilita las reservas en locales gastronómicos. Con Morfando podrás realizar reservas en todos los establecimientos gastronómicos adheridos a la aplicación, eligiendo el lugar que prefieras para luego realizar la reserva en los horarios y sectores disponibles del lugar.";
const String textProjectsPuntoPlatoAreaSP = "Iniciativa solidaria";
const String textProjectsPuntoPlatoInfoSP =
    "PuntoPlato es una aplicación que nace de una iniciativa solidaria la cual consiste en ofrecer platos de comida a las personas que más lo necesitan, dejando la comida en diferentes puntos para que la gente pueda pasar a retirarla y a su vez consultar los demás puntos en un mapa.";
const String textProjectsPeluTimeAreaSP = "Reserva de turnos";
const String textProjectsPeluTimeInfoSP =
    "PeluTime es una aplicación que facilita la reserva en peluquerías. Con PeluTime vas a poder reservar turnos en peluquerías, barberías y centros de belleza adheridas a la aplicación, eligiendo el lugar que prefieras para luego realizar la reserva en los horarios disponibles de cada profesional.";
// * CONTACT *
const String textContactTitleSP =
    "¡Si querés saber más de mí no dudes en contactarme!";

// ** ENGLISH **
// * MENU *
const String textMenuHomeEN = "Home";
const String textMenuAboutMeEN = "About me";
const String textMenuJobsEN = "Jobs";
const String textMenuProjectsEN = "Projects";
const String textMenuContactEN = "Contact";
// * HOME *
const String textHomeNameEN = "Hi! I Am Marcos Vitureira Pose";
const String textHomeAreaEN = "Software developer";
const String textHomeStatisticsYearsInfoEN = "Years in the dev world";
const String textHomeStatisticsProjectsInfoEN = "Projects I worked on";
// * ABOUT ME *
const String textAboutMeTitleEN = "A little bit about me";
const String textAboutMeInfoOneEN =
    "I'm 27 years old, I'm Argentine with Spanish nationality and currently living in Buenos Aires. I love programming and my goal is to grow professionally doing what I'm passionate about, which is application development for web and mobile.";
const String textAboutMeInfoTwoEN =
    "At the moment I count with a full-time job but I'm always willing to listen to new proposals, even for full-time jobs or specific projects, so don't hesitate to contact me!";
// * JOBS *
const String textJobsTitleEN = "Recent work experiences";
const String textJobsiOSPositionEN = "iOS Developer";
const String textJobsAdminPositionEN =
    "Administrative at Google Marketing Platform";
const String textJobsAccefyTimeEN = "Aug 2021 / May 2022";
const String textJobsProsegurTimeEN = "Sep 2022 / Today";
// * PROJECTS *
const String textProjectsTitleEN = "Some personal projects";
const String textProjectsIconnectAreaEN = "Building complex";
const String textProjectsIconnectInfoEN =
    "Iconnect is a website built for a client that displays information about a new building complex with amenities in Buenos Aires City, in order to attract potential customers and show all the benefits that the complex has.";
const String textProjectsAutoBairesAreaEN = "Rent a car management";
const String textProjectsAutoBairesInfoEN =
    "AutoBaires is an application built for a client where you can see those cars that are available for rent as well as those that are being used by customers. In this way, the owner has more control about the current customers and the fleet in general.";
const String textProjectsMorfandoAreaEN = "Reservations";
const String textProjectsMorfandoInfoEN =
    "Morfando is an application that facilitates reservations at gastronomic establishments. With Morfando you will be able to make reservations at all the gastronomic establishments attached to the application, choosing the place you prefer and then make a reservation at the available times and sectors of the place.";
const String textProjectsPuntoPlatoAreaEN = "Solidarity initiative";
const String textProjectsPuntoPlatoInfoEN =
    "PuntoPlato is an application that was born as a result of a solidarity initiative which consists of offering food plates for the people who need it most, leaving the food at different points so that people can come and pick it up and also check the other points on a map.";
const String textProjectsPeluTimeAreaEN = "Reservations";
const String textProjectsPeluTimeInfoEN =
    "PeluTime is an application that makes it easy to reserve in hairdressers. Using PeluTime you will be able to make reservations in hairdressers, barbershops and beauty centers attached to the application, choosing the place you prefer and then choose the available hours of each professional.";
// * CONTACT *
const String textContactTitleEN =
    "If you want to know more about me you can find me here!";
