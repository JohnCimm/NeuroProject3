function [new_array,new_real_array] = compare_val(vi, vprev,array,real_val_array)
reply = input('Has the intensity increased or decreased?? Press 1 for higher intensity or 0 for lower intensity:');
comp = (vi>= vprev);

new_array = [array,reply];
new_real_array = [real_val_array,comp];

end
