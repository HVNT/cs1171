function [ outAngles ] = airfoilz( atkAngles, liftCoeffs, angles)
delta = min(atkAngles):max(atkAngles);
disp(delta);
coeff = polyfit(atkAngles, liftCoeffs, 2);
lift = polyval(coeff, delta);

figure
plot(delta, lift, 'k');
hold on
plot(atkAngles, liftCoeffs, 'b*');
hold off

outAngles = round(interp1(delta, lift, angles, 'spline'), 1000);
end

