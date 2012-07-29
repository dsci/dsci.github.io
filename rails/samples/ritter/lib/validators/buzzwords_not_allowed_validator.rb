class BuzzwordsNotAllowedValidator < ActiveModel::EachValidator

  BUZZWORDS = %W(twitter facebook)

  def validate_each(record,attribute,value)
    unless value.nil?
      BUZZWORDS.each do |word|
        if value.downcase.match(/#{word}/)
          record.errors[attribute] << I18n.t('validations.buzzword_not_allowed', :word => word)
        end
      end
    end
  end

end