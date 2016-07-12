# random-cowsay.sh
# pick a random cowsay(1) cowfile to output an adage from fortune(6)

cowfiles="moofasa telebears flaming-sheep moose three-eyes mutilated
          head-in hellokitty satanic jkh sheep skeleton udder small
          default sodomized www"

cowfile=$(echo "$cowfiles" | tr -s ' ' '\n' | random -f - | head -n 1)

if [ -x $(which fortune) -a -x $(which cowsay) ]; then
    fortune -s | cowsay -f "$cowfile"
fi
