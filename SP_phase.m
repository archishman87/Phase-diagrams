% SH3_5/PRM_5 phase diagram
figure
hold
%LLPS -ve
plot([5:5:50],5,'bx','MarkerSize',10)
plot([5:5:20],10,'bx','MarkerSize',10)
plot([5:5:10],15,'bx','MarkerSize',10)
plot([5:5:10],20,'bx','MarkerSize',10)
plot(5,[25:5:50],'bx','MarkerSize',10)
plot(10,[45:5:50],'bx','MarkerSize',10)
plot([45:5:50],10,'bx','MarkerSize',10)
%LLPS +ve
plot([25:5:40],10,'ro','MarkerFaceColor',[1 0 0])
plot([15:5:50],15,'ro','MarkerFaceColor',[1 0 0])
plot([15:5:50],20,'ro','MarkerFaceColor',[1 0 0])
plot([10:5:50],25,'ro','MarkerFaceColor',[1 0 0])
plot([10:5:50],30,'ro','MarkerFaceColor',[1 0 0])
plot([10:5:50],35,'ro','MarkerFaceColor',[1 0 0])
plot([10:5:50],40,'ro','MarkerFaceColor',[1 0 0])
plot([15:5:50],45,'ro','MarkerFaceColor',[1 0 0])
plot([15:5:50],50,'ro','MarkerFaceColor',[1 0 0])
%axes properties
xlabel('[PRM_5] (μM)')
ylabel('[SH3_5] (μM)')
set(gca,'FontSize',11)
%grid properties
grid on
ax = gca;
ax.GridAlpha = 0.5;
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = [0:5:50]';
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = [0:5:50]';
grid on;
ax.XMinorGrid = 'on';
ax.MinorGridAlpha = 0.5;
ax.MinorGridLineStyle = '-';
ax.YMinorGrid = 'on';
ax.MinorGridAlpha = 0.5;
ax.MinorGridLineStyle = '-';
%Shading LLPS region
a = 19.3; b = 12.1; c = 4;
t = linspace(-50,50,10000);
y = sqrt(0.5).*(a.*(1+(t./b).^c).^(1/c) + t);
x = sqrt(0.5).*(a.*(1+(t./b).^c).^(1/c) - t);
S = patch(x,y,'r','FaceAlpha',0.35);
xlim([0 50])
ylim([0 50])
pbaspect([1 1 1])
