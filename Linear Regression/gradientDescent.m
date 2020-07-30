function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
x2=X(:,2);
init=computeCost(X,y,theta);
tita = [0;0];


for iter = 1:num_iters,
    h=X*theta;
    p=h-y;
    q=x2'*p;
    tita(1)=theta(1)-(alpha/m)*sum(p);
    tita(2)=theta(2)-(alpha/m)*q;
    
    sec = computeCost(X,y,tita);
    if(sec>init)
        break;
    else
        init=sec;
        theta(1)=tita(1);
        theta(2)=tita(2);
        
    end

    

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
