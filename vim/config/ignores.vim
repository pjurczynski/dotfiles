" don't search coverage reports and vcr cassettes
set wildignore+=spec/reports
set wildignore+=test/reports
set wildignore+=spec/cassettes

" ignore gems bundled in the project directory
set wildignore+=vendor/gems,vendor/bundle,vendor/assets

" ignore target directory in clojure projects
set wildignore+=target

" ignore node modules directory
set wildignore+=/node_modules/*

" ignore _deploy and output in nanoc sites
set wildignore+=_deploy,output

" stuff to ignore when tab completing
set wildignore+=*.o,*.obj,*~,*.png,*.gif,*.jpg,*.jpeg,*.zip,*.jar,*.pyc
set wildignore+=*.gem,*/coverage/*,*/log/*,tags,*.rbc,*.ttf,*.eot
set wildignore+=*/_site/*,*/tmp/*,*/public/uploads/*,*/_src/*
set wildignore+=*/.jhw-cache/*,.vagrant,*/.stuff/*,*/test/reports/*,*/*.egg-info/*

