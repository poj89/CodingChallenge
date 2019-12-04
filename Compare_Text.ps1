# Load strings into variables
[string] $Sample1 = "The easiest way to earn points with Fetch Rewards is to just shop for the products you already love. If you have any participating brands on your receipt, you'll get points based on the cost of the products. You don't need to clip any coupons or scan individual barcodes. Just scan each grocery receipt after you shop and we'll find the savings for you."
[string] $Sample2 = "The easiest way to earn points with Fetch Rewards is to just shop for the items you already buy. If you have any eligible brands on your receipt, you will get points based on the total cost of the products. You do not need to cut out any coupons or scan individual UPCs. Just scan your receipt after you check out and we will find the savings for you."
[string] $Sample3 = "We are always looking for opportunities for you to earn more points, which is why we also give you a selection of Special Offers. These Special Offers are opportunities to earn bonus points on top of the regular points you earn every time you purchase a participating brand. No need to pre-select these offers, we'll give you the points whether or not you knew about the offer. We just think it is easier that way."

# check the lengths differences
$length_score_1x2 = $Sample1.Length - $Sample2.Length
$length_score_1x3 = $Sample1.Length - $Sample3.Length
$string_equality_score_1x2 = $Sample1 -eq $Sample2
$string_equality_score_1x3 = $Sample1 -eq $Sample3

# store words in lists
$list1 = $Sample1.split(" ,.")
$list1

Write-Host "1 vs 2 - String Equality: $string_equality_score_1x2 | Length difference: $length_score_1x2"
Write-Host "1 vs 3 - String Equality: $string_equality_score_1x3 | Length difference: $length_score_1x3"