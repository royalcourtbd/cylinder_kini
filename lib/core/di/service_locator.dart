import 'dart:async';
import 'package:cylinder_kini/core/base/base_presenter.dart';
import 'package:cylinder_kini/presenter/home/presenter/home_presenter.dart';
import 'package:get_it/get_it.dart';

// Implementation Note:
//
// The app utilizes the **Service Locator Pattern** to manage dependencies.
//
// The Service Locator Pattern is a design pattern that improves modularity and
// maintainability in our codebase. By decoupling the code from direct dependency
// references, it allows for easier substitution or addition of dependencies in
// the future.
//
// To understand the Service Locator Pattern in more detail, you can refer to
// the following resource: https://stackify.com/service-locator-pattern/.
//
// This pattern simplifies the process of replacing or adding dependencies.
// Instead of modifying every object that relies on a particular dependency, we
// only need to update the service locator itself. This centralization reduces
// code changes and minimizes potential errors.
final GetIt _serviceLocator = GetIt.instance;

// This code implements a wrapper function around the `get` function from the
// `get_it` package. The purpose of this wrapper is to provide a simplified and
// centralized way of retrieving registered instances of classes.
//
// By using this wrapper instead of directly calling the get function, we avoid
// tight coupling to the specific service locator implementation, which can lead
// to vendor lock-in. This abstraction allows for flexibility in choosing a
// different service locator plugin in the future if needed.
//
// The wrapper function encapsulates the complexity of the service locator and
// provides a cleaner and more readable interface for retrieving dependencies
// throughout the codebase.

/// Provides a way to retrieve an instance of a class registered
/// with the service locator.
T locate<T extends Object>() => _serviceLocator.get<T>();

void dislocate<T extends BasePresenter>() => unloadPresenterManually<T>();

class ServiceLocator {
  ServiceLocator._();

  /// Sets up the whole dependency injection system by calling various setup
  /// methods in a certain order.
  ///
  /// Also provides an optional flag to only start services and skip the other
  /// setup steps.
  ///
  /// Ensures that all necessary dependencies are initialized before starting
  /// the application.
  static Future<void> setUp({bool startOnlyService = false}) async {
    final ServiceLocator locator = ServiceLocator._();
    await locator._setUpServices();
    if (startOnlyService) return;
    //await locator._setUpDataSources();
    //await locator._setUpRepositories();
    //await locator._setUpUseCase();
    await locator._setUpPresenters();
    // await locator._setUpOthers();
  }

  Future<void> _setUpFirebaseServices() async {
    // await catchFutureOrVoid(() async {
    //   final FirebaseApp? firebaseApp = await catchAndReturnFuture(() async {
    //     return Firebase.initializeApp(
    //       options: DefaultFirebaseOptions.currentPlatform,
    //     );
    //   });
    //   if (firebaseApp == null) return;
    //   if (kDebugMode) return;

    //   FlutterError.onError =
    //       FirebaseCrashlytics.instance.recordFlutterFatalError;
    //   PlatformDispatcher.instance.onError = (error, stack) {
    //     FirebaseCrashlytics.instance.recordError(
    //       error,
    //       stack,
    //       fatal: true,
    //       printDetails: true,
    //     );
    //     return true;
    //   };
    // });
  }

  // Future<void> _setUpRepositories() async {
  //   _serviceLocator
  //     ..registerLazySingleton<SurahRepository>(
  //       () => SurahRepositoryImpl(locate()),
  //     )
  //     ..registerLazySingleton<JuzRepository>(
  //       () => JuzRepositoryImpl(locate()),
  //     )
  //     ..registerLazySingleton<PageRepository>(
  //       () => PageRepositoryImpl(locate()),
  //     )
  //     ..registerLazySingleton<HizbRepository>(
  //       () => HizbRepositoryImpl(locate()),
  //     )
  //     ..registerLazySingleton<AyahRepository>(
  //       () => AyahRepositoryImpl(locate(), locate()),
  //     )
  //     ..registerLazySingleton<WordByWordRepository>(
  //       () => WordByWordRepositoryImpl(locate()),
  //     )
  //     ..registerLazySingleton<UserDataRepository>(
  //       () => UserDataRepositoryImpl(locate(), locate()),
  //     )
  //     ..registerLazySingleton<SubjectWiseEnRepository>(
  //         () => SubjectWiseEnRepositoryImpl(locate()))
  //     ..registerLazySingleton<NotificationRepository>(
  //         () => NotificationRepositoryImpl(locate(), locate(), locate()))
  //     ..registerLazySingleton<SettingsRepository>(
  //         () => SettingsRepositoryImpl(locate(), locate()))
  //     ..registerLazySingleton<AuthRepository>(
  //         () => AuthRepositoryImpl(locate(), locate()))
  //     ..registerLazySingleton<CorpusRepository>(
  //         () => CorpusRepositoryImpl(locate()))
  //     ..registerLazySingleton<BookmarkRepository>(
  //         () => BookmarkRepositoyImpl(locate(), locate()));
  // }

