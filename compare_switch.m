function [new_user,new_real] = compare_switch(n,a,a_prev,f,f_prev,v_user,v_real)

switch n
    case 1
        [new_user,new_real]= compare_val(a,a_prev,v_user,v_real);
        
    case 2
        [new_user,new_real]= compare_val(f,f_prev,v_user,v_real);
    case 3
        [new_user,new_real]= compare_val(a,a_prev,v_user,v_real);


end

end