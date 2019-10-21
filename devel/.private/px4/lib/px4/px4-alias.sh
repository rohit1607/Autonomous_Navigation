#!/bin/sh

# File is auto-generated by cmake compilation, do not edit.

# Map the NuttX-style variable definition 'set <var> <value>' to something that
# bash and alternatives understand
# define _set first because sh (POSIX shell) does not like overwriting set directly
_set() {
	eval $1=$2
}
alias set=_set
# alternative method with an alias:
# alias set='f(){ set -- "$1=$2"; eval "$1"; unset -f f; }; eval f'

# Execute another shell script.
# $1: Path to the script, (optionally starts with /, to match with the NuttX
# scripts)
sh() {
	script="$1"
	case "$script" in
	"/"*)
		script="$script"
		;;
	*)
		script="/$script"
		;;
	esac
	. "$(pwd)$script"
}

# Don't stop on errors.
#set -e

# Arguments passed to this script:
# $1: optional instance id
px4_instance=0
[ -n "$1" ] && px4_instance=$1

alias cdev_test='px4-cdev_test --instance $px4_instance'
alias controllib_test='px4-controllib_test --instance $px4_instance'
alias rc_tests='px4-rc_tests --instance $px4_instance'
alias wqueue_test='px4-wqueue_test --instance $px4_instance'
alias uorb='px4-uorb --instance $px4_instance'
alias uorb_tests='px4-uorb_tests --instance $px4_instance'
alias camera_trigger='px4-camera_trigger --instance $px4_instance'
alias gps='px4-gps --instance $px4_instance'
alias pwm_out_sim='px4-pwm_out_sim --instance $px4_instance'
alias tone_alarm='px4-tone_alarm --instance $px4_instance'
alias attitude_estimator_q='px4-attitude_estimator_q --instance $px4_instance'
alias camera_feedback='px4-camera_feedback --instance $px4_instance'
alias commander='px4-commander --instance $px4_instance'
alias commander_tests='px4-commander_tests --instance $px4_instance'
alias dataman='px4-dataman --instance $px4_instance'
alias ekf2='px4-ekf2 --instance $px4_instance'
alias send_event='px4-send_event --instance $px4_instance'
alias fw_att_control='px4-fw_att_control --instance $px4_instance'
alias fw_pos_control_l1='px4-fw_pos_control_l1 --instance $px4_instance'
alias rover_pos_control='px4-rover_pos_control --instance $px4_instance'
alias land_detector='px4-land_detector --instance $px4_instance'
alias landing_target_estimator='px4-landing_target_estimator --instance $px4_instance'
alias load_mon='px4-load_mon --instance $px4_instance'
alias local_position_estimator='px4-local_position_estimator --instance $px4_instance'
alias logger='px4-logger --instance $px4_instance'
alias mavlink='px4-mavlink --instance $px4_instance'
alias mavlink_tests='px4-mavlink_tests --instance $px4_instance'
alias mc_att_control='px4-mc_att_control --instance $px4_instance'
alias mc_pos_control='px4-mc_pos_control --instance $px4_instance'
alias navigator='px4-navigator --instance $px4_instance'
alias replay='px4-replay --instance $px4_instance'
alias sensors='px4-sensors --instance $px4_instance'
alias simulator='px4-simulator --instance $px4_instance'
alias gpssim='px4-gpssim --instance $px4_instance'
alias vmount='px4-vmount --instance $px4_instance'
alias vtol_att_control='px4-vtol_att_control --instance $px4_instance'
alias airspeed_selector='px4-airspeed_selector --instance $px4_instance'
alias dyn='px4-dyn --instance $px4_instance'
alias esc_calib='px4-esc_calib --instance $px4_instance'
alias led_control='px4-led_control --instance $px4_instance'
alias mixer='px4-mixer --instance $px4_instance'
alias motor_ramp='px4-motor_ramp --instance $px4_instance'
alias param='px4-param --instance $px4_instance'
alias perf='px4-perf --instance $px4_instance'
alias pwm='px4-pwm --instance $px4_instance'
alias reboot='px4-reboot --instance $px4_instance'
alias sd_bench='px4-sd_bench --instance $px4_instance'
alias shutdown='px4-shutdown --instance $px4_instance'
alias tests='px4-tests --instance $px4_instance'
alias hrt_test='px4-hrt_test --instance $px4_instance'
alias top='px4-top --instance $px4_instance'
alias listener='px4-listener --instance $px4_instance'
alias tune_control='px4-tune_control --instance $px4_instance'
alias ver='px4-ver --instance $px4_instance'
alias work_queue='px4-work_queue --instance $px4_instance'
alias bottle_drop='px4-bottle_drop --instance $px4_instance'
alias ex_fixedwing_control='px4-ex_fixedwing_control --instance $px4_instance'
alias hello='px4-hello --instance $px4_instance'
alias px4_mavlink_debug='px4-px4_mavlink_debug --instance $px4_instance'
alias px4_simple_app='px4-px4_simple_app --instance $px4_instance'
alias rover_steering_control='px4-rover_steering_control --instance $px4_instance'

