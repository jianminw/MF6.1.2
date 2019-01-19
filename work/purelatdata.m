function purelatdata()
r21 = load("Round-6-SI\B1654run21.mat");
r22 = load("Round-6-SI\B1654run22.mat");

CR = combine(r21, r22);

fields = fieldnames(CR);

dataval = struct();
for i = 1:length(fields)
    if length(CR.(fields{i})) > 100
        f = CR.(fields{i});
        dataval.(fields{i}) = f(11:20:length(f));
    end
end

dataval.T = 1:length(dataval.ET);
dataval.T = dataval.T';

save("purelatdataval.mat", "dataval");
end