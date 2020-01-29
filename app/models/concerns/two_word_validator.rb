class TwoWordValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
      if value.split(" ").count != 2
      #add an error message
      record.errors.add(attribute, "must be exactly 2 words (from other model)")
    end
  end
end