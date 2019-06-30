  crumb :root do
    link 'メルカリ', root_path
  end

# マイページヘのパンくずリスト
  crumb :mypage do
    link 'マイページ', user_path
  end

  crumb :profile do
    link "マイページ › プロフィール", profile_users_path
  end

  crumb :card do
    link "マイページ › 支払い方法", card_users_path
  end

  crumb :addcard do
    link "クレジットカード情報入力", card_users_path
    parent :card
  end

  crumb :identification do
    link "マイページ › 本人情報", identification_users_path
  end

  crumb :logout do
    link "マイページ › ログアウト", logout_users_path
  end

 # 商品詳細ページへのパンくずリスト
  crumb :item do |item|
    link "#{item.name}", item_path(item)
    parent :root
  end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).