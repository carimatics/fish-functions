function fish_prompt;
    set -l exit_code $status;
    set -l CMD_DURATION "$CMD_DURATION$cmd_duration";
    set -l starship_duration (math --scale=0 "$CMD_DURATION / 1000");
    starship prompt --status=$exit_code --cmd-duration=$starship_duration --jobs=(count (jobs -p));
end;

