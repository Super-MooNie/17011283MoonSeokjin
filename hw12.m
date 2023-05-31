$ git push -u origin +master
function R = solveRangeInPerifocalFrame(sa,ec,ta)
    %range in Perifocal frame
function Q = solveVelocityInPerifocalFrame(sa,ec,ta)
    %velocity in Perifocal frame

    sa = input("Semimajor Axis: ");
    ec = input("Eccentricity: ");
    ta = input("True Anomaly: ");
    % Input: 
    %   sa: semimajor axis
    %   ec: eccentricity
    %   ta: true anomaly
    % Output:
    %   R,Q: 3 X 1 matrix

    p = sa * (1 - ec^2);
    r = p / ( 1 + ec*cos(ta));
    mu = 3.986004418 * 10^14;
    % values

    R11 = r*cos(ta);
    R21 = r*sin(ta);
    R31 = 0;

    Q11 = ((mu/p)^0.5)*(-sin(ta));
    Q21 = ((mu/p)^0.5)*(ec+cos(ta));
    Q31 = 0;

    %calculate the results

    R = [R11 ;
         R21 ;
         R31];
    Q = [Q11 ;
         Q21 ;
         Q31];

    disp("rangeInPQW = ")
    disp(R) ;
    disp("velocityInPQW = ")
    disp(Q) ;
