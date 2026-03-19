MaterialPageRoute
Navigator.of(
context,
rootNavigator: true
).push(MaterialPageRoute(builder: (context) => ThirdScreen()));

return MaterialApp(
initialRoute: '/',

      routes: {
        '/': (context) => DashboardScreen(),
        '/secondScreen': (context) => SecondScreen(),
        '/thirdScreen': (context) => ThirdScreen(),
      },
    );
                  Navigator.pushNamed(context, '/product');

kIsWeb
Platform.isIOS

// onGenerated route

onGenerateRoute: (settings) {
switch (settings.name) {
case ('/'):
return MaterialPageRoute(builder: (context) => DashboardScreen());
case ('/product'):
return MaterialPageRoute(builder: (context) => ProductScreen());
case ('/Profile'):
return MaterialPageRoute(builder: (context) => ProfileScreen());
default:
return MaterialPageRoute(builder: (\_) => PageNotFoundScreen());
}
},

onGenerateRoute: (settings) {
// 1. Define your authentication state (usually from a Provider or Service)
bool isUserLoggedIn = checkAuthStatus();

// 2. Define routes that require authentication
final protectedRoutes = ['/dashboard', '/profile', '/settings'];

// 3. Intercept navigation
if (protectedRoutes.contains(settings.name) && !isUserLoggedIn) {
return MaterialPageRoute(
builder: (context) => const LoginPage(),
);
}

// 4. Handle normal routing
switch (settings.name) {
case '/':
return MaterialPageRoute(builder: (_) => const HomePage());
case '/dashboard':
return MaterialPageRoute(builder: (_) => const DashboardPage());
default:
return MaterialPageRoute(builder: (\_) => const UnknownPage());
}
}

1. drawer
2. DrawerHeader
3. navigator 
