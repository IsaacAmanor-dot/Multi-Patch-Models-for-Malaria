pkg load symbolic

% Declare symbolic variables
syms lambda
syms J22 J21 J25 J27 J33 J44 J62 J63  J66 J65 sigma_hi gamma_hi sigma_vi mu_vi

% Define the 5x5 symbolic matrix J_star_EE
J_star_EE = [
    J22,   -J21,    -J21,    J25,    J27;
    sigma_hi, J33,   0,       0,      0;
    0,      gamma_hi, J44,    0,      0;
    J62,    J63,    J62,      J66,   -J65;
    0,      0,      0,       sigma_vi, -mu_vi
];

% Identity matrix
I = eye(5);

% Compute characteristic matrix: (J_star_EE - lambda * I)
char_matrix = J_star_EE - lambda * I;

% Compute characteristic polynomial: determinant of char_matrix
char_poly = det(char_matrix);

% Simplify polynomial
char_poly = simplify(char_poly);

disp('Characteristic polynomial in terms of lambda:')
disp(char_poly)

% Extract coefficients and powers of lambda
[coeffs_array, powers_array] = coeffs(char_poly, lambda);

% Find index where power is 5
idx_deg4 = find(powers_array == 4);

if isempty(idx_deg4)
    disp('No degree 4 term found in the polynomial.')
else
    % Extract degree 5 term coefficient
    coeff_deg4 = coeffs_array(idx_deg4);

    % Construct the degree 5 term: coeff * lambda^5
    term_deg4 = coeff_deg4 * lambda^4;

    disp('Degree 5 term of the characteristic polynomial:')
    disp(simplify(term_deg4))
end

