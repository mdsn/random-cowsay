# random-cowsay.sh
# pick a random cowsay(1) cowfile to output an adage from fortune(6)

if [ -x $(which fortune) -a -x $(which cowsay) ]; then
    fortune all | cowsay -f $(
        cowsay -l   |
        tail -n +2  |
        tr ' ' '\n' |
        random -f - |
        head -n 1  );
fi
