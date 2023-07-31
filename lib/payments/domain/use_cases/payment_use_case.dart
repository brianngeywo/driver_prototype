abstract class PaymentsUseCase {
  Future<void> addNewPaymentMethod() async {}

  Future<List<Object>> getAllPaymentMethods();

  Future<void> payForTrip() async {}

  Future<void> cancelPayment() async {}

  Future<void> requestRefund() async {}
}
