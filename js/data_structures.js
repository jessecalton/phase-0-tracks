var colorsArray = ["blue", "red", "orange", "yellow"];
var horseNames = ["Rod", "Davis", "Gunner", "Fletcher"];

colorsArray.push("green");
horseNames.push("Aries");

function horseHash(hash1, hash2) {
  var hash = {}
  for (var i = 0; i < hash1.length; i++){
    hash[horseNames[i]] = colorsArray[i];
  }
  return hash 
}

horseHash(horseNames, colorsArray)


function Car(color, make, model, year, isNew) {
  console.log("New car:", this);

  this.color = color;
  this.make = make;
  this.model = model;
  this.year = year;
  this.isNew = isNew;

  this.honk = function() { console.log("Honk!"); };
  console.log("CAR INITIALIZATION COMPLETE!");
}

var newCar = new Car('red', 'Ferrari', 'California', 2016, true);
newCar.honk();
console.log(newCar);
console.log("---------");

var coolCar = new Car('blue', 'Tesla', 'Model X', 2016, false);
coolCar.honk();
console.log(coolCar);

