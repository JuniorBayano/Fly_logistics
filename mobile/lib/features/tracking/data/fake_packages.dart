import '../models/package_model.dart';

final List<PackageModel> fakePackages = [
  PackageModel(
    code: 'FLY-98234710',

    shippingMethod: ShippingMethod.air,

    estimatedDeliveryDate: DateTime(2026, 10, 24),

    status: PackageStatus.transit,

    progress: 0.65,

    description:
    'Votre colis est actuellement en transit vers sa destination.',

    weight: 2.5,

    shippingDate: DateTime(2026, 10, 10),

    amountToPay: 15000,

      imagePath: "assets/images/colis.png"
  ),

  PackageModel(
    code: 'FLY-88234711',

    shippingMethod: ShippingMethod.sea,

    estimatedDeliveryDate: DateTime(2026, 10, 30),

    status: PackageStatus.preparing,

    progress: 0.25,

    description:
    'Votre colis est actuellement en préparation dans notre entrepôt.',

    weight: 5.2,

    shippingDate: DateTime(2026, 10, 15),

    amountToPay: 25000,
    imagePath: "assets/images/colis.png"
  ),

  PackageModel(
    code: 'FLY-77456321',

    shippingMethod: ShippingMethod.sea,

    estimatedDeliveryDate: DateTime(2026, 10, 18),

    status: PackageStatus.delivered,

    progress: 1.0,

    description:
    'Votre colis a été livré avec succès.',

    weight: 1.8,

    shippingDate: DateTime(2026, 10, 05),

    amountToPay: 10000,
      imagePath: "assets/images/colis.png"
  ),

  PackageModel(
    code: 'FLY-66543219',

    shippingMethod: ShippingMethod.air,

    estimatedDeliveryDate: DateTime(2026, 11, 05),

    status: PackageStatus.arrived,

    progress: 0.85,

    description:
    'Votre colis est arrivé au centre de tri régional.',

    weight: 3.7,

    shippingDate: DateTime(2026, 10, 20),

    amountToPay: 18000,
      imagePath: "assets/images/colis.png"
  ),
];