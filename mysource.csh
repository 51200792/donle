##!/bin/csh 	
#source /home/u/nhanma/win_lin_dir.pl
#  alias sw '/home/u/nhanma/win_lin_dir.pl'
set work = /common/work/$user/
set number
umask 022	


#Set LSF environment
    source /common/lsftool/RBS/dotfiles/lsf_cshrc
#Set LSF configuration
    setenv LSF_PROJECT SV

  #---------------------------------set-----------------------------------------#
	set autolist
	set complete=enhance

	# ---- For prompt ---- #
	# set prompt = "%{\033[0;32m%}%n@%{\033[0;32m%}%m %{\033[1;31m%}: `pwd`\/ %{\033[0m%} \n>>> "
	#set prompt = "\n  o0o %{\033[0;31m%}%D/%W/%Y %{\033[0;34m%}%p%{\033[0m%} %{\033[0;32m%}[Dir: %/]%{\033[24;32;0m%} o0o\n[${USER}@$HOST]$ "
	set prompt = "%{\033[0;32m%}%n@%{\033[0;32m%}%m%{\033[0m%}: %{\033[1;33m%}%/\n%{\033[0m%}❱❱❱ "

	#31 : blue                                                                                                                                                                               
	#32 : green
	#33 : blue
	#34 : blue
	#35 : pink
	#36 : light blue
	#37 : grey
	#38 : red
	##set prompt = "%{\033[0;32m%}%n@%{\033[0;32m%}%m%{\033[0m%}: %{\033[1;31m%}%/\n%{\033[0m%} "
	######################################
	# -- END for prompt -- #
	set path=(/home/u/anhtran/bin /usr/bin /common/appl/64bit/bin /shsv/mhw2/tool/scr $path )
	set PWD = `pwd`
	set history = 1000000
  # ------------------------------- alias --------------------------------#
	alias w '/home/u/dongnguyen2/win_lin_dir.pl' 
	alias rf 'rm -rf'
	alias cf 'cp -rf'
	alias lr 'll -h'
	alias .. 'cd ..'
	alias . 'lr'
	alias cd 'chdir \!*;ll'
	alias cl 'clear'
	alias v 'vi'
	alias vd 'vimdiff'
	alias mul_tm '/home/u/dongnguyen2/multi_tm.csh' #run multiple tm at 1 script
	alias ex_win 'xterm -sb -rightbar -geometry 70x10 -title "TIILE"  > & /dev/null &'
	alias check_dedicate '/home/u/dongnguyen2/script/check_dedicate'
	alias check_result '/home/u/dongnguyen2/check_result'
	alias arm 'bs -M 2000 /shsv/CIS/User/dongnguyen2/07_compile/arm_compiler/arm_com.csh'
        alias com_arm 'bs -os "RHEL6 SLES10_0" -M 20 -m "sv" /shsv/mhw2/tool/ARM_Compiler/asmarm'
	alias runbg '/home/u/tambui/bin/run_bg.csh'
	alias shx 'compile.pl -cpu sh4a -endian little test.src'
	alias dj '/shsv/CIS/User/dongnguyen2/05_Tips/2_tip_submit_more_TM/task_monitor/run_monitor'
	alias get_link '/home/u/dongnguyen2/get_link.csh' 
	alias con_wave '/home/u/dongnguyen2/convert.csh'
	alias cr 'cd ; lr'
	alias sss 'screen'
	alias run_mapping '/shsv/CIS/User/tuanla/01_common_script/disk_mapping_linux_windows/run_mapping'
	alias w '/home/u/dongnguyen2/win_lin_dir.pl'
		########### unfinished ##############
	#alias link_linux 'sw `pwd`' 
	alias dc   'bs -source /common/appl/Env/Synopsys/syn_vH-2013.03-SP5 design_vision-xg'
#	alias dve13  'source /common/appl/Env/Synopsys/vcs-mx_vH-2013.06-4; bs -m sv -M 32000 -t 23:30 dve -full64 -nolog&'
#	alias dve14  'source /common/appl/Env/Synopsys/vcs-mx_vI-2014.03-3; bs -m HOSTGR_GUI -M 32000 -t 23:30 dve -full64 -nolog&'
	alias job '/home/u/dongnguyen2/script/job/jobs_management/display_jobs_switch.csh'
	alias me 'vi ~/.mycshrc'
	alias sj "bswitch AL_Vcs_s"
	alias ter "ps -ef | awk '{print $1}' | grep "4826" -c"
	alias runsyn /home/u/thuvo/Source_file/run_syn.csh
	alias manage_job '/shsv/CIS/User/dongnguyen2/05_Tips/2_tip_submit_more_TM/task_monitor/display_jobs_switch.csh'
	alias diff "vimdiff result.rtl.l result.god.l"
	alias l 'll'
	alias sb "/home/u/dongnguyen2/count_sideband.csh"
	alias syn "/home/u/dongnguyen2/count_syn.csh"
	alias e "exit"
	alias crontab_utility '/shsv/CIS/User/tuanla/01_common_script/crontab_utility/crontab_utility'
	alias tdview '/shsv/CIS/PRJ/rcarh2/02_design/16_Tester/05_Script/td_editor/scripts/bin/tdview.csh'
	# lg
	alias lg "ll | egrep"
	alias j sjobs -w
	alias ja bjobs -u all
	alias vfl '/home/u/dongnguyen2/verilog_fl'
        alias dve15 '/shsv/CIS/User/tuanla/01_common_script/open_dve/dve_15.csh'
        alias dve13 '/shsv/CIS/User/tuanla/01_common_script/open_dve/dve_13.csh'
        alias dve11 '/shsv/CIS/User/tuanla/01_common_script/open_dve/dve_11.csh'
        alias checktm '/shsv/CIS/User/dongnguyen2/05_Tips/2_tip_submit_more_TM/4_check_TM_finish.csh'
        alias get_timing_report '/shsv/CIS/User/dongnguyen2/05_Tips/get_info_timing_report.csh'
        alias syn_dong "/shsv/CIS/User/dongnguyen2/05_Tips/3_auto_synth/run_syn.csh"
	#alias checkPASS_ct 'csh /shsv/CIS/User/tuanla/M3N/03_Samples_Tips/checkPASS_ct'
#--------------------------------source-------------------------------------#
	source /common/appl/Renesas/shc/Linux/v9.01/shc.cshrc
	# source /common/lsftool/RBS/dotfiles/lsf_cshrc
	#setenv DISPLAY rvc_eod04.rvc.renesas.com:174
	#setenv SNPSLMD_LICENSE_FILE 27020@lictrain2
	#setenv LM_LICENSE_FILE 27020@lictrain2
	#setenv PATH /common/appl/gcc-3.2.3/bin/:$PATH
	#setenv PATH /common/appl/gcc-3.3.6/bin/:$PATH
	source /common/lsftool/RBS/dotfiles/lsf_cshrc
	setenv LSF_PROJECT SV
	setenv HOSTNAME $HOST
	


 ################################ Utility #################################
 #Submit verification

source /common/appl/Renesas/shc/Linux/v9.01/shc.cshrc

source /shsv/CIS/User/tuanla/01_common_script/.alias/.alias.screen
#*****************my alias************************
#source /shsv/CIS/User/dongnguyen2/common_var.csh
set auto list 
