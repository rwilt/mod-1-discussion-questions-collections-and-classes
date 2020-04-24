## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?

# Iterate into the hash at index 0 in the array. 
# Iterate down the array stored at the "abilities" array and iterate through the abilty hash to get the URL key.


# How would you return the first pokemon with base experience over 40?
#You can use the .find enumerator to find the base_experience key that is linked to a value > 40. 

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
#You can use the .collect enumerator to grab all of the base_experience keys linked to a > 40 value.

# How would you return an array of all of the pokemon's names?
# By using the .map enumerator to return a new array with just the names.

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
#You could use the .any? enumerator. It will return true as soon as it finds the first value matching. 