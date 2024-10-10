function [new_user,new_real] = compare_switch(b,a,f,v_user,v_real)

switch b
    case 1
        [new_user,new_real]= compare_val(a,2,6,v_user,v_real);
        
    case 2
        [new_user,new_real]= compare_val(f,50,100,v_user,v_real);
    case 3
        [new_user,new_real]= compare_val(a,2,6,v_user,v_real);


end

end