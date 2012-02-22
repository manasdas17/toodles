function [chirp,waveform_distance] = chirp_generator(btproduct, start_frequency, bandwidth)
    end_time = btproduct/bandwidth;
    sample_rate = 5*bandwidth;
    samples = end_time*sample_rate;
    sample_step = end_time/samples;
    
    chirp_rate = bandwidth/end_time;
    
    time = [0:sample_step:end_time];
    chirp = %e^(-%i*2*%pi*(start_frequency.*time+chirp_rate.*time.*time));
    
    waveform_distance = end_time*3*10^8;
endfunction