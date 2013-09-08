# -*- coding: utf-8 -*-

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid) unless /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ =~ value
  end
end
