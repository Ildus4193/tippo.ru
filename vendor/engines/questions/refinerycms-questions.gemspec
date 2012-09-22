Gem::Specification.new do |s|
  s.name              = %q{refinerycms-questions}
  s.version           = %q{1.0.1}
  s.date              = %q{2011-06-30}
  s.summary           = %q{QA handling functionality for the Refinery CMS project.}
  s.description       = %q{Question handling functionality extracted from Refinery CMS, broadened by answer, to allow you to have a contact form and manage QA in the Refinery backend.}
  s.homepage          = %q{http://ktlabs.ru}
  s.email             = %q{hello@ktlabs.ru}
  s.authors           = ["ktlabs"]
  s.require_paths     = %w(lib)

  s.files             = [
    'app',
    'app/views',
    'app/views/questions',
    'app/views/questions/_question.html.erb',
    'app/views/questions/new.html.erb',
    'app/views/questions/show.html.erb',
    'app/views/questions/thank_you.html.erb',
    'app/views/questions/_list.html.erb',
    'app/views/question_mailer',
    'app/views/question_mailer/confirmation.html.erb',
    'app/views/question_mailer/notification.html.erb',
    'app/views/admin',
    'app/views/admin/questions',
    'app/views/admin/questions/_submenu.html.erb',
    'app/views/admin/questions/_question.html.erb',
    'app/views/admin/questions/index.html.erb',
    'app/views/admin/questions/show.html.erb',
    'app/views/admin/questions/edit.html.erb',
    'app/views/admin/question_settings',
    'app/views/admin/question_settings/_notification_recipients_form.html.erb',
    'app/views/admin/question_settings/edit.html.erb',
    'app/views/admin/question_settings/_confirmation_email_form.html.erb',
    'app/models',
    'app/models/question_setting.rb',
    'app/models/question.rb',
    'app/mailers',
    'app/mailers/question_mailer.rb',
    'app/helpers',
    'app/helpers/questions_helper.rb',
    'app/controllers',
    'app/controllers/questions_controller.rb',
    'app/controllers/admin',
    'app/controllers/admin/questions_controller.rb',
    'app/controllers/admin/question_settings_controller.rb',
    'refinerycms-questions.gemspec',
    'lib',
    'lib/questions.rb',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/refinerycms_questions_generator.rb',
    'lib/refinerycms-questions.rb',
    'features',
    'features/manage_questions.feature',
    'features/create_questions.feature',
    'features/support',
    'features/support/paths.rb',
    'features/support/factories.rb',
    'features/step_definitions',
    'features/step_definitions/question_steps.rb',
    'license.md',
    'config',
    'config/locales',
    'config/locales/it.yml',
    'config/locales/pl.yml',
    'config/locales/sv.yml',
    'config/locales/lolcat.yml',
    'config/locales/sk.yml',
    'config/locales/da.yml',
    'config/locales/sl.yml',
    'config/locales/lv.yml',
    'config/locales/cs.yml',
    'config/locales/pt-BR.yml',
    'config/locales/nl.yml',
    'config/locales/en.yml',
    'config/locales/fr.yml',
    'config/locales/nb.yml',
    'config/locales/es.yml',
    'config/locales/lt.yml',
    'config/locales/en-GB.yml',
    'config/locales/de.yml',
    'config/locales/zh-CN.yml',
    'config/locales/ru.yml',
    'config/routes.rb',
    'readme.md',
    'spec',
    'spec/models',
    'spec/models/question_spec.rb',
    'db',
    'db/migrate',
    'db/migrate/20110629110210_create_questions.rb',
    'db/migrate/20110629110212_add_answer_to_questions.rb',
    'db/migrate/20110629110211_remove_position_and_open_from_questions.rb',
    'db/seeds',
    'db/seeds/pages_for_questions.rb'
  ]
  s.require_path = 'lib'

  s.add_dependency('filters_spam', '~> 0.2')
end