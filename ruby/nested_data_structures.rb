highway = {
    westbound: {
        name_of_driver: 'Big Al',
        car_details: {
            type_of_car: 'big rig',
            passengers: 0
        },
        radio_choices: [
            "KFOG",
            "The Best of ZZ Top"
        ]
  },
    southbound: {
        name_of_driver: 'Harry',
        car_details: {
            type_of_car: 'clown car',
            passengers: 2
        },
        radio_choices: [
          "NPR",
          "500 Classic Slapstick Sound Effects"
        ]
  },
  eastbound: {
    name_of_driver: 'Jesse',
    car_details: {
      type_of_car: 'Mazerati',
      passengers: 1
    },
    radio_choices: [
      "Q102.1",
      "Michael Jackson"
    ]
  }
}

p highway[:westbound][:name_of_driver]
p highway[:eastbound][:car_details][:type_of_car]
p highway[:southbound][:radio_choices][0]