import 'models.dart';

class Car {
  final String brand;
  final String model;
  final String plate;
  final Features features;
  final List<TrafficTicket> tickets;

  Car(this.brand, this.model, this.plate, this.features, {this.tickets = const []});
}
