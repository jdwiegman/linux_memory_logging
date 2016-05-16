set terminal wxt size 1920,1080
set key outside;
set key right center;
set key width 1;
set key samplen 2 font ",8";
list = system('ls $filepath/*.log')
plot for [file in list] file title system('basename '.file.' | cut -f 1 -d "."')
