import 'package:go_router/go_router.dart';
import 'package:jjinternational/models/models.dart';
import 'package:jjinternational/screens/screens.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'products',
      path: '/products',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: 'contact-us',
      path: '/contact-us',
      builder: (context, state) => const ContactUsScreen(),
    ),
    GoRoute(
      path: '/products/:product',
      builder: (context, state) {
        final productName = state.pathParameters["product"]!;
        final product = Product.products.firstWhere(
          (product) => product.detailScreen == productName,
        );
        return ProductDetailScreen(
          product: product,
        );
      },
    )
  ],
);
