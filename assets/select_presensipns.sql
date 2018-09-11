select
Concat(Substr(A.b_02, 1, 8),' ', Substr(A.b_02, 9, 6),' ', Substr(A.b_02, 15, 1),' ', Substr(A.b_02, 16, 3)) nip2, 
Concat(IF(( Length(A.b_03a) > 0 ), Concat(A.b_03a, '. '), ''), UCASE(A.b_03), IF(( Length(A.b_03b) > 0 ), Concat(', ', A.b_03b), '')) nama, 
A.I_06 kodejab,
case	when A.I_06 = 99	then 'Pelaksana'
		when A.I_06 = 77 	then G.nama	
		when A.I_06 < 50  then F.NAJAB
		else ''			
		end namajabatan,
(select nm from tablok where lok_01=A.A_01) skpd
from mastfip1 A
left join tbjab F on A.I_05=F.KOJAB
left join jft_list G on A.I_05=G.kode
#left join jpl_list H on A.I_05=H.kode
where length(A.B_02)>0 
#and A.I_06<30
#order by A.I_06, namajabatan