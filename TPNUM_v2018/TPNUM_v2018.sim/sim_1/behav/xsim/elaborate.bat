@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Nov 16 19:48:51 +0100 2021
REM SW Build 2258646 on Thu Jun 14 20:03:12 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 7f1949e99e7b4c1bb69a33669139c802 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot MUX4x4v1x4_tb_behav xil_defaultlib.MUX4x4v1x4_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
