air_jordan_1_orange_data = [
  {
    title: 'jordan sign landscape',
    id: '6JFMiPRGIZs'
  },
  {
    title: 'jordan sign portrait',
    id: 'UcrciQJ1lJE'
  },
  {
    title: 'full portrait',
    id: '22RNtmIbCo8'
  },
  {
    title: 'full landscape',
    id: 'tBdkpxj3A7Q'
  },
  {
    title: 'label portrait',
    id: 'r62QyTA8OB4'
  },
  {
    title: 'left shoe portrait',
    id: 'JSEh-LByBAk'
  },
]

air_jordan_1_red_data = [
  {
    title: 'full portrait',
    id: 'O9Lac-Iijgo'
  },
  {
    title: 'full landscape',
    id: '1WZYDo7IKzA'
  },
  {
    title: 'outdoors landscape',
    id: 'aDZ5YIuedQg'
  },
  {
    title: 'front landscape',
    id: '_53nat-Lu1Q'
  },
  {
    title: 'side landscape',
    id: 'xyhMlUbwiQU'
  },
  {
    title: 'lying down landscape',
    id: 'vFDUi3-3bms'
  }
]

airforce_carhartt_data = [
  {
    title: 'full landscape',
    id: '1vy2QcZd5FU'
  },
  {
    title: 'right full landscape',
    id: 'NOpsC3nWTzY'
  },
  {
    title: 'right heel landscape',
    id: 'LtB12xWnkpw'
  }
]

converse_black_data = [
  {
    title: 'side landscape',
    id: '1BI-ar91C7U'
  },
  {
    title: 'worn landscape',
    id: 'mWYhrOiAgmA'
  }
]

airmax_orange_data = [
  {
    title: 'angled landscape',
    id: 'LG88A2XgIXY'
  },
  {
    title: 'tilted landscape',
    id: 'J2-wAQDckus'
  },
  {
    title: 'flat landscape',
    id: 'S6Cp3uN39_M'
  },
  {
    title: 'closeup square',
    id: '8T-LD_wxlSo'
  }
]

airmax_premium_curry_data = [
  {
    title: 'walking landscape',
    id: 'AfXlY41lwvQ'
  },
  {
    title: 'standing landscape',
    id: 'j1GiPlvSGWI'
  }
]

air_jordan_1_yellow_data = [
  {
    title: 'side landscape',
    id: '1zBPoVwS_Jo'
  }
]

converse_red_data = [
  {
    title: 'side landscape',
    id: '0BKZfcamvGg'
  }
]

converse_tan_data = [
  {
    title: 'full landscape',
    id: 'YQbJLyY0hFU'
  }
]

nike_sb_dunk_high_data = [
  {
    title: 'full landscape',
    id: 'jbwHmA4pa7k'
  }
]

stan_smith_data = [
  {
    title: 'full landscape',
    id: 'BeClz11lyXY'
  }
]

womens_new_balance_data = [
  {
    title: 'side landscape',
    id: 'fUEP0djb1hA'
  }
]

airmax_90_purple_data = [
  {
    title: 'side landscape',
    id: 'DMl5gG0yWWY'
  }
]

shoe_wall_data = [
  {
    title: 'full landscape',
    id: 'W4swGaKFHVQ'
  }
]

shoe_floor_data = [
  {
    title: 'air jordans portrait',
    id: 'G6vLu_5egEo'
  }
]

air_jordan_1_offwhite_data = [
  {
    title: 'stairs portrait',
    id: 'mWqOnset6XA'
  },
  {
    title: 'right heel portrait',
    id: 'iOv3CqiZLtE'
  },
  {
    title: 'car landscape',
    id: 'KvJez-1Gt7A'
  },
  {
    title: 'shoebox portrait',
    id: 'YLJVJUvAyM4'
  }
]

sneaker_images_data = [
  air_jordan_1_orange_data,
  air_jordan_1_red_data,
  air_jordan_1_yellow_data,
  airforce_carhartt_data,
  converse_black_data,
  converse_red_data,
  converse_tan_data,
  airmax_orange_data,
  airmax_premium_curry_data,
  airmax_90_purple_data,
  nike_sb_dunk_high_data,
  stan_smith_data,
  womens_new_balance_data,
  air_jordan_1_offwhite_data
]

sneakers = [
  Sneaker.create!(name: 'Air Jordan 1 Orange', price: 120.00),
  Sneaker.create!(name: 'Air Jordan 1 Red', price: 120.00),
  Sneaker.create!(name: 'Air Jordan 1 Yellow', price: 120.00),
  Sneaker.create!(name: 'Airforce CarHartt', price: 140.00),
  Sneaker.create!(name: 'Converse Black', price: 40.00),
  Sneaker.create!(name: 'Converse Tan', price: 45.00),
  Sneaker.create!(name: 'Converse Red', price: 60.00),
  Sneaker.create!(name: 'Airmax Orange', price: 100.00),
  Sneaker.create!(name: 'Airmax Premium Curry', price: 150.00),
  Sneaker.create!(name: 'Airmax 90 Purple', price: 120.00),
  Sneaker.create!(name: 'Nike SB Dunk High', price: 115.00),
  Sneaker.create!(name: 'Stan Smith White', price: 70.00),
  Sneaker.create!(name: 'Women New Balance', price: 70.00),
  Sneaker.create!(name: 'Air Jordan 1 Offwhite Package', price: 420.00)
]


sneaker_images_data.each_with_index do |sneaker_array, i|
  sneaker_array.each do |obj|
    url = Unsplash::Photo.find(obj[:id])[:urls][:small]
    si = SneakerImage.create!(title: obj[:title], url: url, sneaker_id: sneakers[i].id)
  end
end
