function [ output_args ] = fun_Cluster_FP_03deltra(  dis_mat,rho )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
disp('fun_Cluster_FP_03deltra')

ND= length(dis_mat);

maxd = max(dis_mat(:));

[rho_sorted, ordrho] = sort(rho,'descend');
delta(ordrho(1))=-1;
nneigh(ordrho(1))=0;

for i=2:ND
    ind1=ordrho(i);
    ind_tm=ordrho(1:(i-1));
    
    delta(ind1)=maxd;
    for j=1:(i-1)
        ind2=ind_tm(j);
        if dis_mat(ind1,ind2)<delta(ind1)
            delta(ind1)=dis_mat(ind1,ind2);
            nneigh(ind1)=ind2;
        end
    end
%     dis(ind1,ind2)
end
delta(ordrho(1))=max(delta(:));

output_args = delta;

end

