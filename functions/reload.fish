function reload
    set -l paths $argv
    if not count $argv > /dev/null
        set paths 'config.fish'
    end
    set -l path (string join '/' $__fish_config_dir $paths)
    set_color 'cyan'
    echo -n 'Reloading '
    set_color 'green'
    echo $path
    source "$path"
end