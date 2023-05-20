function list-ssh-keys -d "List all private keys in ~/.ssh"
    find ~/.ssh -type f \( -name "id_*" -o -path "*ids/*" \) -a -not -name "*.pub" -print
end
