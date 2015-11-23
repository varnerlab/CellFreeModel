function ObjectiveControl(parameter_vector,data_dictionary)

  # function variables -
  TSTART = 0.0;
  TSTOP = 3.0;
  Ts = 0.1;

  # Update the parameters in the DF -
  tmp = abs(parameter_vector);
  tmp_array = reshape(tmp,16,2);
  idx = find(x->(x>6),tmp_array[:,2]);
  tmp_array[idx,2] = 6;
  data_dictionary["CONTROL_PARAMETER_ARRAY"]  = tmp_array;

  # Solve the model equations -
  (T,X) = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);

  number_of_timesteps = length(T);

  # Get the experimental data from the data_dictionary -
  experimental_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"];

  # error_value -
  error_vector = Float64[]
  for (key,experiment::Experiment) in experimental_data_dictionary
    if key=="M_glc_D_c"||key=="CAT"
    # Get the index and data from the experiment -
    species_index = experiment.model_index;
    measurement_vector = experiment.interpolated_measurement_array;

    # Get the simulated species vector -
    simulation_vector = X[:,species_index];

    # Compute the error -
    error = (1/number_of_timesteps)*(1/norm(measurement_vector))*sum(((measurement_vector - simulation_vector)./mean(measurement_vector)).^2);
    push!(error_vector,error);
    end
  end

  # compute the total error -
  total_error = sum(error_vector);

  #@show total_error

  # return the error -
  return total_error;
end


function ObjectiveKSAT(parameter_vector,data_dictionary)

  # function variables -
  TSTART = 0.0;
  TSTOP = 3.0;
  Ts = 0.1;

  # Update the parameters in the DF -
  tmp = data_dictionary["SATURATION_CONSTANT_ARRAY"];
  idx = find(K->(K>0),abs(tmp));
  tmp[idx] = abs(parameter_vector);
  data_dictionary["SATURATION_CONSTANT_ARRAY"]  = tmp;

  # Solve the model equations -
  (T,X) = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);

  number_of_timesteps = length(T);

  # Get the experimental data from the data_dictionary -
  experimental_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"];

  # error_value -
  error_vector = Float64[]
  for (key,experiment::Experiment) in experimental_data_dictionary
    if key=="M_glc_D_c"||key=="CAT"
    # Get the index and data from the experiment -
    species_index = experiment.model_index;
    measurement_vector = experiment.interpolated_measurement_array;

    # Get the simulated species vector -
    simulation_vector = X[:,species_index];

    # Compute the error -
    error = (1/number_of_timesteps)*(1/norm(measurement_vector))*sum(((measurement_vector - simulation_vector)./mean(measurement_vector)).^2);
    push!(error_vector,error);
    end
  end

  # compute the total error -
  total_error = sum(error_vector);

  #@show total_error

  # return the error -
  return total_error;
end


function ObjectiveIC(parameter_vector,data_dictionary)

  # function variables -
  TSTART = 0.0;
  TSTOP = 3.0;
  Ts = 0.1;

  # Update the parameters in the DF -
  idx = find(x->(x<1e-3),parameter_vector);
  parameter_vector[idx] = 1e-3;

  # update the ICs w/the data -
  # Get the experimental data from the data_dictionary -
  experimental_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"];
  for (key,experiment::Experiment) in experimental_data_dictionary
    model_index = experiment.model_index;
    data = experiment.raw_measurment_array;
    parameter_vector[model_index] = data[1,2];
  end
  data_dictionary["INITIAL_CONDITION_ARRAY"] = parameter_vector;

  # Solve the model equations -
  (T,X) = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);

  number_of_timesteps = length(T);



  # error_value -
  error_vector = Float64[]
  for (key,experiment::Experiment) in experimental_data_dictionary
    if key=="M_glc_D_c"||key=="CAT"
    # Get the index and data from the experiment -
    species_index = experiment.model_index;
    measurement_vector = experiment.interpolated_measurement_array;

    # Get the simulated species vector -
    simulation_vector = X[:,species_index];


    # Compute the error -
    error = (1/number_of_timesteps)*(1/norm(measurement_vector))*sum(((measurement_vector - simulation_vector)./mean(measurement_vector)).^2);
    push!(error_vector,error);
    end
  end

  # compute the total error -
  total_error = sum(error_vector);

  #@show total_error

  # return the error -
  return total_error;
end


function Objective(parameter_vector,data_dictionary)

  # function variables -
  TSTART = 0.0;
  TSTOP = 3.0;
  Ts = 0.1;

  # Update the parameters in the DF -
  data_dictionary["RATE_CONSTANT_ARRAY"] = abs(parameter_vector);

  # Solve the model equations -
  (T,X) = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);

  number_of_timesteps = length(T);

  # Get the experimental data from the data_dictionary -
  experimental_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"];

  # error_value -
  error_vector = Float64[]
  for (key,experiment::Experiment) in experimental_data_dictionary
    if key=="M_glc_D_c"||key=="CAT"
    # Get the index and data from the experiment -
    species_index = experiment.model_index;
    measurement_vector = experiment.interpolated_measurement_array;

    # Get the simulated species vector -
    simulation_vector = X[:,species_index];

    # Compute the error -
    error = (1/number_of_timesteps)*(1/norm(measurement_vector))*sum(((measurement_vector - simulation_vector)./mean(measurement_vector)).^2);
    push!(error_vector,error);
    end
  end

  # compute the total error -
  total_error = sum(error_vector);

  #@show total_error

  # return the error -
  return total_error;
end
