require 'unirest'

params = {
  name: "nitrogen",
  symbol: "N",
  atomic_number: 7,
  state: "gas",
  group: 15,
  atomic_mass: 14
}
response = Unirest.post("http://localhost:3000/api/elements", parameters: params)

# params = {
#   symbol: "N",
#   atomic_number: 7,
#   state: "gas",
#   group: 15,
#   atomic_mass: 14
# }
# response = Unirest.patch("http://localhost:3000/api/elements/7", parameters: params)

# response = Unirest.delete("http://localhost:3000/api/elements/7")