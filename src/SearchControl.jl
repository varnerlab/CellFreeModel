# Model files -
include("DataFile.jl")
include("SolveBalances.jl")
include("Objective.jl")

# Optimization library -
using Optim

# Load the data dictionary to get initial parameter guesses et al
TSTART = 0.0;
TSTOP = 3.0;
Ts = 0.1;
data_dictionary = DataFile(TSTART,TSTOP,Ts);

# if have a local initial_condition_best file, load it - otherwise use the defaults
if (isfile("control_constant_array_best.dat"))
  control_constant_array = vec(abs(float(open(readdlm,"control_constant_array_best.dat"))));

  # Do we have rate constants?
  if (isfile("rate_constant_best.dat"))
    rate_constant_vector  = vec(abs(float(open(readdlm,"rate_constant_best.dat"))));
    data_dictionary["RATE_CONSTANT_ARRAY"] = rate_constant_vector;
  end

  # do we have the best IC's?
  if (isfile("initial_condition_best.dat"))
    initial_condition_array = vec(abs(float(open(readdlm,"initial_condition_best.dat"))));
    data_dictionary["INITIAL_CONDITION_ARRAY"] = initial_condition_array;
  end

  # Do we have saturation constants?
  if (isfile("saturation_constant_array_best.dat"))
    saturation_constant_array = vec(abs(float(open(readdlm,"saturation_constant_array_best.dat"))));
    tmp = data_dictionary["SATURATION_CONSTANT_ARRAY"];
    idx = find(K->(K>0),tmp);
    tmp[idx] = saturation_constant_array;
    data_dictionary["SATURATION_CONSTANT_ARRAY"]  = tmp;
  end

else
  # Load best parameters from disk -
  control_constant_array = vec(data_dictionary["CONTROL_PARAMETER_ARRAY"]);
end

# Setup optmization calculation -
objective_function(parameter_guess) = ObjectiveControl(parameter_guess,data_dictionary);
result = optimize(objective_function, control_constant_array, method = :simulated_annealing, iterations = 200,show_trace = true);

# Write the min vector to disk -
min_parameters = result.minimum;
writedlm("control_constant_array_best.dat",abs(min_parameters));
