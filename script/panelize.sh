#!/bin/bash

script_dir=`dirname "$(realpath $0)"`
rev=$1

input_dir=$script_dir/../board/$1/
output_dir=$script_dir/../panel/$1/

mkdir -p $output_dir

kikit panelize     \
    --layout 'grid; rows: 2; cols: 4; space: 2mm' \
    --tabs 'fixed; width: 3mm' \
    --cuts 'mousebites; drill: 0.5mm; spacing: 0.8mm; offset: 0mm; prolong: 0.5mm' \
    --post 'millradius: 1mm; origin: ;' \
    --framing 'railstb; width: 5mm; space: 2mm;' \
    --tooling '3hole; hoffset: 2.5mm; voffset: 2.5mm; size: 2mm' \
    --fiducials '3fid; hoffset: 5mm; voffset: 3.85mm; coppersize: 1mm; opening: 1mm;' \
    --text 'simple; text: STM32G030Fx rev1; anchor: mt; voffset: 2.5mm; hjustify: center; vjustify: center;' \
    $input_dir/board.kicad_pcb \
    $output_dir/board_panel.kicad_pcb

