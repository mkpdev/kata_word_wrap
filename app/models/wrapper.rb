# frozen_string_literal: true

class Wrapper < ApplicationRecord
  def self.wrap(text, column_number)
    return nil if text.blank? || column_number.blank?

    # Insert new line tag after every column_number character.
    # text.scan(/.{1,#{column_number}}(?: |$)/).join("\n").gsub(" \n", "\n")

    # Insert new line tag after every column_number word.
    add_new_line(text, column_number)
  end

  def self.add_new_line(text, column_number)
    split_text(text, column_number).map{ |arr| arr.join(' ') }.join("\n")
  end

  def self.split_text(text, column_number)
    text.split(' ').each_slice(column_number.to_i).to_a
  end

end
