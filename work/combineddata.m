function combineddata()
r35 = load("Round-6-SI\B1654run35.mat");
r36 = load("Round-6-SI\B1654run36.mat");

DR = combine(r35, r36);

fields = fieldnames(DR);

data = struct();
for i = 1:length(fields)
    if length(DR.(fields{i})) > 100
        f = DR.(fields{i});
        data.(fields{i}) = f(1:20:length(f));
    end
end

data.T = 1:length(data.ET);
data.T = data.T';

save("combineddata.mat", "data");
end