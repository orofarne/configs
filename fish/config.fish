set -x PATH $PATH "$HOME/bin"

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

function fish_prompt --description 'Write out the prompt'
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname -s)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	if not set -q __fish_prompt_cwd
		set -g __fish_prompt_cwd (set_color $fish_color_cwd)
	end

	echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) (__fish_git_prompt) "$__fish_prompt_normal" '> '
end

function fish_right_prompt --description 'Write out the right prompt'
	set prev_cmd_status $status
	if [ $prev_cmd_status != 0 ]
		set_color red
		echo -n -s "[$prev_cmd_status]"
		set_color normal
	end
end
