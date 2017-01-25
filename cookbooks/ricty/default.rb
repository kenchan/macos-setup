execute "copy Ricty*.ttf" do
  command 'cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts && fc-cache -vf'
  not_if 'ls ~/Library/Fonts | grep -q Ricty'
end
