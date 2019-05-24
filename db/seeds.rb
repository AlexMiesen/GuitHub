puts "Cleaning database..."
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
    description: "Multi-instrumentalist in Amsterdam. A good variety of instruments for hire",
    avatar: File.open(Rails.root.join("db/fixtures/users/me.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Amsterdam"
  },{
    first_name: "Axel",
    last_name: "Kalland",
    email: "axel@home.com",
    description: "Multi-instrumentalist in Amsterdam/Helsinki!",
    avatar: File.open(Rails.root.join("db/fixtures/users/axel.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Amsterdam"
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
  },
  {
    first_name: "Toon",
    last_name: "Remi",
    email: "toon@home.com",
    description: "Working drummer, originally farmer from the Kimito Island.",
    avatar: File.open(Rails.root.join("db/fixtures/users/toon.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Amsterdam"
  },
  {
    first_name: "Nikke",
    last_name: "Nyfiken",
    email: "nikke@home.com",
    description: "I love pianos and keyboards and squash!",
    avatar: File.open(Rails.root.join("db/fixtures/users/nikke.jpg")),
    password: "password",
    password_confirmation: "password",
    city: "Amsterdam"
  }
]

puts "Creating Users..."
users = User.create!(user_hash)



instrument_hash = [
  {
    name: "Afroton AD-M03 Mas­ter­class Djembe",
    category: "percussion",
    description: "Really great sound, and very loud.",
    location: "Oxford, England",
    user: users[0],
    photo: File.open(Rails.root.join("db/fixtures/instruments/djembe.jpg")),
    price_per_day: 15
  },
  {
    name: "Meinl Kajon S-33",
    category: "percussion",
    description: "A deep, woody sound, perfect for acoustic gigs.",
    location: "Brighton, England",
    user: users[0],
    photo: File.open(Rails.root.join("db/fixtures/instruments/kajon.jpg")),
    price_per_day: 10
  },
    {
    name: "Roland TP-455 Keyboard 88-key",
    category: "keyboards",
    description: "Full of features, you know what you're getting with Roland!",
    location: "Jordaan, Amsterdam",
    user: users[1],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keboard3.jpg")),
    price_per_day: 18
  },
   {
    name: "Nord Compact Stage Piano 88-key",
    category: "keyboards",
    description: "The industry standard, amazing workhorse, never lets you down",
    location: "De Pijp, Amsterdam",
    user: users[1],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keyboard1.jpg")),
    price_per_day: 20
  },
     {
    name: "Moog Supernaturel Synth",
    category: "keyboards",
    description: "Classic Moog. Enough said!",
    location: "Amsterdam Centraal",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/keyboard2.jpg")),
    price_per_day: 12
  },
      {
    name: "Korg Kronos",
    category: "keyboards",
    description: "Amazing synth, there are no limits with the Kronos!!",
    location: "Nokiantie 5, Helsinki, Finland",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/kronos.jpg")),
    price_per_day: 20
  },
    {
    name: "King Zephyr 1952 sax",
    category: "brass",
    description: "Deep, unbelievable sound from this classic horn. Cannonball Adderley played this horn!",
    location: "Amsterdam Noord",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/sopranosax.jpg")),
    price_per_day: 12
  },

  {
    name: "Steinway Baby Grand Piano",
    category: "keyboards",
    description: "Deep, beautiful classic sound from this 1950's German masterpiece. No going back to Yamaha!",
    location: "Kolmas Linja 17, Helsinki, Finland",
    user: users[2],
    photo: File.open(Rails.root.join("db/fixtures/instruments/steinway_baby.jpg")),
    price_per_day: 12
  },
    {
    name: "Fender Telecaster 50s Butterscotch",
    category: "guitars",
    description: "Tone you could cut glass with, that classic tele sound that everyone loves.",
    location: "Newcastle, England",
    user: users[3],
    photo: File.open(Rails.root.join("db/fixtures/instruments/tele.jpg")),
    price_per_day: 18
  },
    {
    name: "Stradivarius 1888 Violin",
    category: "orchestral",
    description: "Rich and smooth sound from this antique instrument.",
    location: "Cambridge, England",
    user: users[3],
    photo: File.open(Rails.root.join("db/fixtures/instruments/violin3.jpg")),
    price_per_day: 40
  },
    {
    name: "Dave Harman Trumpet P-34",
    category: "brass",
    description: "Smooth as you like, the perfect horn for small to medium gigs.",
    location: "Birmingham",
    user: users[4],
    photo: File.open(Rails.root.join("db/fixtures/instruments/trumpet4.jpg")),
    price_per_day: 18
  },
    {
    name: "Selmer MK VI Tenor Sax",
    category: "brass",
    description: "Edgy tone and deep low notes on this classic masterpiece.",
    location: "Birmingham",
    user: users[4],
    photo: File.open(Rails.root.join("db/fixtures/instruments/selmer.jpg")),
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
   {
    name: "Drumset",
    category: "percussion",
    description: "Classic Drumset will give you that classic punch you need to cut through the band. Located in my sauna",
    location: "Finnuddsvägen 210, Kimito, Finland",
    user: users[5],
    photo: File.open(Rails.root.join("db/fixtures/instruments/toons_drums.jpg")),
    price_per_day: 14
  }, {
    name: "Guitar, good for Rock n roll!",
    category: "guitars",
    description: "This is a really nice guitar!",
    location: "Nieuwmarkt, Amsterdam",
    user: users[5],
    photo: File.open(Rails.root.join("db/fixtures/instruments/guitar4.jpg")),
    price_per_day: 50
  }, {
    name: "Fender Rhodes",
    category: "keyboards",
    description: "The best of the best. What can I say? All the rhodes lead to rhodes! hahahah!",
    location: "Tölö Torg, Helsinki",
    user: users[6],
    photo: File.open(Rails.root.join("db/fixtures/instruments/rhodes.jpg")),
    price_per_day: 40
  }, {
    name: "Microkorg XL",
    category: "keyboards",
    description: "It's not really mine but you can still rent it. The owner won't know. Located in Pete's bus..",
    location: "Konala, Helsinki",
    user: users[6],
    photo: File.open(Rails.root.join("db/fixtures/instruments/microkorg.jpg")),
    price_per_day: 30
  }
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

puts "Finished!"
