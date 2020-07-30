function[J,grad]=linearRegCostFunction(X,y,theta,lambda)
    m=length(y);
    J=0;
    grad=zeros(size(theta));
    h=X*theta;
    s=sum((h-y).^2);
    J=1/(2*m) * (h - y)' * (h - y) +(lambda/(2*m)) * (theta(2:length(theta)))' * theta(2:length(theta));

    theta_new=theta;
    theta_new(1)=0;
    grad=((1/m)*(h-y)'*X)+lambda/m*theta_new';
    grad=grad(:);

    
end