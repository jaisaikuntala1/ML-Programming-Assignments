function [J,grad] = costFunction(theta,X,y) 
grad=zeros(size(theta));
J=0;
m=length(y);
z=X*theta;
prediction=sigmoid(z);
first=log(prediction);
second=log(1-prediction);

J=-(1/m)*((y'*first)+((1-y)'*second));
grad=((1/m)*(prediction-y)'*X)';



end