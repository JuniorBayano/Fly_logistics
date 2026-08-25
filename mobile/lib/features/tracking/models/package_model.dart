enum ShippingMethod {
  air,
  sea,
}

enum PackageStatus {
  preparing,
  transit,
  arrived,
  delivered,
}

class PackageModel {
  final String code;

  final ShippingMethod shippingMethod;

  final DateTime estimatedDeliveryDate;

  final PackageStatus status;

  final double progress;

  final String description;

  final double weight;

  final DateTime shippingDate;

  final double amountToPay;

  const PackageModel({
    required this.code,
    required this.shippingMethod,
    required this.estimatedDeliveryDate,
    required this.status,
    required this.progress,
    required this.description,
    required this.weight,
    required this.shippingDate,
    required this.amountToPay,
  });
}