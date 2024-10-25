clear; close all; clc

fsignal = 13; fsample = 8; % [kHz]

plot([fsample/2; fsample/2],[0 1.5],'r')
ylim([0 2])
hold on
h = text(fsample/2,1.6,['fN = ' num2str(fsample/2)]); set(h,'Rotation',90);

plot([-fsample/2; -fsample/2],[0 1.5],'r')
h = text(-fsample/2,1.6,['-fN = ' num2str(-fsample/2)]); set(h,'Rotation',90);
plot([-fsample/2; fsample/2],[1.5 1.5],'r')

pause

color_cell = {0,  'g'; 1,  'r'; -1, 'y'; 2, 'm';  -2, 'k';  3, 'b'; -3, 'c'};
[nk,~] = size(color_cell);

for k = 1:nk
    text_k = ['k = ' num2str(color_cell{k,1})];

    text_f = [', f = ' num2str(fsignal+color_cell{k,1}*fsample)];
    plot([fsignal+color_cell{k,1}*fsample; fsignal+color_cell{k,1}*fsample],[0 1],color_cell{k,2});
    h = text(fsignal+color_cell{k,1}*fsample,1.1,[text_k text_f],'HorizontalAlignment' ,'center'); set(h,'Rotation',90);
    
    text_f = [', f = ' num2str(-fsignal+color_cell{k,1}*fsample)];    
    plot([-fsignal+color_cell{k,1}*fsample; -fsignal+color_cell{k,1}*fsample],[0 1],color_cell{k,2}); 
    h = text(-fsignal+color_cell{k,1}*fsample,1.1,[text_k text_f],'HorizontalAlignment' ,'center'); set(h,'Rotation',90);
    
    pause
end

hold off