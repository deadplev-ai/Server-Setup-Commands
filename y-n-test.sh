function yes_or_no {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac
    done
}

yes_or_no "Install Fail to ban? (Can cause issues with Mail)" && echo "Install #1"

yes_or_no "Install ProxyManager?" && echo "Install #2"
