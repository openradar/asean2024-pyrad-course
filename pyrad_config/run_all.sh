#!/bin/bash

cd 00_plot_vol
main_process_data.py --cfgpath ./ --starttime 20230801000000 --endtime 20230802000000 jma_plot_vol.txt
cd ..

cd 01_grid
main_process_data.py --cfgpath ./ --starttime 20230801000000 --endtime 20230802000000 jma_grid.txt
cd ..

cd 02_clutter_filter
main_process_data.py --cfgpath ./ --starttime 20210114101500 --endtime 20210114120000 mf_pam_mtcy_filter.txt
cd ..

cd 03_phidp_kdp
main_process_data.py --cfgpath ./ --starttime 20210114101500 --endtime 20210114120000 mf_pam_mtcy_kdp.txt
cd ..

cd 04_hydroclass
main_process_data.py --cfgpath ./ --starttime 20200516200500 --endtime 20200516220000 mf_odim_coll_hydro.txt
cd ..

cd 05_ml
main_process_data.py --cfgpath ./ --starttime 20200516200500 --endtime 20200516220000 mf_odim_coll_ml.txt
cd ..

cd 06_rr
main_process_data.py --cfgpath ./ --starttime 20200516200500 --endtime 20200516220000 mf_odim_coll_rr.txt
cd ..

cd 07_VAD
main_process_data.py --cfgpath ./ --starttime 20210114101500 --endtime 20210114120000 mf_pag_mtcy_doppler.txt
cd ..

cd 08_DDA
main_process_data.py --cfgpath ./ --starttime 20231127174000 --endtime 20231127175000 dda.txt
cd ..

cd 09_QVP
main_process_data.py --cfgpath ./ --starttime 20200516200500 --endtime 20200516220000 mf_odim_coll_qvp.txt
cd ..

cd 10_visibility
main_process_gecsx.py --cfgpath ./ visibility_norad.txt
main_process_gecsx.py --cfgpath ./ --starttime 20231127170000 --endtime 20231127180000 visibility.txt 
cd ..