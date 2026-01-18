pathprepend() {
  arg="$1"
  # Path prepend logic copied from .cargo/env
  case ":${PATH}:" in
    *:"$arg":*)
      ;;
    *)
      export PATH="$arg:$PATH"
      ;;
  esac
}

source $HOME/.cargo/env
pathprepend "$HOME/.local/bin"

export XDG_CONFIG_HOME=$HOME/.config
