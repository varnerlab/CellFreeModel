# Script to solve balance equations -
function Solve(TSTART,TSTOP,Ts)
# includes -
include("DataFile.jl");
include("SolveBalances.jl");

# Load the data_dictionary -
data_dictionary = DataFile(TSTART,TSTOP,Ts);

# Correct the parameters (if we have local parameter files around ...)
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

if (isfile("control_constant_array_best.dat"))
  control_constant_array = vec(abs(float(open(readdlm,"control_constant_array_best.dat"))));
  num_row = convert(Int64,length(control_constant_array)/2);
  data_dictionary["CONTROL_PARAMETER_ARRAY"]  = reshape(control_constant_array,num_row,2);
end

# Solve the balance equations -
Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);
end
