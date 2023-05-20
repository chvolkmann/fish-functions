function reload-fish -d "Reloads all .fish config files"
    set i 0
    for f in $__fish_config_dir/config.fish $__fish_config_dir/conf.d/*.fish $__fish_config_dir/functions/*.fish
        source $f
        set i (math $i+1)
    end
    echo Reloaded $i .fish files in $__fish_config_dir
end

alias fish-reload="reload-fish"

function reload-fish-dev -d "Reloads files from fish-functions in development"
    set repo_root (realpath (dirname (status --current-filename))/..)
    fisher update $repo_root

    # set i 0
    # for f in $repo_root/*/**/*.fish
    #     source $f
    #     set i (math $i+1)
    # end
end
