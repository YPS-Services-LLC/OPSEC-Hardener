#!/usr/bin/env bash
banner(){ echo -e "\e[36mYPS OPSEC HARDENER 3.1\e[0m"; }
timestamp(){ date '+%F %T'; }
confirm(){ read -rp "$1 [y/N]: " a; [[ $a =~ ^[Yy]$ ]]; }
