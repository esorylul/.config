# =======================
# Environment
# =======================

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings
set -Ux EDITOR nvim
set PATH ~/.config/dwm_scripts/ $PATH
set PATH ~/go/bin/ $PATH

# =======================
# Dracula Theme
# =======================
set -U fish_color_autosuggestion BD93F9
set -U fish_color_cancel \x2dr
set -U fish_color_command F8F8F2
set -U fish_color_comment 6272A4
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_end 50FA7B
set -U fish_color_error FFB86C
set -U fish_color_escape 00a6b2
set -U fish_color_history_current \x2d\x2dbold
set -U fish_color_host normal
set -U fish_color_host_remote yellow
set -U fish_color_match \x2d\x2dbackground\x3dbrblue
set -U fish_color_normal normal
set -U fish_color_operator 00a6b2
set -U fish_color_param FF79C6
set -U fish_color_quote F1FA8C
set -U fish_color_redirection 8BE9FD
set -U fish_color_search_match bryellow\x1e\x2d\x2dbackground\x3dbrblack
set -U fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -U fish_color_status red
set -U fish_color_user brgreen
set -U fish_color_valid_path \x2d\x2dunderline
set -U fish_greeting \x1d
set -U fish_key_bindings fish_vi_key_bindings
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D\x1eyellow
set -U fish_pager_color_prefix white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -U fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan
set -U fish_user_paths /home/lulyrose/\x2efzf/bin

# =======================
# Nord Theme Prompt
# =======================

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus

    if not set -q __fish_git_prompt_show_informative_status
        set -g __fish_git_prompt_show_informative_status 1
    end
    if not set -q __fish_git_prompt_hide_untrackedfiles
        set -g __fish_git_prompt_hide_untrackedfiles 1
    end
    if not set -q __fish_git_prompt_color_branch
        set -g __fish_git_prompt_color_branch magenta --bold
    end
    if not set -q __fish_git_prompt_showupstream
        set -g __fish_git_prompt_showupstream "informative"
    end
    if not set -q __fish_git_prompt_char_upstream_ahead
        set -g __fish_git_prompt_char_upstream_ahead "↑"
    end
    if not set -q __fish_git_prompt_char_upstream_behind
        set -g __fish_git_prompt_char_upstream_behind "↓"
    end
    if not set -q __fish_git_prompt_char_upstream_prefix
        set -g __fish_git_prompt_char_upstream_prefix ""
    end
    if not set -q __fish_git_prompt_char_stagedstate
        set -g __fish_git_prompt_char_stagedstate "●"
    end
    if not set -q __fish_git_prompt_char_dirtystate
        set -g __fish_git_prompt_char_dirtystate "+"
    end
    if not set -q __fish_git_prompt_char_untrackedfiles
        set -g __fish_git_prompt_char_untrackedfiles "…"
    end
    if not set -q __fish_git_prompt_char_invalidstate
        set -g __fish_git_prompt_char_invalidstate "x"
    end
    if not set -q __fish_git_prompt_char_cleanstate
        set -g __fish_git_prompt_char_cleanstate "Y"
    end
    if not set -q __fish_git_prompt_color_dirtystate
        set -g __fish_git_prompt_color_dirtystate blue
    end
    if not set -q __fish_git_prompt_color_stagedstate
        set -g __fish_git_prompt_color_stagedstate yellow
    end
    if not set -q __fish_git_prompt_color_invalidstate
        set -g __fish_git_prompt_color_invalidstate red
    end
    if not set -q __fish_git_prompt_color_untrackedfiles
        set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
    end
    if not set -q __fish_git_prompt_color_cleanstate
        set -g __fish_git_prompt_color_cleanstate green --bold
    end

    set -l color_cwd
    set -l prefix
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix (set_color red)'#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix (set_color '#bd93f9' --bold)'$'
    end

    # PWD
    set_color $color_cwd
    echo -n (prompt_pwd)
    set_color normal

    printf '%s ' (fish_vcs_prompt)

    set -l pipestatus_string (__fish_print_pipestatus "[" "] " "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)
    echo -n $pipestatus_string
    echo -n "$suffix "
		echo -n (set_color '#8be9fd')'❯'(set_color green )'❯'(set_color '#bd93f9')'❯ '
    set_color normal
end

# =======================
# Alias
# =======================

alias ra ranger
alias lg lazygit
alias s "neofetch --ascii_distro bsd"
alias v nvim
alias c "ssh root@121.196.37.232"
function ss
    export ALL_PROXY=socks5://127.0.0.1:1089
end
function ssr
    export ALL_PROXY=http://127.0.0.1:8889 && export ALL_PROXY=https://127.0.0.1:8889
end
