REGEX_PATTERN = /^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$/

module EmailValidator < ActiveModel::Validator
    def validate(record)
        unless record.email
        record.errors[:email] << 'Email format is invalid.'
    end
end
