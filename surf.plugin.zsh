#compdef surf

_surf_get_command_list () {
    $_comp_command1 --no-ansi 2>/dev/null | sed "1,/Available commands/d" | awk '/^[ \t]*[a-z]+/ { print $1 }'
}

_surf_get_required_list () {
    $_comp_command1 show --no-ansi 2>/dev/null | sed "1,/Deployments in/d" | awk '/^[ \t]*[a-z]+/ { print $1 }'
}
_surf () {
  local curcontext="$curcontext" state line
  typeset -A opt_args
  _arguments \
    '1: :->command' \
    '2: :->args' \
    '*: :->opts'

  case $state in
    command)
      compadd $(_surf_get_command_list)
      ;;
    args)
      case $words[2] in
        deploy|simulate|describe)
          compadd $(_surf_get_required_list)
          ;;
      esac
      ;;
    *)
      compadd ''
      ;;
  esac
}

compdef _surf surf
compdef _surf surf.phar