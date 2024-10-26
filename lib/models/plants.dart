
class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
        required this.price,
        required this.category,
        required this.plantName,
        required this.size,
        required this.rating,
        required this.humidity,
        required this.temperature,
        required this.imageURL,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 220,
        category: 'Indoor',
        plantName: 'Aunthurium Plant',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/anth.jpg',
        isFavorated: true,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 250,
        category: 'Outdoor',
        plantName: 'Rose Plant',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/R.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 180,
        category: 'Indoor',
        plantName: 'Money Plant',
        size: 'Small',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/mp.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 230,
        category: 'Outdoor',
        plantName: 'Tulasi Plant',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/tul.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 240,
        category: 'Recommended',
        plantName: 'Hibiscus Plant',
        size: 'Medium',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/hib.jpg',
        isFavorated: true,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 324,
        category: 'Outdoor',
        plantName: 'Spider Plant',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/download.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 190,
        category: 'Garden',
        plantName: 'Jasmine Plant',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/js.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 230,
        category: 'Garden',
        plantName: 'Dragon-Fruit',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/dg.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 460,
        category: 'Neem Plant',
        plantName: 'Tritonia',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/nm.jpg',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants(){
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants(){
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}
