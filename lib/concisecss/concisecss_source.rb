require "thor"
require "json"
require "httpclient"

class ConcisecssSource < Thor
  include Thor::Actions

  desc "fetch source files", "fetch source files from ConciseCSS GitHub "
  def fetch
    filtered_tags = fetch_tags
    tag = select("Which tag do you want to fetch?", filtered_tags)
    self.destination_root = "app/assets"
    remote = "https://github.com/ConciseCSS/concise.css"
    get "#{remote}/raw/#{tag}/scss/concise.scss", "stylesheets/concise.scss"
    get "#{remote}/raw/#{tag}/scss/layout/_tables.scss", "stylesheets/layout/tables.scss"
    get "#{remote}/raw/#{tag}/scss/layout/_lists.scss", "stylesheets/layout/_lists.scss"
    get "#{remote}/raw/#{tag}/scss/layout/_grid.scss", "stylesheets/layout/_grid.scss"
    get "#{remote}/raw/#{tag}/scss/layout/_forms.scss", "stylesheets/layout/_forms.scss"
    get "#{remote}/raw/#{tag}/scss/layout/_container.scss", "stylesheets/layout/_container.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_clearfix.scss", "stylesheets/helpers/_clearfix.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_conditional.scss", "stylesheets/helpers/_conditional.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_functions.scss", "stylesheets/helpers/_functions.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_helpers.scss", "stylesheets/helpers/_helpers.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_mixins.scss", "stylesheets/helpers/_mixins.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_normalize.scss", "stylesheets/helpers/_normalize.scss"
    get "#{remote}/raw/#{tag}/scss/helpers/_variables.scss", "stylesheets/helpers/_variables.scss"
    get "#{remote}/raw/#{tag}/scss/components/_buttons.scss", "stylesheets/components/_buttons.scss"
    get "#{remote}/raw/#{tag}/scss/components/_colors.scss", "stylesheets/components/_colors.scss"
    get "#{remote}/raw/#{tag}/scss/components/_dropdowns.scss", "stylesheets/components/_dropdowns.scss"
    get "#{remote}/raw/#{tag}/scss/components/_navigation.scss", "stylesheets/components/_navigation.scss"
    get "#{remote}/raw/#{tag}/scss/base/_headings.scss", "stylesheets/base/_headings.scss"
    get "#{remote}/raw/#{tag}/scss/base/_main.scss", "stylesheets/base/_main.scss"
    get "#{remote}/raw/#{tag}/scss/base/_print.scss", "stylesheets/base/_print.scss"
    get "#{remote}/raw/#{tag}/scss/base/_selection.scss", "stylesheets/base/_selection.scss"
    get "#{remote}/raw/#{tag}/scss/base/_type.scss", "stylesheets/base/_type.scss"
    get "#{remote}/raw/#{tag}/scss/base/_vertical-rhythm.scss", "stylesheets/base/_vertical-rhythm.scss"
    get "#{remote}/raw/#{tag}/js/non-responsive.js", "javascripts/concisecss/non-responsive.js"
    get "#{remote}/raw/#{tag}/js/navigation.js", "javascripts/concisecss/navigation.js"
    get "#{remote}/raw/#{tag}/js/naver.js", "javascripts/concisecss/naver.js"
    get "#{remote}/raw/#{tag}/js/dropdown.js", "javascripts/concisecss/dropdown.js"
  end

  private

    def fetch_tags
      http = HTTPClient.new
      response = JSON.parse(http.get("https://api.github.com/repos/ConciseCSS/concise.css/tags").body)
      response.map{|tag| tag["name"]}.sort
    end
    def select msg, elements
      elements.each_with_index do |element, index|
        say(block_given? ? yield(element, index + 1) : ("#{index + 1}. #{element.to_s}"))
      end
      result = ask(msg).to_i
      elements[result - 1]
    end
end
