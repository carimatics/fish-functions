function ghq --description='ghq command wrapper' --wraps=ghq
    # ghq cd -- change directory to selected repository
    if test $argv[1] = 'cd'
        set -l target (command ghq list | peco)
        if not test (count $target) = 1
            return 1
        end
        cd (command ghq list --full-path --exact $target)
    else
        command ghq $argv
    end
end

