function oneSub( );
clear;

data0=csvread('sigP2P3.csv',1,0)
sizdat=size(data0);

data10=csvread('ClassPredicP2.csv',1,0)
data20=csvread('ClassPredicP3.csv',1,0)


data01=csvread('LogPredicP2.csv',1,0)
data02=csvread('LogPredicP3.csv',1,0)




    l=[0 1 2 4 8 16 25];
    ts=[0.8 1.2];

n=7;

data(:,1)=data0(:,3); %subject
data(:,2)=data0(:,4); %time
data(:,3)=data0(:,5); %space

data(:,4)=data0(:,1);  %P2
for isub=n:n;  
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP2=mandse(dataz);   
end;

data(:,4)=data0(:,2);  %P3
for isub=n:n; 
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP3=mandse(dataz);   
end;

data(:,4)=data10(:,1);  %P2-linear
for isub=n:n;  
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP2Lin=mandse(dataz);   
end;

data(:,4)=data20(:,1);  %P3-linear
for isub=n:n; 
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP3Lin=mandse(dataz);   
end;

data(:,4)=data01(:,1);  %P2-log
for isub=n:n;  
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP2Log=mandse(dataz);   
end;

data(:,4)=data02(:,1);  %P3-log
for isub=n:n; 
    indx = find(data(:,1)== isub);
    dataz = data(indx,:);
    mseP3Log=mandse(dataz);   
end;        
 


 subplot(2,4,5)  %  P2 0.8 s line
 datat=mseP2.data08;
 m=mseP2.m(:,1);
 se=mseP2.se(:,1);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
m=mseP2Lin.m(:,1);
plot(l,m,'Color',[0 135 108]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')  

subplot(2,4,1)  %  P2 1.2 s line
 datat=mseP2.data12;
 m=mseP2.m(:,2);
 se=mseP2.se(:,2);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;
m=mseP2Lin.m(:,2);
plot(l,m,'color',[222 66 91]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')   

 subplot(2,4,6)  %  P2 0.8 s line
 datat=mseP2.data08;
 m=mseP2.m(:,1);
 se=mseP2.se(:,1);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
m=mseP2Log.m(:,1);
plot(l,m,'Color',[0 135 108]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')  

subplot(2,4,2)  %  P2 1.2 s line
 datat=mseP2.data12;
 m=mseP2.m(:,2);
 se=mseP2.se(:,2);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;
m=mseP2Log.m(:,2);
plot(l,m,'color',[222 66 91]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')   


 subplot(2,4,7)  %  P2 0.8 s line
 datat=mseP3.data08;
 m=mseP3.m(:,1);
 se=mseP3.se(:,1);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
m=mseP3Lin.m(:,1);
plot(l,m,'Color',[0 135 108]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')  

subplot(2,4,3)  %  P2 1.2 s line
 datat=mseP3.data12;
 m=mseP3.m(:,2);
 se=mseP3.se(:,2);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;
m=mseP3Lin.m(:,2);
plot(l,m,'color',[222 66 91]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')   

 subplot(2,4,8)  %  P2 0.8 s line
 datat=mseP3.data08;
 m=mseP3.m(:,1);
 se=mseP3.se(:,1);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
m=mseP3Log.m(:,1);
plot(l,m,'Color',[0 135 108]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')  

subplot(2,4,4)  %  P2 1.2 s line
 datat=mseP3.data12;
 m=mseP3.m(:,2);
 se=mseP3.se(:,2);
 sizd=size(datat);
 plot(datat(:,3),datat(:,4),'.','Color',[0.7 0.7 0.7]);
 hold on;
 errorbar(l,m,se,'o','linewidth',2,'Color','k', 'MarkerSize',5,...
   'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;
m=mseP3Log.m(:,2);
plot(l,m,'color',[222 66 91]/255,'LineWidth',3);

set(gca, 'ylim', [-15, 25]);
set(gca, 'xlim', [-2, 27]); 
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')   


function mse=mandse(data);
    % find ith subject data
    
    indx = find(data(:,2) == 0.8);
     
    dataTemp=data(indx,:);
    data08=dataClean(dataTemp);  
    
    clear indx;
    clear dataTemp;
 
    indx = find(data(:,2) == 1.2);
    dataTemp=data(indx,:);
  
    data12=dataClean(dataTemp);
    
    clear indx;
    clear dataTemp;

    
    l=[0 1 2 4 8 16 25];
    ts=[0.8 1.2];
    for il=1:7;
        indx = find(data08(:,3) == l(il));
        dataTemp = data08(indx,:);
        sizd = size(dataTemp);
        m08(il) = mean(dataTemp(:,4),1);
        se08(il) = std(dataTemp(:,4),0,1)/sqrt(sizd(1));

        
        clear indx;
        clear dataTemp; 
        clear sizd;
    end;
        
    for il=1:7;
        indx = find(data12(:,3) == l(il));
        dataTemp = data12(indx,:);
        sizd = size(dataTemp);
        m12(il) = mean(dataTemp(:,4),1);
        se12(il) = std(dataTemp(:,4),0,1)/sqrt(sizd(1));
        
        clear indx;
        clear dataTemp;
        clear sizd;
       end;
       
mse.m(:,1)=m08';
mse.m(:,2)=m12';

mse.se(:,1)=se08';
mse.se(:,2)=se12';

mse.data08=data08;
mse.data12=data12;


    


function [data1]=dataClean(data);

m=mean(data(:,4));
sd=std(data(:,4),0,1);

indx1=find(data(:,4)>m-3*sd);
indx2=find(data(:,4)<m+3*sd);
indx= intersect(indx1,indx2);
data1=data(indx,:);
