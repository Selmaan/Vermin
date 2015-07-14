function velocity = dualSensor_noRotation(vr)

velocity = [0 0 0 0];

% Access global mvData
global mvData
data = mvData;

offset = [1.685 1.685 1.685];

data = data - offset;

% Update velocity
alpha = -115; %-44
velocity(1) = -alpha*data(2);
velocity(2) = alpha*data(1);