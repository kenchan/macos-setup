define :global_npm_package do
  execute "npm install -g #{params[:name]}" do
    command "npm install -g #{params[:name]}"
    not_if "npm list -g | grep #{params[:name]}"
  end
end

global_npm_package 'textlint'
