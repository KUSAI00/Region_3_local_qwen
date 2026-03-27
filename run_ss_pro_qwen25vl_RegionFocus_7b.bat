@echo off
REM Activate your conda environment (edit this line!)
call conda activate p2_3_11

set model=qwen25vl_RegionFocus_7b

python eval_screenspot_pro_RegionFocus.py ^
    --model_type %model% ^
    --screenspot_imgs "./images" ^
    --screenspot_test "./annotations" ^
    --task "all" ^
    --language "en" ^
    --gt_type "positive" ^
    --log_path "./results/%model%.json" ^
    --checkpoint_path "./results_mid/%model%.json" ^
    --inst_style "instruction"

echo Finished running model: %model%
pause
