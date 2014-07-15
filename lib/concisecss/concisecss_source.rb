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
    get "#{remote}/raw/#{tag}/scss/_defaults.scss", "stylesheets/_defaults.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_badges.scss", "stylesheets/objects/_badges.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_breadcrumbs.scss", "stylesheets/objects/_breadcrumbs.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_buttons.scss", "stylesheets/objects/_buttons.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_colors.scss", "stylesheets/objects/_colors.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_dropdowns.scss", "stylesheets/objects/_dropdowns.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_groups.scss", "stylesheets/objects/_groups.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_navigation.scss", "stylesheets/objects/_navigation.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_progress.scss", "stylesheets/objects/_progress.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_wells.scss", "stylesheets/objects/_wells.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_clearfix.scss", "stylesheets/objects/_clearfix.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_conditional.scss", "stylesheets/objects/_conditional.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_debug.scss", "stylesheets/objects/_debug.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_helper.scss", "stylesheets/objects/_helper.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_mixins.scss", "stylesheets/objects/_mixins.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_normalize.scss", "stylesheets/objects/_normalize.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_print.scss", "stylesheets/objects/_print.scss"
    get "#{remote}/raw/#{tag}/scss/objects/_shared.scss", "stylesheets/objects/_shared.scss"
    get "#{remote}/raw/#{tag}/scss/base/_blockquotes.scss", "stylesheets/base/_blockquotes.scss"
    get "#{remote}/raw/#{tag}/scss/base/_container.scss", "stylesheets/base/_container.scss"
    get "#{remote}/raw/#{tag}/scss/base/_forms.scss", "stylesheets/base/_forms.scss"
    get "#{remote}/raw/#{tag}/scss/base/_grid.scss", "stylesheets/base/_grid.scss"
    get "#{remote}/raw/#{tag}/scss/base/_headings.scss", "stylesheets/base/_headings.scss"
    get "#{remote}/raw/#{tag}/scss/base/_lists.scss", "stylesheets/base/_lists.scss"
    get "#{remote}/raw/#{tag}/scss/base/_main.scss", "stylesheets/base/_main.scss"
    get "#{remote}/raw/#{tag}/scss/base/_selection.scss", "stylesheets/base/_selection.scss"
    get "#{remote}/raw/#{tag}/scss/base/_tables.scss", "stylesheets/base/_tables.scss"
    get "#{remote}/raw/#{tag}/scss/base/_type.scss", "stylesheets/base/_type.scss"

    get "#{remote}/raw/#{tag}/js/non-responsive.js", "javascripts/concisecss/non-responsive.js"
    get "#{remote}/raw/#{tag}/js/navigation.js", "javascripts/concisecss/navigation.js"
    get "#{remote}/raw/#{tag}/js/naver.js", "javascripts/concisecss/naver.js"
    get "#{remote}/raw/#{tag}/js/dropdown.js", "javascripts/concisecss/dropdown.js"
    get "#{remote}/raw/#{tag}/js/close.js", "javascripts/concisecss/close.js"
  end



  private

  def fetch_tags
    http = HTTPClient.new
    response = JSON.parse(http.get("https://api.github.com/repos/ConciseCSS/concise.css/tags").body)
    response.map{|tag| tag["name"]}.sort
  end



end