  Future<void> _setUpServices() async {
    // _serviceLocator
    //   ..registerLazySingleton(QuranDatabase.new)
    //   ..registerLazySingleton(LocalCacheService.new)
    //   ..registerLazySingleton<ErrorMessageHandler>(ErrorMessageHandlerImpl.new)
    //   ..registerSingleton<AwesomeNotifications>(AwesomeNotifications())
    //   ..registerLazySingleton(UserDatabaseService.new)
    //   ..registerLazySingleton(BackendAsAService.new)
    //   ..registerLazySingleton(CacheData.new)
    //   ..registerLazySingleton(ThemeService.getInstance)
    //   ..registerLazySingleton<NotificationService>(
    //       () => NotificationServicePresentable(locate(), locate()));
    // await ThemeManager.initialise();
    // await LocalCacheService.setUp();
    // final NotificationService notificationService = locate();
    // await notificationService.setUp();
    await _setUpFirebaseServices();
  }

  // Future<void> _setUpDataSources() async {
  //   _serviceLocator
  //     ..registerLazySingleton(() => SurahLocalDataSource(locate()))
  //     ..registerLazySingleton(() => JuzLocalDataSource(locate()))
  //     ..registerLazySingleton(() => PageLocalDataSource(locate()))
  //     ..registerLazySingleton(() => HizbLocalDataSource(locate()))
  //     ..registerLazySingleton(() => WordbyWordLocalDataSource(locate()))
  //     ..registerLazySingleton(() => SubjectWiseEnLocalDataSource(locate()))
  //     ..registerLazySingleton(() => UserDataRemoteDataSource(locate()))
  //     ..registerLazySingleton(() => CorpusDataSource(locate()))
  //     ..registerLazySingleton(
  //         () => UserDataLocalDataSource(locate(), locate(), locate()))
  //     ..registerLazySingleton(() => NotificationLocalDataSource(locate()));
  // }

  Future<void> _setUpPresenters() async {
    _serviceLocator.registerFactory(() => loadPresenter(HomePresenter()));
  }

  // Future<void> _setUpOthers() async {
  //   _serviceLocator
  //     ..registerFactory(ItemScrollController.new)
  //     ..registerFactory(TextEditingController.new);
  // }

  // Future<void> _setUpUseCase() async {
  //   _serviceLocator
  //     ..registerFactory(() => GetSettingsStateUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAllSurahsUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAllJuzUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAllPageUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAllHizbUseCase(locate(), locate()))
  //     ..registerFactory(() => GetFullQuranWordbyWord(locate(), locate()))
  //     ..registerFactory(() => GetAllSubjectWiseEnUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAyahBySurahAyahUseCase(locate(), locate()))
  //     ..registerFactory(() => UpdateSettingsUseCase(locate(), locate()))
  //     ..registerFactory(() => DetermineFirstRun(locate(), locate()))
  //     ..registerFactory(() => SetUpAppUseCase(locate(), locate(), locate()))
  //     ..registerFactory(() => BookmarkUseCase(locate(), locate()))
  //     ..registerFactory(() => SaveFirstTimeUseCase(locate(), locate()))
  //     ..registerFactory(() => ScheduleNotificationUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAllBookmarkFoldersUseCase(locate(), locate()))
  //     ..registerFactory(() => ValidateFolderNameUseCase(locate(), locate()))
  //     ..registerFactory(() => TogglePinAyahUseCase(locate(), locate()))
  //     ..registerFactory(() => CreateBookmarkFolderUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAyahBookmarksUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAyahPinUseCase(locate(), locate()))
  //     ..registerFactory(() => SaveBookmarksToAyahUseCase(locate(), locate()))
  //     ..registerFactory(() => SyncCollectionUseCase(locate(), locate()))
  //     ..registerFactory(() => DeleteBookmarkFolderUseCase(locate(), locate()))
  //     ..registerFactory(() => UpdateBookmarkFolderUseCase(locate(), locate()))
  //     ..registerFactory(() => SearchBookmarkUseCase(locate()))
  //     ..registerFactory(() => SortBookmarkUseCase(locate()))
  //     ..registerFactory(() => SortPinUseCase(locate()))
  //     ..registerFactory(() => ImportCollectionsUseCase(locate(), locate()))
  //     ..registerFactory(() => ExportCollectionsUseCase(locate(), locate()))
  //     ..registerFactory(() => SearchPinUseCase(locate()))
  //     ..registerFactory(() => GetAllPinsUseCase(locate(), locate()))
  //     ..registerFactory(() => DeletePinUseCase(locate(), locate()))
  //     ..registerFactory(() => UpdatePinUseCase(locate(), locate()))
  //     ..registerFactory(() => GetAyahBySurahAyahIdUseCase(locate(), locate()))
  //     ..registerFactory(() => SignInUserUseCase(locate(), locate()))
  //     ..registerFactory(() => SignOutUserUseCase(locate(), locate()))
  //     ..registerFactory(
  //         () => CheckAuthenticationStatusUseCase(locate(), locate()))
  //     ..registerFactory(() => GetCorpusUseCase(locate(), locate()))
  //     ..registerFactory(() => SetUpPushNotificationUseCase(locate(), locate()));
  // }
}
