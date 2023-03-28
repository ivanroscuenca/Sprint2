
// Select the database to use.
use('pizzeria');


// Insert a few documents into the sales collection.
db.pizzaCategories.insertMany([
  { name: 'Margherita' },
  { name: 'Pepperoni' },
  { name: 'Hawaiian' },
  { name: 'Meat Lovers' },
  { name: 'Vegetarian' }
]);

//insert products
use('pizzeria');
db.products.insertMany([
  {
    name: "Margherita",
    description: "Classic pizza topped with tomato sauce, mozzarella cheese, and fresh basil.",
    image: null,
    price: 9.99,
    type: "PIZZA",
    pizzaCategories: ObjectId("641ee42a2b3568f978f4ae4e")
  },
  {
    name: "Pepperoni",
    description: "Pizza topped with tomato sauce, mozzarella cheese, and spicy pepperoni slices.",
    image: null,
    price: 11.99,
    type: "PIZZA",
    pizzaCategories: ObjectId("641ee42a2b3568f978f4ae4f")
  },
  {
    name: "Cheeseburger",
    description: "Juicy beef patty topped with melted cheese, lettuce, tomato, and onion on a sesame seed bun.",
    image: null,
    price: 8.99,
    type: "BURGER",
    pizzaCategories: null
  },
  {
    name: "Chicken Sandwich",
    description: "Grilled chicken breast topped with lettuce, tomato, and mayo on a whole grain bun.",
    image: null,
    price: 7.99,
    type: "BURGER",
    pizzaCategories: null
  },
  {
    name: "Coca-Cola",
    description: "Refreshing carbonated soft drink.",
    image: null,
    price: 1.99,
    type: "DRINK",
    pizzaCategories: null
  },
  {
    name: "Sprite",
    description: "Refreshing lemon-lime flavored carbonated soft drink.",
    image: null,
    price: 1.99,
    type: "DRINK",
    pizzaCategories: null
  },
  {
    name: "Meat Lovers",
    description: "Pizza topped with tomato sauce, mozzarella cheese, pepperoni, sausage, bacon, and ground beef.",
    image: null,
    price: 14.99,
    type: "PIZZA",
    pizzaCategories: ObjectId("641ee42a2b3568f978f4ae51")
  },
  {
    name: "Veggie Deluxe",
    description: "Pizza topped with tomato sauce, mozzarella cheese, mushrooms, onions, peppers, and olives.",
    image: null,
    price: 12.99,
    type: "PIZZA",
    pizzaCategories: ObjectId("641ee42a2b3568f978f4ae52")
  },
  {
    name: "Cheese Pizza",
    description: "Classic pizza topped with tomato sauce and mozzarella cheese.",
    image: null,
    price: 8.99,
    type: "PIZZA",
    pizzaCategories: ObjectId("641ee42a2b3568f978f4ae50")
  },
  {
    name: "Fries",
    description: "Crispy golden fries.",
    image: null,
    price: 2.99,
    type: "BURGER",
    pizzaCategories: null
  }
]);
// insert clients
use('pizzeria');
db.client.insertMany([
  {
    name: "John",
    surname: "Doe",
    phone: 123456789,
    address: {
      city: "New York",
      state: "NY",
      zip: "10001",
      street: "123 Main St"
    }
  },
  {
    name: "Jane",
    surname: "Smith",
    phone: 987654321,
    address: {
      city: "Los Angeles",
      state: "CA",
      zip: "90001",
      street: "456 Oak Ave"
    }
  },
  {
    name: "Bob",
    surname: "Johnson",
    phone: 555444333,
    address: {
      city: "Chicago",
      state: "IL",
      zip: "60601",
      street: "789 Elm St"
    }
  },
  {
    name: "Alice",
    surname: "Williams",
    phone: 111222333,
    address: {
      city: "Houston",
      state: "TX",
      zip: "77001",
      street: "321 Pine St"
    }
  },
  {
    name: "David",
    surname: "Brown",
    phone: 777888999,
    address: {
      city: "Miami",
      state: "FL",
      zip: "33101",
      street: "555 Maple Ave"
    }
  },
  {
    name: "Sarah",
    surname: "Taylor",
    phone: 444555666,
    address: {
      city: "Seattle",
      state: "WA",
      zip: "98101",
      street: "999 Cedar St"
    }
  },
  {
    name: "Mike",
    surname: "Davis",
    phone: 222333444,
    address: {
      city: "Boston",
      state: "MA",
      zip: "02101",
      street: "222 Walnut St"
    }
  },
  {
    name: "Emily",
    surname: "Martin",
    phone: 888999000,
    address: {
      city: "San Francisco",
      state: "CA",
      zip: "94101",
      street: "777 Oak St"
    }
  },
  {
    name: "Mark",
    surname: "Wilson",
    phone: 666777888,
    address: {
      city: "Dallas",
      state: "TX",
      zip: "75201",
      street: "444 Pine St"
    }
  },
  {
    name: "Karen",
    surname: "Anderson",
    phone: 333444555,
    address: {
      city: "Atlanta",
      state: "GA",
      zip: "30301",
      street: "333 Maple Ave"
    }
  }
])

