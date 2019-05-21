Booking.destroy_all
Instrument.destroy_all
User.destroy_all

user_hash = [
  {
    first_name: "Jimmy",
    last_name: "Silverton",
    email: "jimmy@home.com",
    description: "Professional musician, currently living in Brighton. A few good quality instruments available",
    avatar: File.open(Rails.root.join("db/fixtures/users/pianoman.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Brighton"
  },{
    first_name: "Carlton",
    last_name: "Banks",
    email: "carlton@home.com",
    description: "Multi-instrumentalist in London. A good variety of instruments for hire",
    avatar: File.open(Rails.root.join("db/fixtures/users/me.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "London"
  },{
    first_name: "Mike",
    last_name: "Rodgers",
    email: "mike@home.com",
    description: "Guitarist in London. Looking to try out some new instruments!",
    avatar: File.open(Rails.root.join("db/fixtures/users/Mike.jpeg")),
    password: "password",
    password_confirmation: "password",
    city: "London"
  },{
    first_name: "Veronika",
    last_name: "Jessop",
    email: "veronika@home.com",
    description: "Classical musician with a couple of stringed instruments up for hire, please be careful with my precious babies!",
    avatar: File.open(Rails.root.join("db/fixtures/users/Veronika.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Newcastle"
  },{
    first_name: "Willie",
    last_name: "Harding",
    email: "willie@home.com",
    description: "Working drummer with a few spare pieces to loan, also would love to try something new!",
    avatar: File.open(Rails.root.join("db/fixtures/users/Willie.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Birmingham"
  }
]

puts "Creating Users..."

users = User.create!(user_hash)



instrument_hash = [
  {
    name: "Afroton AD-M03 Mas­ter­class Djembe",
    category: "percussion",
    description: "Really great sound, and very loud.",
    location: "Brighton",
    user: users[0],
    photo: File.open(Rails.root.join("db/fixtures/instruments/djembe.jpeg")),
    price_per_day: 15
  },
  {
    name: "Meinl Kajon S-33",
    category: "percussion",
    description: "A deep, woody sound, perfect for acoustiv gigs.",
    location: "Brighton",
    user: users[0],
    photo: File.open(Rails.root.join("db/fixtures/instruments/kajon.jpg")),
    price_per_day: 10
  },
    {
    name: "Roland TP-455 Keyboard 88-key",
    category: "keyboards",
    description: "Full of features, you know what you're getting with Roland!",
    location: "London",
    user: users[1],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keboard3.jpg")),
    price_per_day: 18
  },
   {
    name: "Nord Compact Stage Piano 88-key",
    category: "keyboards",
    description: "The industry standard, amazing workhorse, never lets you down",
    location: "London",
    user: users[1],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keyboard1.jpg")),
    price_per_day: 20
  },
     {
    name: "Moog Supernaturel Synth",
    category: "keyboards",
    description: "Classic Moog. Enough said!",
    location: "London",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keyboard2.jpg")),
    price_per_day: 12
  },
      {
    name: "Les Paul Standard",
    category: "guitars",
    description: "Perfect sounding, beautiful looking Les Paul with brand new pick ups",
    location: "London",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/lespaul.jpeg")),
    price_per_day: 20
  },
    {
    name: "Palmer Sax Premium",
    category: "brass",
    description: "Deep, pretty sound from this classic horn.",
    location: "Newcastle",
    user: users[3],
    photo: File.open(Rails.root.join("db/fixtures/instruments/sax1.jpg")),
    price_per_day: 12
  },
    {
    name: "Fender Telecaster 50s Butterscotch",
    category: "guitars",
    description: "Tone you could cut glass with, that classic tele sound that everyone loves.",
    location: "Newcastle",
    user: users[3],
    photo: File.open(Rails.root.join("db/fixtures/instruments/tele.jpg")),
    price_per_day: 18
  },
    {
    name: "Stradivarius 1888 Violin",
    category: "orchestral",
    description: "Rich and smooth sound from this antique instrument.",
    location: "Newcastle",
    user: users[3],
    photo: File.open(Rails.root.join("db/fixtures/instruments/violin1.jpg")),
    price_per_day: 40
  },
    {
    name: "Dave Harman Trumpet P-34",
    category: "brass",
    description: "Smooth as you like, the perfect horn for small to medium gigs.",
    location: "Birmingham",
    user: users[4],
    photo: File.open(Rails.root.join("db/fixtures/instruments/tele.jpg")),
    price_per_day: 18
  },
    {
    name: "Grover Classic Sax",
    category: "brass",
    description: "Edgy tone and deep low notes.",
    location: "Birmingham",
    user: users[4],
    photo: File.open(Rails.root.join("db/fixtures/instruments/sax2.jpeg")),
    price_per_day: 16
  },
    {
    name: "Ludwig Black Magic Snare",
    category: "percussion",
    description: "This classic Ludwig will give you that classic punch you need to cut through the band.",
    location: "Birmingham",
    user: users[4],
    photo: File.open(Rails.root.join("db/fixtures/instruments/ludwigblackmagic.jpg")),
    price_per_day: 14
  },
]

puts "Creating Instruments..."

instruments = Instrument.create!(instrument_hash)



bookings_hash = [
  {
    instrument: instruments[0],
    user: users[4],
    total_price: 30,
    no_days: 2,
  },
  {
    instrument: instruments[1],
    user: users[3],
    total_price: 30,
    no_days: 3,
  },
  {
    instrument: instruments[2],
    user: users[2],
    total_price: 18,
    no_days: 1,
  },
  {
    instrument: instruments[5],
    user: users[1],
    total_price: 40,
    no_days: 2,
  },
  {
    instrument: instruments[3],
    user: users[0],
    total_price: 60,
    no_days: 3,
  },
]

puts "Creating Bookings..."

Booking.create!(bookings_hash)
