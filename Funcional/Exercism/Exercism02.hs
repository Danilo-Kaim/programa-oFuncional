-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40
-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes layers = layers * 2
-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes layers numMinutes = preparationTimeInMinutes layers + numMinutes 