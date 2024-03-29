/* Sample data that contains strings for comparison*/
data mystrings;
Sample1 = "The easiest way to earn points with Fetch Rewards is to just shop for the products you already love. If you have any participating brands on your receipt, you'll get points based on the cost of the products. You don't need to clip any coupons or scan individual barcodes. Just scan each grocery receipt after you shop and we'll find the savings for you.";
Sample2 = "The easiest way to earn points with Fetch Rewards is to just shop for the items you already buy. If you have any eligible brands on your receipt, you will get points based on the total cost of the products. You do not need to cut out any coupons or scan individual UPCs. Just scan your receipt after you check out and we will find the savings for you.";
Sample3 = "We are always looking for opportunities for you to earn more points, which is why we also give you a selection of Special Offers. These Special Offers are opportunities to earn bonus points on top of the regular points you earn every time you purchase a participating brand. No need to pre-select these offers, we'll give you the points whether or not you knew about the offer. We just think it is easier that way.";
output;
run;

/* This code uses both the SOUNDEX and COMPGED functions.*/
data comparison_results;
  set mystrings;
  tmp1=soundex(Sample1);
  tmp2=soundex(Sample2);
  tmp3=soundex(Sample3);
  dif1x2=compged(tmp1,tmp2);
  if dif1x2<=50 then do;
      possible_match='Yes';
      drop  i tmp1 tmp2  fname2;
      output;
    end;
  end;
run;
proc print; run;