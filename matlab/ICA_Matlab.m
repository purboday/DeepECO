main21 = importdata('low_freq\house_2\channel_1.dat');
%main21.data;
main1 = main21(:,2);

main22 = importdata('low_freq\house_2\channel_2.dat');
%main22.data;
main2 = main22(:,2);

main = main1 + main2;
%tf = isstruct(main)
main_demo = main(1:864000);
main_demo = reshape(main_demo,[60,14400]);
main_demo = main_demo';
%=========================== X ==============================%
%kitchen_outlets_1 = importdata('low_freq\house_2\channel_3.dat');
%kitchen_outlets_1 = kitchen_outlets_1(:,2);
%lighting = importdata('low_freq\house_2\channel_4.dat');
%lighting = lighting(:,2);
%stove = importdata('low_freq\house_2\channel_5.dat');
%stove = stove(:,2);
%microwave = importdata('low_freq\house_2\channel_6.dat');
%washer_dryer = importdata('low_freq\house_2\channel_7.dat');
%washer_dryer = washer_dryer(:,2);
%kitchen_outlets_2 = importdata('low_freq\house_2\channel_8.dat');
%kitchen_outlets_2 = kitchen_outlets_2(:,2);
%refrigerator = importdata('low_freq\house_2\channel_9.dat');
%refrigerator = refrigerator(:,2);
%dishwaser = importdata('low_freq\house_2\channel_10.dat');
%dishwaser = dishwaser(:,2);
%disposal = importdata('low_freq\house_2\channel_11.dat');
%disposal = disposal(:,2);%

%power = cat(2,kitchen_outlets_1,lighting,stove,microwave, washer_dryer,kitchen_outlets_2,refrigerator,dishwaser,disposal);
q = 3;
Mdl = rica(main_demo,q,'IterationLimit',100);
[Zica, W, T, mu] = fastICA(main',3);
%[Zica, W, T, mu] = kICA(main',9);

save('Zica.mat','Zica');
weights = Mdl.TransformWeights;
save('TransformWeights.mat','weights');
