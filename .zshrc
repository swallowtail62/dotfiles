source $HOME/.zplug.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## Load Alias
source $HOME/.aliases

# ------------------------------
# asdf Settings
# ------------------------------
if [ -f "/usr/local/opt/asdf/asdf.sh" ]; then . "/usr/local/opt/asdf/asdf.sh"; fi

# ------------------------------
# Cargo (Rust) Settings
# ------------------------------
if [ -f "$HOME/.cargo/env" ]; then . "$HOME/.cargo/env"; fi

# ------------------------------
# GCP Settings
# ------------------------------
## The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

## The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# ------------------------------
# Kubectl Settings
# ------------------------------
source <(kubectl completion zsh)

# ------------------------------
# Istioctl Settings (managed by asdf)
# ------------------------------
if which asdf >/dev/null; then
  source `asdf where istioctl`/tools/_istioctl
fi
