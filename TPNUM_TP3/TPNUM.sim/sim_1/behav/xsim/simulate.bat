@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Dec 07 12:00:22 +0100 2021
REM SW Build 2615518 on Fri Aug  9 15:55:25 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim Cnt0toN_EN_tb_behav -key {Behavioral:sim_1:Functional:Cnt0toN_EN_tb} -tclbatch Cnt0toN_EN_tb.tcl -log simulate.log"
call xsim  Cnt0toN_EN_tb_behav -key {Behavioral:sim_1:Functional:Cnt0toN_EN_tb} -tclbatch Cnt0toN_EN_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
