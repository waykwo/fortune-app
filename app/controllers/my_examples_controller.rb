class MyExamplesController < ApplicationController
  def fortune
    fortunes_array = [
      "You will encounter someone that you haven't seen since childhood!",
      "You will find a two-dollar bill!",
      "You will forget your wallet somewhere!"
    ]

    lotto_numbers = []
    6.times do |lotto_number|
      lotto_number = rand(1..60)
      lotto_numbers << lotto_number
    end

    page_count_timestamps = []
    current_time = Time.now
    page_count_timestamps << current_time

    random_number = rand(0..fortunes_array.length - 1)

    pp fortunes_array[random_number]
    pp lotto_numbers.sort
    pp current_time
    pp page_count_timestamps

    render json: {
      fortune: fortunes_array[random_number],
      lotto_numbers: lotto_numbers.sort
    }
  end

  def ninety_nine_bottles
    ninety_nine_array = [] 
    99.downto(1) do |number|
      ninety_nine_array << "#{number} bottles of beer on the wall, #{number} bottles of beer... If one of those bottles happened to fall, #{number - 1} bottles of beer on the wall."
    end

    render json: {ninety_nine: ninety_nine_array}
  end

end
