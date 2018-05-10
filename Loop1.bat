echo off
set SCRATCH_ORG=%1
IF NOT DEFINED SCRATCH_ORG (exit 1)

FOR /L %%A IN (1,1,8) DO (
	echo off

	if %%A EQU 1 (	
		echo "Installing ... Volunteers for Salesforce (1/8)"
		sfdx force:package:install -i 04t50000000cSq7AAE  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 2 (
		echo "Installing ... Contacts & Organizations (2/8)"
		sfdx force:package:install -i 04t80000001AWUFAA4  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 3 (
		echo "Installing ... Recurring Donations (3/8)"
		sfdx force:package:install -i 04t80000000gZTWAA2 -u %SCRATCH_ORG%  -w 10
	)
	if %%A EQU 4 (
		echo "Installing ... Households (4/8)"
		sfdx force:package:install -i 04t80000000tqAcAAI  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 5 (
		echo "Installing ... Affiliations (5/8)"
		sfdx force:package:install -i 04t80000000lTMlAAM  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 6 (
		echo "Installing ... Relationships (6/8)"
		sfdx force:package:install -i 04t80000000y8kRAAQ  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 7 (
		echo "Installing ... Power of Us Hub (7/8)"
		sfdx force:package:install -i 04ti0000000GSu9AAG  -u %SCRATCH_ORG% -w 10
	)
	if %%A EQU 8 (
		echo "Installing ... Nonprofit Success Pack (8/8)"
		sfdx force:package:install -i 04t1Y0000011SYRQA2  -u %SCRATCH_ORG% -w 10
	)
)
echo on
echo "Installation ... Completed!"
