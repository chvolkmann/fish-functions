function fish-reload -d "Reloads all .fish config files"
    set i 0
    for f in $__fish_config_dir/config.fish $__fish_config_dir/conf.d/*.fish $__fish_config_dir/functions/*.fish
        source $f
        set i (math $i+1)
    end
    echo Reloaded $i .fish files in $__fish_config_dir
end
