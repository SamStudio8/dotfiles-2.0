set fish_greeting_c1 red
set fish_greeting_c2 yellow
set fish_greeting (set_color $fish_greeting_c1)'                 ___
   ___======____='(set_color $fish_greeting_c2)'---='(set_color $fish_greeting_c1)')
 /T            \_'(set_color $fish_greeting_c2)'--==='(set_color $fish_greeting_c1)')
 L \ '(set_color $fish_greeting_c2)'(@)   '(set_color $fish_greeting_c1)'\~    \_'(set_color $fish_greeting_c2)'-=='(set_color $fish_greeting_c1)')
  \      / )J'(set_color $fish_greeting_c2)'~~    '(set_color $fish_greeting_c1)'\\'(set_color $fish_greeting_c2)'-='(set_color $fish_greeting_c1)')
   \\\\___/  )JJ'(set_color $fish_greeting_c2)'~~    '(set_color $fish_greeting_c1)'\)
    \_____/JJJ'(set_color $fish_greeting_c2)'~~      '(set_color $fish_greeting_c1)'\             '(hostname -f)'
    / \  , \\'(set_color $fish_greeting_c1)'J'(set_color $fish_greeting_c2)'~~~~      \            '(date)'
   (-\)'(set_color $fish_greeting_c1)'\='(set_color $fish_greeting_c2)'|  \~~~        L_
   ('(set_color $fish_greeting_c1)'\\'(set_color $fish_greeting_c2)'\\)  ( -\)_            ==__
    '(set_color $fish_greeting_c1)'\V    '(set_color $fish_greeting_c2)'\-'(set_color $fish_greeting_c1)'\) =='(set_color $fish_greeting_c2)'=_____  J\   \\\\
           '(set_color $fish_greeting_c1)'\V)     \_)'(set_color $fish_greeting_c2)' \   JJ J\)
                       /J J'(set_color $fish_greeting_c1)'T'(set_color $fish_greeting_c2)'\JJJ'(set_color $fish_greeting_c1)'J)
                       (J'(set_color $fish_greeting_c2)'JJ| '(set_color $fish_greeting_c1)'\UUU)
                        (UU)
                        '

function uncommit
    git reset --soft HEAD~1
end

function bigdir
    sudo du -h / | grep '^[0-9.]*G' | sort -rn
end

function summary
    Rscript -e 'summary (as.numeric (readLines ("stdin")))'
end

#function backup
#    switch (count $argv)
#        case 0
#            echo "Provide a source directory (no trailing slash) and destination pool."
#        case 1
#            echo "Specify a destination pool."
#        case 2
#            # -a  archive (r, l, p, t, g, o, D)
#            #       r  recursive
#            #       l  copy symlinks
#            #       p  preserve permissions
#            #       t  preserve times
#            #       g  preserve group
#            #       o  preserve owner (sudo only)
#            #       D  preserve devices and special files
#            # -v  verbose
#            # -z  compress
#            # -h  human readable
#            # -e  use ssh
#            rsync -avzh --progress -e "ssh -p 33849" $argv[1] sam@hyrule:/pools/cryo/fi/$argv[2]
#    end
#end

function todo
    grep -rniI "TODO" .
end

#POWERLINEENABLEset fish_function_path $fish_function_path "#POWERLINESETUPROOT/powerline/bindings/fish"
#POWERLINEENABLEpowerline-setup

alias python="python3"
alias pip="pip3"
alias ..="cd .."
alias ...="cd ../.."
alias vim="vim -p"

set VIRTUAL_ENV_DISABLE_PROMPT 1
#CONDAENABLEsource /home/ubuntu/miniconda3/etc/fish/conf.d/conda.fish
