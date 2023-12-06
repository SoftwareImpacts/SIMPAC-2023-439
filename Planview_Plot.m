cennn=importdata('FS_Planview_results.dat');
R=importdata('Reservoir.dat');
figure;
X1 = cennn(:,1);
Y1= cennn(:,2);
Z1 = cennn(:,4);
[xx, yy] = meshgrid(X1, Y1);
F=scatteredInterpolant(X1,Y1,Z1);
zz=F(xx,yy);
pcolor(xx,yy,zz);
shading interp
colormap jet
NW = [min(xlim) max(ylim)]+[diff(xlim) -diff(ylim)]*0.05;
text(NW(1), NW(2), '∆S', 'VerticalAlignment','top', 'HorizontalAlignment','left')
c = colorbar;
caxis([-100 50]);
hold on
plot3(R(:,1),R(:,2),2*ones(length(R(:,1)),1) ,'MarkerFaceColor',[0 0 1],...
    'MarkerEdgeColor',[0 0 1],...
     'MarkerSize',1,...
     'Marker','o',...
     'LineStyle','none',...
    'Color',[0 0 0]);
xlabel('Longitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Latitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
zlabel('Depth(km)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');

% hold on
% N=importdata('Earthquake.xls');
% L=N(:,2);
% M=N(:,3);
% for i=1:length(L)
%     plot3(M(i,1), L(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','O',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% end
% hold on
% N1=importdata('Earthquake1.xls');
% L1=N1(:,2);
% M1=N1(:,3);
% for i=1:length(L1)
%     plot3(M1(i,1), L1(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','*',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% 
% end

figure(2);
X = cennn(:,1);
Y= cennn(:,2);
Z = cennn(:,5);
[xx, yy] = meshgrid(X, Y);
F=scatteredInterpolant(X,Y,Z);
zz=F(xx,yy);
pcolor(xx,yy,zz)
shading interp
colormap jet
NW = [min(xlim) max(ylim)]+[diff(xlim) -diff(ylim)]*0.05;
text(NW(1), NW(2), '∆τ', 'VerticalAlignment','top', 'HorizontalAlignment','left')
c = colorbar;
caxis([-100 50]);
hold on
R=importdata('Reservoir.dat');
hold on
plot3(R(:,1),R(:,2),2*ones(length(R(:,1)),1) ,'MarkerFaceColor',[0 0 1],...
    'MarkerEdgeColor',[0 0 1],...
     'MarkerSize',1,...
     'Marker','o',...
     'LineStyle','none',...
    'Color',[0 0 0]);
xlabel('Longitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Latitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
zlabel('Depth(km)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
% hold on
% N=importdata('Earthquake.xls');
% L=N(:,2);
% M=N(:,3);
% for i=1:length(L)
%     plot3(M(i,1), L(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','O',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% end
% hold on
% N1=importdata('Earthquake1.xls');
% L1=N1(:,2);
% M1=N1(:,3);
% for i=1:length(L1)
%     plot3(M1(i,1), L1(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','*',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% 
% end


figure(3);
X = cennn(:,1);
Y= cennn(:,2);
Z = cennn(:,7);

[xx, yy] = meshgrid(X, Y);
F=scatteredInterpolant(X,Y,Z);
zz=F(xx,yy);
pcolor(xx,yy,zz)
shading interp
colormap jet
NW = [min(xlim) max(ylim)]+[diff(xlim) -diff(ylim)]*0.05;
text(NW(1), NW(2), '∆P', 'VerticalAlignment','top', 'HorizontalAlignment','left')
c = colorbar;
caxis([-100 50]);
hold on
R=importdata('Reservoir.dat');
hold on
plot3(R(:,1),R(:,2),2*ones(length(R(:,1)),1) ,'MarkerFaceColor',[0 0 1],...
    'MarkerEdgeColor',[0 0 1],...
     'MarkerSize',1,...
     'Marker','o',...
     'LineStyle','none',...
    'Color',[0 0 0]);
xlabel('Longitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Latitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
zlabel('Depth(km)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
% hold on
% N=importdata('Earthquake.xls');
% L=N(:,2);
% M=N(:,3);
% for i=1:length(L)
%     plot3(M(i,1), L(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','O',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% end
% hold on
% N1=importdata('Earthquake1.xls');
% L1=N1(:,2);
% M1=N1(:,3);
% for i=1:length(L1)
%     plot3(M1(i,1), L1(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','*',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% 
% end

figure(4);
X = cennn(:,1);
Y= cennn(:,2);
Z = cennn(:,6);
[xx, yy] = meshgrid(X, Y);
F=scatteredInterpolant(X,Y,Z);
zz=F(xx,yy);
pcolor(xx,yy,zz)
shading interp
colormap jet
NW = [min(xlim) max(ylim)]+[diff(xlim) -diff(ylim)]*0.05;
text(NW(1), NW(2), '∆σ', 'VerticalAlignment','top', 'HorizontalAlignment','left')
c = colorbar;
caxis([-100 50]);
hold on
R=importdata('Reservoir.dat');
hold on
plot3(R(:,1),R(:,2),2*ones(length(R(:,1)),1) ,'MarkerFaceColor',[0 0 1],...
    'MarkerEdgeColor',[0 0 1],...
     'MarkerSize',1,...
     'Marker','o',...
     'LineStyle','none',...
    'Color',[0 0 0]);
xlabel('Longitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Latitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
zlabel('Depth(km)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
% hold on
% N=importdata('Earthquake.xls');
% L=N(:,2);
% M=N(:,3);
% for i=1:length(L)
%     plot3(M(i,1), L(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','O',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% end
% hold on
% N1=importdata('Earthquake1.xls');
% L1=N1(:,2);
% M1=N1(:,3);
% for i=1:length(L1)
%     plot3(M1(i,1), L1(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','*',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% 
% end

figure(5);
X = cennn(:,1);
Y= cennn(:,2);
Z = cennn(:,3);
[xx, yy] = meshgrid(X, Y);
F=scatteredInterpolant(X,Y,Z);
zz=F(xx,yy);
pcolor(xx,yy,zz)
shading interp
colormap jet
NW = [min(xlim) max(ylim)]+[diff(xlim) -diff(ylim)]*0.05;
text(NW(1), NW(2), '∆Sp', 'VerticalAlignment','top', 'HorizontalAlignment','left')
c = colorbar;
caxis([-100 50]);
hold on
R=importdata('Reservoir.dat');
hold on
plot3(R(:,1),R(:,2),2*ones(length(R(:,1)),1) ,'MarkerFaceColor',[0 0 1],...
    'MarkerEdgeColor',[0 0 1],...
     'MarkerSize',1,...
     'Marker','o',...
     'LineStyle','none',...
    'Color',[0 0 0]);
xlabel('Longitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
ylabel('Latitude','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
zlabel('Depth(km)','FontWeight','bold','FontSize',12,...
    'FontName','times new roman');
% hold on
% N=importdata('Earthquake.xls');
% L=N(:,2);
% M=N(:,3);
% for i=1:length(L)
%     plot3(M(i,1), L(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','O',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% end
% hold on
% N1=importdata('Earthquake1.xls');
% L1=N1(:,2);
% M1=N1(:,3);
% for i=1:length(L1)
%     plot3(M1(i,1), L1(i,1), 2, 'MarkerFaceColor',[0 0.52 0.10],...
%     'MarkerEdgeColor',[0 0.52 0.10],...
%     'MarkerSize',2,...
%     'Marker','*',...
%     'LineStyle','none',...
%     'Color',[0 0 0]);
% 
% end
% 
% 

