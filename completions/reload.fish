function _print_fish_functions
    # Prints all filenames of ~/.config/fish/functions with the .fish omitted
    set -l files (find "$__fish_config_dir"/functions -type f -name "*.fish")
    set -l funcs
    for file in $files
        echo (string split "." (basename "$file"))[1]
    end
end

complete --command reload --exclusive --arguments "(_autocomplete_reload)"