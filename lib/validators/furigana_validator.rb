# -*- coding: utf-8 -*-

class FuriganaValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid_furigana) unless /^[\s　ぁ-んァ-ン]+$/ =~ value
  end
end
