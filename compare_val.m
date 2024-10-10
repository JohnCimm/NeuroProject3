function [new_array,new_real_array] = compare_val(vi, max,min,array,real_val_array)
reply = input('Rate the proceived intensity from 1 to 10?');
real_rating = 10-round(((vi-min)/(max-min))/0.1111)
if vi == 50 
    real_rating = 1
elseif vi == 2
    real_rating = 1
end
new_array = [array,reply];
new_real_array = [real_val_array,real_rating];

end
