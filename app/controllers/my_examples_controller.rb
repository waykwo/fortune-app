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
end
