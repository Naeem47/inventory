List<Map<String, dynamic>> dataList = [
  {
    "name": "Alice",
    "phoneno": "123-456-7890",
    "Shopname": "Alice's Shop",
    "Address": "25/15, New Karachi",
  },
  {
    "name": "Bob",
    "phoneno": "987-654-3210",
    "Shopname": "Bob's Shop",
    "Address": "10 Main Street",
  },
  {
    "name": "Charlie",
    "phoneno": "555-555-5555",
    "Shopname": "Charlie's Shop",
    "Address": "123 Elm Avenue",
  },
  {
    "name": "David",
    "phoneno": "111-222-3333",
    "Shopname": "David's Shop",
    "Address": "456 Oak Road",
  },
  {
    "name": "Eve",
    "phoneno": "444-444-4444",
    "Shopname": "Eve's Shop",
    "Address": "789 Pine Street",
  },
  {
    "name": "Frank",
    "phoneno": "777-888-9999",
    "Shopname": "Frank's Shop",
    "Address": "555 Maple Avenue",
  },
  {
    "name": "Grace",
    "phoneno": "222-333-4444",
    "Shopname": "Grace's Shop",
    "Address": "777 Cedar Lane",
  },
  {
    "name": "Hannah",
    "phoneno": "666-777-8888",
    "Shopname": "Hannah's Shop",
    "Address": "999 Birch Boulevard",
  },
  {
    "name": "Isaac",
    "phoneno": "888-999-0000",
    "Shopname": "Isaac's Shop",
    "Address": "111 Oak Avenue",
  },
  {
    "name": "Jack",
    "phoneno": "333-444-5555",
    "Shopname": "Jack's Shop",
    "Address": "222 Pine Street",
  },
];
List<Map<String, dynamic>> categoriesList = [
  {"category": "Electronics"},
  {"category": "Clothing"},
  {"category": "Books"},
  {"category": "Home Decor"},
  {"category": "Beauty"},
  {"category": "Sports"},
  {"category": "Toys"},
  {"category": "Groceries"},
  {"category": "Automotive"},
  {"category": "Health"},
];
class Product {
  final String name;
  final double price;
  final double vatInPercent;
  int amount = 0;

  Product(this.name, this.price, this.vatInPercent);
}

var username = 'Shahhid';
