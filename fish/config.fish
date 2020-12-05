# =======================
# Environment
# =======================

set -U fish_greeting
set -U fish_key_bindings fish_vi_key_bindings
set -Ux EDITOR nvim
set PATH ~/.config/dwm_scripts/ $PATH
set PATH ~/go/bin/ $PATH

# =======================
# Nord Theme
# =======================

set -U fish_color_autosuggestion 4c566a
set -U fish_color_cancel \x2dr
set -U fish_color_command 81a1c1
set -U fish_color_comment 434c5e
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_end 88c0d0
set -U fish_color_error ebcb8b
set -U fish_color_escape 00a6b2
set -U fish_color_history_current \x2d\x2dbold
set -U fish_color_host normal
set -U fish_color_host_remote yellow
set -U fish_color_match \x2d\x2dbackground\x3dbrblue
set -U fish_color_normal normal
set -U fish_color_operator 00a6b2
set -U fish_color_param eceff4
set -U fish_color_quote a3be8c
set -U fish_color_redirection b48ead
set -U fish_color_search_match bryellow\x1e\x2d\x2dbackground\x3dbrblack
set -U fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -U fish_color_status red
set -U fish_color_user brgreen
set -U fish_color_valid_path \x2d\x2dunderline

# =======================
# Nord Theme Prompt
# =======================

function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color normal
end

# =======================
# Alias
# =======================

function ra; ranger; end
function lg; lazygit; end
function s; neofetch; end
function v; nvim; end

function ss
    export ALL_PROXY=socks5://127.0.0.1:1089
end
function ssr
    export ALL_PROXY=http://127.0.0.1:8889 && export ALL_PROXY=https://127.0.0.1:8889
end
function c
				ssh root@121.196.37.232			
end
