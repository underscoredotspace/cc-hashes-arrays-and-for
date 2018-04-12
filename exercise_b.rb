users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]  
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users['Jonathan'][:twitter]

# Get Erik's hometown
p users['Erik'][:home_town]

# Get the array of Erik's lottery numbers
p users['Erik'][:lottery_numbers]

# Get the type of Avril's pet Monty
p users['Avril'][:pets][0][:species]

# Get the smallest of Erik's lottery numbers
p users['Erik'][:lottery_numbers].sort().first()

p users['Erik'][:lottery_numbers].min()

# Return an array of Avril's lottery numbers that are even
# p users['Avril'][:lottery_numbers].keep_if { |number| number%2 == 0 }

avril_even_lottery_numbers = []
for number in users['Avril'][:lottery_numbers] do
  # avril_even_lottery_numbers.push if number.even()
  if (number%2 == 0)
    avril_even_lottery_numbers.push(number)
  end
end

# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
users['Erik'][:lottery_numbers].push(7)

# Change Erik's hometown to Edinburgh
users['Erik'][:home_town] = "Edinburgh"

# Add a pet dog to Erik called "Fluffy"
users['Erik'][:pets].push({
  name: "fluffy",
  species: "dog"
})

# Add another person to the users hash
users["Colin"] = {
  :twitter => "_dotSpace",
  :lottery_numbers => [7, 12, 28, 8, 2, 19],
  :home_town => "Glasgow",
  :pets => [
    {
      :name => "neeko",
      :species => "miniature panther"
    }
  ]
}