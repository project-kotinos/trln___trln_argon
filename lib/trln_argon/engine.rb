require 'blacklight'
require 'blacklight_advanced_search'

module TrlnArgon
  class Engine < ::Rails::Engine
    isolate_namespace TrlnArgon

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configuration=(configuration)
      @configuration = configuration
    end

    def self.configure
      yield configuration
    end

    class Configuration

      attr_accessor :preferred_records,
                    :local_institution_code,
                    :local_records,
                    :apply_local_filter_by_default,
                    :application_name

      def initialize
        @preferred_records             = "unc"
        @local_institution_code        = "unc"
        @local_records                 = "unc,trln"
        @apply_local_filter_by_default = "true"
        @application_name              = "TRLN Argon"
      end

    end

  end
end
