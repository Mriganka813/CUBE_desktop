class Party {
  Party(
      {this.name,
      this.phoneNumber,
      this.id,
      this.createdAt,
      this.totalCreditAmount,
      this.totalSettleAmount,
      this.v,
      this.total,
      this.balance,
      this.modeOfPayment});

  String? name;
  String? phoneNumber;
  String? id;
  String? modeOfPayment;
  DateTime? createdAt;
  String? v;
  int? totalCreditAmount;
  int? totalSettleAmount;
  int? total;
  int? balance;

  factory Party.fromMap(Map<String, dynamic> json) => Party(
        name: json["name"],
        phoneNumber: json["phoneNumber"].toString(),
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        totalCreditAmount: json["totalCreditAmount"],
        totalSettleAmount: json['totalSettleAmount'],
        balance: json['balance'] ?? 0,
        total: json["total"],
        v: json["__v"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "phoneNumber": phoneNumber,
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "modeOfPayment": modeOfPayment,
        "amount": total,
        "__v": v,
      };
}
