

class Search < ApplicationRecord
  belongs_to :user

  def self.update_search_query(user, current_query)
    most_recent_search = user.searches.last
    most_recent_query = most_recent_search&.query.to_s

    return save_search_query(user, current_query) unless most_recent_query.present?

    if similar_enough?(current_query.to_s, most_recent_query)
      update_with_longer_query(most_recent_search, current_query)
    else
      save_search_query(user, current_query)
    end
  end

  def self.save_search_query(user, query)
    user.searches.create(query:) if user.present? && query.present?
  end

  def self.update_with_longer_query(search, new_query)
    return unless new_query.length >= search.query.length

    search.update(query: new_query)
  end

  def self.similar_enough?(str1, str2)
    jarow = FuzzyStringMatch::JaroWinkler.create(:native)
    distance = jarow.getDistance(str1, str2)
    distance > 0.8
  end
end
