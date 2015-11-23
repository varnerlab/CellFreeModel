include("ExperimentDataDictionary.jl")

if (isfile("initial_condition_best.dat"))
    initial_condition_array = vec(abs(float(open(readdlm,"initial_condition_best.dat"))));
end

experimental_data_dictionary = ExperimentDataDictionary(0,3,.5)
for (key,experiment::Experiment) in experimental_data_dictionary
    model_index = experiment.model_index;
    data = experiment.raw_measurement_array;
    initial_condition_array[model_index] = data[1,2]
end

writedlm("initial_condition_best.dat",initial_condition_array)
