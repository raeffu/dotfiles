if [[ "$ENABLE_CORRECTION" == "true" ]]; then
  alias cp='nocorrect cp'
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias sudo='nocorrect sudo'
  alias su='nocorrect su'
  alias c='nocorrect c'

  setopt correct_all
fi
