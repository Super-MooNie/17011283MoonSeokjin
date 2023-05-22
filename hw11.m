function R = PQW2ECI(arg_prg, inc_angle, RAAN)
    % Perifocal frame to ECI 

    arg_prg = input("Argument of periapsis: ");
    inc_angle = input("Inclination angle: ");
    RAAN = input("Right Ascension of the Ascending Node: ");
    % Input:
    %   arg_prg: Argument of periapsis
    %   inc_angle: Inclination angle
    %   RAAN: Right Ascension of the Ascending Node
    %   All angles be rad
    % Output:
    %   R: Rotation matrix (3x3)


    % Trigonometric values
    cos_A = cos(arg_prg);
    sin_A = sin(arg_prg);
    cos_B = cos(inc_angle);
    sin_B = sin(inc_angle);
    cos_C = cos(RAAN);
    sin_C = sin(RAAN);

    % Rotation matrix components
    R11 = cos_C * cos_A - sin_C * sin_A * cos_B;
    R12 = -cos_C * sin_A - sin_C * cos_A * cos_B;
    R13 = sin_C * sin_B;
    R21 = sin_C * cos_A + cos_C * sin_A * cos_B;
    R22 = -sin_C * sin_A + cos_C * cos_A * cos_B;
    R23 = -cos_C * sin_B;
    R31 = sin_A * sin_B;
    R32 = cos_A * sin_B;
    R33 = cos_B;

    % Calculate the result
    
    R = [R11, R12, R13;
         R21, R22, R23;
         R31, R32, R33];
    disp("Rotation matrix:");
    disp(R);
end