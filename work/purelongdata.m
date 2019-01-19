function purelongdata()
r35 = load("Round-6-SI\B1654run35.mat");
r36 = load("Round-6-SI\B1654run36.mat");

DR = combine(r35, r36);

%get the parts with low slip angle
pos = abs(DR.SA) < 0.1;

fields = fieldnames(DR);

dataval = struct();
for i = 1:length(fields)
    if length(DR.(fields{i})) > 100
        f = DR.(fields{i})(pos);
        dataval.(fields{i}) = f(6:10:length(f));
    end
end

dataval.T = 1:length(dataval.ET);
dataval.T = dataval.T';

save("purelongdataval.mat", "dataval");
end