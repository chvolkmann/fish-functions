function reload
    set -l paths $argv
    if not count $argv > /dev/null
        set paths 'config.fish'
    end
    
    set -l path (string join '/' $__fish_config_dir $paths)

    if not string match '*.fish' (basename "$path") > /dev/null
        set path "$path.fish"
    end

    set -l dir 'functions'
    set -l dirpath (dirname "$path")/"$dir"/(basename $path)
    if not test -f "$path"; and test -f "$dirpath"
        set path "$dirpath"
    end


    set_color 'cyan'
    echo -n 'source '
    set_color 'green'
    echo $path
    source "$path"
end