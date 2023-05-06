// **In this class, you can later pass all settings for router
class ShopListRouteConfig {
  ShopListRouteConfig(this.id, this.show404);

  // **For an example boolean to display the Error Screen
  final bool? show404;
  final int? id;

  bool get is404 => show404 ?? false;
}