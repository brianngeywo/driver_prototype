class CreditCardDataModel {
  String cardNumber;
  String cardHolderName;
  String cardExpirationDate;
  String cardCVV;
  String cardType;

  CreditCardDataModel({
    required this.cardNumber,
    required this.cardHolderName,
    required this.cardExpirationDate,
    required this.cardCVV,
    required this.cardType,
  });

  factory CreditCardDataModel.fromJson(Map<String, dynamic> json) {
    return CreditCardDataModel(
      cardNumber: json['cardNumber'],
      cardHolderName: json['cardHolderName'],
      cardExpirationDate: json['cardExpirationDate'],
      cardCVV: json['cardCVV'],
      cardType: json['cardType'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardNumber'] = cardNumber;
    data['cardHolderName'] = cardHolderName;
    data['cardExpirationDate'] = cardExpirationDate;
    data['cardCVV'] = cardCVV;
    data['cardType'] = cardType;
    return data;
  }
}
