movies = [
  { name: 'The Shawshank Redemption', synopsis: 'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.', director: 'Frank Darabont' },
  { name: 'The Godfather', synopsis: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', director: 'Francis Ford Coppola' },
  { name: 'Pulp Fiction', synopsis: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', director: 'Quentin Tarantino' },
  { name: 'The Dark Knight', synopsis: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', director: 'Christopher Nolan' },
  { name: 'Inception', synopsis: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', director: 'Christopher Nolan' }
]

movies.each do |movie|
  Movie.create(movie)
end

series = [
  { name: 'Breaking Bad', synopsis: 'A high school chemistry teacher turned methamphetamine producer partners with a former student to secure his family\'s financial future as he battles terminal lung cancer.', director: 'Vince Gilligan' },
  { name: 'Game of Thrones', synopsis: 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.', director: 'David Benioff, D.B. Weiss' },
  { name: 'Stranger Things', synopsis: 'When a young boy goes missing in a small town, a group of kids, a mysterious girl, and a desperate mother uncover a secret government experiment and supernatural forces.', director: 'The Duffer Brothers' },
  { name: 'Friends', synopsis: 'Follows the personal and professional lives of six twenty to thirty-something friends living in Manhattan.', director: 'David Crane, Marta Kauffman' },
  { name: 'The Office', synopsis: 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', director: 'Greg Daniels, Ricky Gervais, Stephen Merchant' }
]

series.each do |serie|
  Serie.create(serie)
end

documentary_films = [
  { name: 'Planet Earth', synopsis: 'A documentary series about the Earth and its natural wonders.', director: 'Alastair Fothergill' },
  { name: 'The Cove', synopsis: 'An investigative documentary about the dolphin hunting industry in Japan.', director: 'Louie Psihoyos' },
  { name: 'Blackfish', synopsis: 'A documentary exploring the captivity of orcas and their treatment in marine parks.', director: 'Gabriela Cowperthwaite' },
  { name: 'March of the Penguins', synopsis: 'A documentary following the annual journey of emperor penguins in Antarctica.', director: 'Luc Jacquet' },
  { name: 'Food, Inc.', synopsis: 'An exposé on the food industry, examining its impact on health, environment, and economy.', director: 'Robert Kenner' }
]

documentary_films.each do |documentary|
  Documentary.create(documentary)
end