db.client.createIndex({
  "_id": 1
});
// insert shop
use('pizzeria');
db.shop.insertMany([
  {
    address: {
      street: "123 Main St",
      city: "New York",
      state: "NY",
      zip: "10001"
    }
  },
  {
    address: {
      street: "456 Oak Ave",
      city: "Los Angeles",
      state: "CA",
      zip: "90001"
    }
  },
  {
    address: {
      street: "789 Elm St",
      city: "Chicago",
      state: "IL",
      zip: "60601"
    }
  },
  {
    address: {
      street: "321 Pine St",
      city: "Houston",
      state: "TX",
      zip: "77001"
    }
  },
  {
    address: {
      street: "555 Maple Ave",
      city: "Miami",
      state: "FL",
      zip: "33101"
    }
  }
]);
//insert Employees
use('pizzeria');
db.Employees.insertMany([
  {
    name: "John",
    surname: "McEnroe",
    NIF: "12345678A",
    phone: 123456789,
    job: "COOKER",
    shop: ObjectId("64203ca6f064c4e2d3bd1961")
  },
  {
    name: "Jane",
    surname: "McNulty",
    NIF: "87654321B",
    phone: 987654321,
    job: "DELIVERY",
    shop: ObjectId("64203ca6f064c4e2d3bd1961")
  },
  {
    name: "Bob",
    surname: "Seager",
    NIF: "23456789C",
    phone: 234567890,
    job: "COOKER",
    shop: ObjectId("64203ca6f064c4e2d3bd1962")
  },
  {
    name: "Alice",
    surname: "Jones",
    NIF: "98765432D",
    phone: 876543210,
    job: "DELIVERY",
    shop: ObjectId("64203ca6f064c4e2d3bd1962")
  },
  {
    name: "Mike",
    surname: "Black",
    NIF: "34567890E",
    phone: 345678901,
    job: "COOKER",
    shop: ObjectId("64203ca6f064c4e2d3bd1963")
  },
  {
    name: "Emily",
    surname: "Jonas",
    NIF: "89012345F",
    phone: 789012345,
    job: "DELIVERY",
    shop: ObjectId("64203ca6f064c4e2d3bd1963")
  },
  {
    name: "David",
    surname: "Billighan",
    NIF: "45678901G",
    phone: 456789012,
    job: "COOKER",
    shop: ObjectId("64203ca6f064c4e2d3bd1964")
  },
  {
    name: "Sarah",
    surname: "Bristol",
    NIF: "01234567H",
    phone: 901234567,
    job: "DELIVERY",
    shop: ObjectId("64203ca6f064c4e2d3bd1964")
  },
  {
    name: "Johan",
    surname: "Lee",
    NIF: "56789012I",
    phone: 567890123,
    job: "COOKER",
    shop: ObjectId("64203ca6f064c4e2d3bd1965")
  },
  {
    name: "Catherine",
    surname: "Liu",
    NIF: "21098765J",
    phone: 456789012,
    job: "DELIVERY",
    shop: ObjectId("64203ca6f064c4e2d3bd1965")
  }
]);

//insert orders
use('pizzeria');

db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1961"),
    client: ObjectId("64203bcf7f585c4adf5563e3"),
    products: ObjectId("6420320cc1f97d876b94278a"),
    Employees: ObjectId("6420411a64b9cf2724392790"),
    delivery: true,
    delivery_date: new Date()
  }]);
  use('pizzeria');
db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1961"),
    client: ObjectId("64203bcf7f585c4adf5563e4"),
    products: ObjectId("6420320cc1f97d876b94278b"),
    Employees: ObjectId("6420411a64b9cf2724392791"),
    delivery: false
  }
    ]);
    use('pizzeria');
    db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1962"),
    client: ObjectId("64203bcf7f585c4adf5563e5"),
    products: ObjectId("6420320cc1f97d876b94278c"),
    Employees: ObjectId("6420411a64b9cf2724392792"),
    delivery: true,
    delivery_date: new Date()
  }
   ]);

   use('pizzeria');
   db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1962"),
    client: ObjectId("64203bcf7f585c4adf5563e6"),
    products: ObjectId("6420320cc1f97d876b94278d"),
    Employees: ObjectId("6420411a64b9cf2724392793"),
    delivery: false
  }
  ]);

  use('pizzeria');
  db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1963"),
    client: ObjectId("64203bcf7f585c4adf5563e7"),
    products: ObjectId("6420320cc1f97d876b94278e"),
    Employees: ObjectId("6420411a64b9cf2724392794"),
    delivery: true,
    delivery_date: new Date()
  }
    ]);

    use('pizzeria');
    db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1963"),
    client: ObjectId("64203bcf7f585c4adf5563e8"),
    products: ObjectId("6420320cc1f97d876b94278f"),
    Employees: ObjectId("6420411a64b9cf2724392795"),
    delivery: false
  }
  ]);

  use('pizzeria');
  db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1964"),
    client: ObjectId("64203bcf7f585c4adf5563e9"),
    products: ObjectId("6420320cc1f97d876b942790"),
    Employees: ObjectId("6420411a64b9cf2724392796"),
    delivery: true,
    delivery_date: new Date()
  }
  ]);

  use('pizzeria');
  db.orders.insertOne([
  {
    shop: ObjectId("64203ca6f064c4e2d3bd1964"),
    client: ObjectId("64203bcf7f585c4adf5563ea"),
    products: ObjectId("6420320cc1f97d876b942791"),
    Employees: ObjectId("6420411a64b9cf2724392797"),
    delivery: false
  }
   ]);
  use('pizzeria');
   db.orders.insertOne([
    {
    shop: ObjectId("64203ca6f064c4e2d3bd1965"),
    client: ObjectId("64203bcf7f585c4adf5563eb"),
    products: ObjectId("6420320cc1f97d876b942792"),
    Employees: ObjectId("6420411a64b9cf2724392798"),
    delivery: true,
    delivery_date: new Date()
  }
     ]);
  use('pizzeria');
     db.orders.insertOne([
    {
    shop: ObjectId("64203ca6f064c4e2d3bd1965"),
    client: ObjectId("64203bcf7f585c4adf5563ec"),
    products: ObjectId("6420320cc1f97d876b942793"),
    Employees: ObjectId("6420411a64b9cf2724392799"),
    delivery: true,
    delivery_date: new Date()
  }
]);


