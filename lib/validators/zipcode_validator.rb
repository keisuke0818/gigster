# -*- coding: utf-8 -*-

class ZipcodeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid) unless /^\d{3}-?\d{4}$|^\d{3}-?\d{2}$|^\d{3}$/ =~ value
  end
end
