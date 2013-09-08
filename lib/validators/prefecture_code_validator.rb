# -*- coding: utf-8 -*-

class PrefectureCodeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :invalid) unless JpPrefecture::Prefecture.all.map(&:code).include?(value)
  end
end
