enum AppRoutes {
  auth('/'),
  otp('/otp'),
  home('/home'),
  news('/news'),
  blog('/blog');

  final String path;

  const AppRoutes(this.path);
}
