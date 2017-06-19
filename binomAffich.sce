ECHANTILLON=10^5
t=linspace(.5,1,50)
for k=1:10
    f=[]
    for p=t
        x=grand(1,ECHANTILLON,"bin",2*k-1,p)
        probaEmpirique=mean((x>=k)*1)
        f=[f,probaEmpirique]
    end
    plot(t,f)
end
