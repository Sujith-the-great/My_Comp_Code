function z = imguesser_by_grad(X,y,units_nu_row_matrix,A)
  z = probable_by_grad(making_X(X),y,units_nu_row_matrix,making_X(A));
endfunction  





function y = making_X(x)
  nu_train = size(x,1);
  y = zeros(nu_train,7501);
  for i=1:nu_train
    y(i,:) = [1,reshape(imread(x{i,1}),1,7500)];
  endfor
endfunction
