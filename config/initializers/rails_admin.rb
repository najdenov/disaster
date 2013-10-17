# RailsAdmin config file. Generated on October 17, 2013 17:35
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['AISA Disaster | Administrative Panel', '']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  config.included_models = ['Article','Article::Translation', 'User', 'Album', 'Photo']

  config.audit_with :paper_trail, 'User'

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]

  config.model 'Article::Translation' do
    visible false
    configure :locale, :hidden
    include_fields :locale, :title, :summary, :content
  end

  config.actions do
    dashboard
    index
    new
    multiple_upload do
      only Album
    end
    show
    edit
    history_index
    history_show
    delete
  end
end
