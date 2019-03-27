require 'trln_argon/argon_search_builder/add_query_to_solr'
require 'trln_argon/argon_search_builder/count_only'
require 'trln_argon/argon_search_builder/home_facets'
require 'trln_argon/argon_search_builder/local_filter'
require 'trln_argon/argon_search_builder/min_match'
require 'trln_argon/argon_search_builder/subjects_boost'
require 'trln_argon/argon_search_builder/wildcard_char_strip'

module TrlnArgon
  # Shared SearchBuilder behaviors concerning record rollup,
  # local record filtering, etc.
  module ArgonSearchBuilder
    include AddQueryToSolr
    include CountOnly
    include HomeFacets
    include LocalFilter
    include MinMatch
    include SubjectsBoost
    include WildcardCharStrip
  end
end
