class ReleaseYearValidator < ActiveModel::Validator

    def validate(record)
        if record.released
            if record.release_year.blank?
                record.errors[:release_year] << "Release Year must not be blank."
            elsif record.release_year >= Time.now.year
                record.errors[:release_year] << "Year must not be in the future."
            end
        end
    end
end