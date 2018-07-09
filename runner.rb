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