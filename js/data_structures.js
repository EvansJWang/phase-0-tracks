var colors = ["red", "blue", "green", "purple"]
var horses = ["Ed", "Max", "Giddy", "Buckaroo"]

colors.push("silver");
horses.push("Steve");

console.log(colors)
console.log(horses)


var new_object = {};
for (var i = 0; i < colors.length; i++)
  new_object[horses[i]] = colors[i]; 

console.log(new_object);




function Car(model, make, isCarReliable) {

 console.log("Our new car:", this);

 this.model = model;
 this.make = make;
 this.isCarReliable = isCarReliable;
  

 this.honk = function() { console.log("Honk!"); };
 this.turn_left = function() { console.log("Turn left!"); };
 console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's make a car ...");

var anotherCar = new Car("Honda", "Accord", true);
console.log(anotherCar);
console.log("Our car can honk:");
anotherCar.honk();
anotherCar.turn_left();
console.log("----");

console.log("Let's make another car ...");
var yetAnotherCar = new Car("Mazda", "6", false);
console.log(yetAnotherCar);
console.log(yetAnotherCar.model);
console.log("This new car can honk, too:");
yetAnotherCar.honk();
yetAnotherCar.turn_left();
console.log("----")
