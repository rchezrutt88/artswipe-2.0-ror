FactoryGirl.define do

  factory :art_piece do

    title { "Portrait of #{Faker::Ancient.hero}" }
    artist { Faker::Name.name }
    url { Faker::Avatar.image }


    trait :void do
      title nil
      artist nil
      url nil
    end

    factory :void_art_piece, traits: [:void]

    factory :girl_with_pearl_earring do
      title 'The Girl with a Pearl Earring'
      artist 'Johannes Vermeer'
      url 'https://s3.amazonaws.com/artswipe/art-images/Girl_With_A_Pearl_Earring.jpg'
    end

    factory :portrait_of_the_journalist_sylvia_von_harden do
      title 'Portrait of the Journalist Sylvia von Harden'
      artist 'Otto Dix'
      url 'https://s3.amazonaws.com/artswipe/art-images/Sylvia-von-Harden-Otto-Dix-831x1024.jpg'
    end

  end
end
