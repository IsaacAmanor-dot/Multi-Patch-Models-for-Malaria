pkg load symbolic

% Declare symbolic variables
syms LA mu_hi sigma_hi gamma_hi mu_vi
syms J21 J22 J25 J27 J33 J44 J61 J62 J63 J65 sigma_vi

% Initialize a 7x7 symbolic zero matrix
J_EE = sym(zeros(7,7));

% Fill in the matrix entries
J_EE(1,1) = -mu_hi - LA;
J_EE(1,2) = 0;
J_EE(1,3) = 0;
J_EE(1,4) = 0;
J_EE(1,5) = 0;
J_EE(1,6) = 0;
J_EE(1,7) = 0;

J_EE(2,1) = J21;
J_EE(2,2) = J22 - LA;
J_EE(2,3) = -J21;
J_EE(2,4) = -J21;
J_EE(2,5) = J25;
J_EE(2,6) = J25;
J_EE(2,7) = J27;

J_EE(3,2) = sigma_hi;
J_EE(3,3) = J33 - LA;

J_EE(4,3) = gamma_hi;
J_EE(4,4) = J44 - LA;

J_EE(5,5) = -mu_vi;

J_EE(6,1) = J61;
J_EE(6,2) = J62;
J_EE(6,4) = J63;
J_EE(6,5) = J62;
J_EE(6,6) = J66 - LA;
J_EE(6,7) = -J65;

J_EE(7,6) = sigma_vi;
J_EE(7,7) = -mu_vi - LA;

% Calculate the determinant (characteristic polynomial)
char_poly = det(J_EE);

% Simplify the polynomial (optional)
char_poly = simplify(char_poly);

disp('Characteristic polynomial in terms of LA:')
disp(char_poly)

