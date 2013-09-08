# -*- coding: utf-8 -*-

class TelephoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid) unless /^\d{1,4}-?\d{4}$|^\d{2,5}-?\d{1,4}-?\d{4}$/ =~ value
  end
end
