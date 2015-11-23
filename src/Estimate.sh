#!/bin/sh

loop_counter=0

while [ $loop_counter -lt 3 ]
do

  echo " ====== starting iteration $loop_counter of 10 ===================================="

  # execute rate constant search -
  julia SearchRC.jl

  echo " ===== completed rate constant search for iteration $loop_counter of 10 =========="

  # execute initial constant search -
  julia SearchIC.jl

  echo " ===== completed initial condition search for iteration $loop_counter of 10 ======"

  # execute saturation constant search -
  julia SearchK.jl

  echo " ===== completed saturation constant search for iteration $loop_counter of 10 ===="

  # execute control constant search -
  julia SearchControl.jl

  echo " ===== completed control constant search for iteration $loop_counter of 10 ===="

  # update the loop counter -
  loop_counter=`expr $loop_counter + 1`

done

# when we are done ...
exit 0
