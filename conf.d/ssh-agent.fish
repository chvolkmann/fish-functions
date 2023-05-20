set -l FG "\033[0;32m"
set -ll HL "\033[0;34m"
set -l RESET "\033[0m"

set -l DEBUG 0

if status --is-interactive

    # start ssh-agent if not already running
    if not test $SSH_AGENT_PID
        eval (ssh-agent -c) 2>/dev/null
    end
    test $DEBUG && echo -e $FG"ssh-agent: running with pid $SSH_AGENT_PID"$RESET

    # register ssh keys
    for idfile in (list-ssh-keys)
        ssh-add $idfile 2>/dev/null
    end

    # print output
    set keys_loaded (ssh-add -L | wc -l)
    test $DEBUG && echo -e $FG"ssh-agent: $keys_loaded keys loaded"$RESET
end
