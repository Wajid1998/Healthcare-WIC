SELECT * FROM sushmita.dataset1;

#Country wise Food Instruments Stats
select vendor_county, sum(NumberofFoodInstrumentsRedeemed) from dataset1
group by Vendor_County;

select vendor_county, 
min(NumberofFoodInstrumentsRedeemed), 
max(NumberofFoodInstrumentsRedeemed), 
sum(NumberofFoodInstrumentsRedeemed) 
from dataset1
group by Vendor_County;

#Country wise WIC Card Transaction Stats
select vendor_county, sum(NumberofWICCardTransactionsProcessed) from dataset1
group by Vendor_County;

#Percentage of Participants redeemed as per category
select ParticipantCategory,NumberofParticipantsRedeemed from mytable
group by ParticipantCategory;

#Average Cost trend with respect to year
select Year, avg(AverageCost) from mytable
group by year;

#Total Cost Voucher Vs Number of Families Redeemed Food Benefits Relation
select 
sum(d2.TotalCostVouchers) as TotalcostVochers,
sum(d1.Number_of_FamiliesRedeemedFoodBenefits) as NumberoffoodbenefitsRedeemed,
VendorLocation
from mytable as d2
join dataset1 as d1
on d2.VendorLocation=d1.Vendor_County
group by VendorLocation
order by d2.TotalCostVouchers;

