-- --------------------------------------------------------------------------------
-- Capstone Project - Community Service Locator
-- Team F; Drop Table Team
-- --------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------
-- Options
-- --------------------------------------------------------------------------------
USE dbSQL1;     -- Get out of the master database
SET NOCOUNT ON; -- Report only errors

-- --------------------------------------------------------------------------------
--						
-- --------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------
--	Step #1 : Drop tables
-- --------------------------------------------------------------------------------

IF OBJECT_ID ('TPriviledgeLevelEmployee')		IS NOT NULL	DROP TABLE	TPriviledgeLevelEmployee
IF OBJECT_ID ('TLocationInventory')				IS NOT NULL	DROP TABLE	TLocationInventory
IF OBJECT_ID ('TEmployeeLocation')				IS NOT NULL	DROP TABLE	TEmployeeLocation
IF OBJECT_ID ('TServiceTypeOther')				IS NOT NULL	DROP TABLE	TServiceTypeOther
IF OBJECT_ID ('TServiceTypeShelter')			IS NOT NULL	DROP TABLE	TServiceTypeShelter
IF OBJECT_ID ('TServiceTypeCommunityCenter')	IS NOT NULL	DROP TABLE	TServiceTypeCommunityCenter
IF OBJECT_ID ('TServiceTypeFood')				IS NOT NULL	DROP TABLE	TServiceTypeFood
IF OBJECT_ID ('TDaysHoursSaturdays')			IS NOT NULL	DROP TABLE	TDaysHoursSaturdays
IF OBJECT_ID ('TDaysHoursFridays')				IS NOT NULL	DROP TABLE	TDaysHoursFridays
IF OBJECT_ID ('TDaysHoursThursdays')			IS NOT NULL	DROP TABLE	TDaysHoursThursdays
IF OBJECT_ID ('TDaysHoursWednesdays')			IS NOT NULL	DROP TABLE	TDaysHoursWednesdays
IF OBJECT_ID ('TDaysHoursTuesdays')				IS NOT NULL	DROP TABLE	TDaysHoursTuesdays
IF OBJECT_ID ('TDaysHoursMondays')				IS NOT NULL	DROP TABLE	TDaysHoursMondays
IF OBJECT_ID ('TDaysHoursSundays')				IS NOT NULL	DROP TABLE	TDaysHoursSundays
IF OBJECT_ID ('TInventoryItem')					IS NOT NULL	DROP TABLE	TInventoryItem
IF OBJECT_ID ('TLogin')							IS NOT NULL	DROP TABLE	TLogin
IF OBJECT_ID ('TEmployee')						IS NOT NULL	DROP TABLE	TEmployee
IF OBJECT_ID ('TPriviledgeLevel')				IS NOT NULL	DROP TABLE	TPriviledgeLevel
IF OBJECT_ID ('TLocation')						IS NOT NULL	DROP TABLE	TLocation
IF OBJECT_ID ('TOther')							IS NOT NULL	DROP TABLE	TOther
IF OBJECT_ID ('TListedOthers')					IS NOT NULL	DROP TABLE	TListedOthers
IF OBJECT_ID ('TShelter')						IS NOT NULL	DROP TABLE	TShelter
IF OBJECT_ID ('TCommunityCenter')				IS NOT NULL	DROP TABLE	TCommunityCenter
IF OBJECT_ID ('TFood')							IS NOT NULL	DROP TABLE	TFood
IF OBJECT_ID ('TFoodDesc')						IS NOT NULL	DROP TABLE	TFoodDesc
IF OBJECT_ID ('TSaturdays')						IS NOT NULL	DROP TABLE	TSaturdays
IF OBJECT_ID ('TPopulationServed')				IS NOT NULL	DROP TABLE	TPopulationServed
IF OBJECT_ID ('TRequirements')					IS NOT NULL	DROP TABLE	TRequirements
IF OBJECT_ID ('TFridays')						IS NOT NULL	DROP TABLE	TFridays
IF OBJECT_ID ('TThursdays')						IS NOT NULL	DROP TABLE	TThursdays
IF OBJECT_ID ('TWednesdays')					IS NOT NULL	DROP TABLE	TWednesdays
IF OBJECT_ID ('TTuesdays')						IS NOT NULL	DROP TABLE	TTuesdays
IF OBJECT_ID ('TMondays')						IS NOT NULL	DROP TABLE	TMondays
IF OBJECT_ID ('TSundays')						IS NOT NULL	DROP TABLE	TSundays 
IF OBJECT_ID ('TServiceType')					IS NOT NULL	DROP TABLE	TServiceType
IF OBJECT_ID ('TDaysHours')						IS NOT NULL	DROP TABLE	TDaysHours
IF OBJECT_ID ('TStates')						IS NOT NULL	DROP TABLE	TStates



-- --------------------------------------------------------------------------------
--	Step #1 : Create table 
-- --------------------------------------------------------------------------------

CREATE TABLE TStates
(
			intStateID			INTEGER	IDENTITY	NOT NULL
			,strStatedescription		VARCHAR(255)		NOT NULL
			,CONSTRAINT TStates_PK PRIMARY KEY ( intStateID)
)

CREATE TABLE TDaysHours
(
			intDaysHoursID				INTEGER	IDENTITY	NOT NULL
			,strDaysHoursdescription	VARCHAR(255)		NOT NULL
			,CONSTRAINT TDaysHours_PK PRIMARY KEY ( intDaysHoursID)
)

CREATE TABLE TServiceType
(
			intServiceTypeID			INTEGER	IDENTITY	NOT NULL
			,strServiceTypedescription	VARCHAR(255)		NOT NULL
			,CONSTRAINT TServiceType_PK PRIMARY KEY ( intServiceTypeID)
)

CREATE TABLE TSundays 
(
			intSundaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(3)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TSundays_PK PRIMARY KEY ( intSundaysID)
)

CREATE TABLE TMondays
(
			intMondaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TMondays_PK PRIMARY KEY ( intMondaysID)
)

CREATE TABLE TTuesdays 
(
			intTuesdaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TTuesdays_PK PRIMARY KEY ( intTuesdaysID)
)

CREATE TABLE TWednesdays
(
			intWednesdaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TWednesdays_PK PRIMARY KEY ( intWednesdaysID)
)

CREATE TABLE TThursdays
(
			intThursdaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TThursdays_PK PRIMARY KEY ( intThursdaysID)
)

CREATE TABLE TFridays
(
			intFridaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TTFridays_PK PRIMARY KEY ( intFridaysID)
)

CREATE TABLE TRequirements
(
			intRequirementsID				INTEGER	IDENTITY	NOT NULL
			,strRequirementsdescription		VARCHAR(255)		NOT NULL
			,CONSTRAINT TRequirements_PK PRIMARY KEY ( intRequirementsID)
)

CREATE TABLE TPopulationServed
(
			intPopulationServedID				INTEGER	IDENTITY	NOT NULL
			,strPopulationServeddescription		VARCHAR(255)		NOT NULL
			,CONSTRAINT TPopulationServed_PK PRIMARY KEY ( intPopulationServedID)
)

CREATE TABLE TSaturdays
(
			intSaturdaysID		INTEGER	IDENTITY	NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,dtmTimeOpen		DATETIME	
			,dtmTimeClosed		DATETIME
			,CONSTRAINT TSaturdays_PK PRIMARY KEY ( intSaturdaysID)
)

CREATE TABLE TFoodDesc
(
			intFoodDescID				INTEGER	IDENTITY	NOT NULL
			,strFoodDesc				VARCHAR(255)		NOT NULL
			,CONSTRAINT TFoodDesc_PK PRIMARY KEY ( intFoodDescID)
)

CREATE TABLE TFood
(
			intFoodID			INTEGER	IDENTITY	NOT NULL
			,intFoodDescID		INTEGER				NOT NULL
			,intRequirementsID	INTEGER				NOT NULL	
			,CONSTRAINT TFood_PK PRIMARY KEY ( intFoodID)
)

CREATE TABLE TCommunityCenter
(
			intCommunityCenterID		INTEGER	IDENTITY	NOT NULL
			,intPopulationServedID		INTEGER				NOT NULL
			,intRequirementsID			INTEGER				NOT NULL
			,strAreasServed				VARCHAR(255)		NOT NULL	
			,CONSTRAINT TCommunityCenter_PK PRIMARY KEY ( intCommunityCenterID)
)

CREATE TABLE TShelter
(
			intShelterID			INTEGER	IDENTITY	NOT NULL
			,intBedsAvailableID		INTEGER				NOT NULL
			,intRequirementsID		INTEGER				NOT NULL	
			,intPopulationServedID	INTEGER				NOT NULL
			,CONSTRAINT TShelter_PK PRIMARY KEY ( intShelterID)
)

CREATE TABLE TListedOthers
(
			intListedOthersID		  INTEGER	IDENTITY	NOT NULL
			,strOtherSVCdescription	  VARCHAR(255)		NOT NULL
			,CONSTRAINT TListedOthers_PK PRIMARY KEY ( intListedOthersID)
)

CREATE TABLE TOther
(
			intOtherID					INTEGER	IDENTITY	NOT NULL
			,intPopulationServedID		INTEGER				NOT NULL
			,intListedOthersID			INTEGER				NOT NULL
			,intRequirementsID			INTEGER				NOT NULL
			,strAreasServed				VARCHAR(255)		NOT NULL	
			,CONSTRAINT TOther_PK PRIMARY KEY ( intOtherID)
)

CREATE TABLE TLocation
(
			intLocationID		INTEGER	IDENTITY	NOT NULL
			,strAddress			VARCHAR(255)		NOT NULL
			,strCity			VARCHAR(255)		NOT NULL
			,intStateID			INTEGER				NOT NULL
			,strZip				VARCHAR(255)		NOT NULL
			,strPhone			VARCHAR(255)		NOT NULL
			,strEmail			VARCHAR(255)		NOT NULL
			,intDaysHoursID		INTEGER				NOT NULL
			,intServiceTypeID	INTEGER				NOT NULL
			,blnActive			VARCHAR(1)			NOT NULL
			,intTimesSelected	INTEGER			--(Data An.)
			,CONSTRAINT TLocation_PK PRIMARY KEY ( intLocationID)
)

CREATE TABLE TPriviledgeLevel
(
			intPriviledgeLevelID		INTEGER	IDENTITY	NOT NULL
			,strLevelDesc				VARCHAR(255)		NOT NULL
			,blnSiteAccessOnly			VARCHAR(1)			NOT NULL
			,blnAddUserforSiteAccess	VARCHAR(1)			NOT NULL
			,blnFullAdminRights			VARCHAR(1)			NOT NULL
			,CONSTRAINT TPriviledgeLevel_PK PRIMARY KEY ( intPriviledgeLevelID)
)

CREATE TABLE TLogin
(
			intLoginID				INTEGER	IDENTITY	NOT NULL
			,intEmployeeID			INTEGER				NOT NULL
			,strPassword			VARCHAR(255)		NOT NULL
			,CONSTRAINT TLogin_PK PRIMARY KEY ( intLoginID)
)


CREATE TABLE TEmployee
(
			intEmployeeID			INTEGER	IDENTITY	NOT NULL
			,strEmployeeNumber		VARCHAR(255)		NOT NULL
			,strFirstName			VARCHAR(255)		NOT NULL
			,strLastName			INTEGER				NOT NULL
			,strMobilePhone			VARCHAR(255)		NOT NULL
			,strOfficePhone			VARCHAR(255)		NOT NULL
			,strEmail				VARCHAR(255)		NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,blnEmployeed			VARCHAR(1)			NOT NULL
			
			,CONSTRAINT TEmployee_PK PRIMARY KEY ( intEmployeeID)
)

CREATE TABLE TInventoryItem
(
			intInventoryItemID		INTEGER	IDENTITY	NOT NULL
			,strInventoryItemDesc	VARCHAR(255)		NOT NULL
			,intMaxInventory		INTEGER				NOT NULL
			,intMinInventory		INTEGER				NOT NULL
			,intCurrentInventory	INTEGER				NOT NULL
			,CONSTRAINT TInventoryItem_PK PRIMARY KEY ( intInventoryItemID)
)


CREATE TABLE TDaysHoursSundays
(
			intDaysHoursSundaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intSundaysID				INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursSundays_PK PRIMARY KEY ( intDaysHoursSundaysID)
)

CREATE TABLE TDaysHoursMondays
(
			intDaysHoursMondaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intMondaysID			INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursMondays_PK PRIMARY KEY ( intDaysHoursMondaysID)
)

CREATE TABLE TDaysHoursTuesdays
(
			intDaysHoursTuesdaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intTuesdaysID			INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursTuesdays_PK PRIMARY KEY ( intDaysHoursTuesdaysID)
)

CREATE TABLE TDaysHoursWednesdays
(
			intDaysHoursWednesdaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intWednesdaysID		INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursWednesdays_PK PRIMARY KEY ( intDaysHoursWednesdaysID)
)

CREATE TABLE TDaysHoursThursdays
(
			intDaysHoursThursdaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intThursdaysID			INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursThursdays_PK PRIMARY KEY ( intDaysHoursThursdaysID)
)

CREATE TABLE TDaysHoursFridays
(
			intDaysHoursFridaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intFridaysID			INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursFridays_PK PRIMARY KEY ( intDaysHoursFridaysID)
)

CREATE TABLE TDaysHoursSaturdays
(
			intDaysHoursSaturdaysID	INTEGER	IDENTITY	NOT NULL
			,intDaysHoursID			INTEGER				NOT NULL
			,intSaturdaysID			INTEGER				NOT NULL	
			,CONSTRAINT TDaysHoursSaturdays_PK PRIMARY KEY ( intDaysHoursSaturdaysID)
)

CREATE TABLE TServiceTypeFood
(
			intServiceTypeFoodID	INTEGER	IDENTITY	NOT NULL
			,intServiceTypeID		INTEGER				NOT NULL
			,intFoodID				INTEGER				NOT NULL	
			,CONSTRAINT TServiceTypeFood_PK PRIMARY KEY ( intServiceTypeFoodID)
)

CREATE TABLE TServiceTypeCommunityCenter
(
			intServiceTypeCommunityCenterID	INTEGER	IDENTITY	NOT NULL
			,intServiceTypeID				INTEGER				NOT NULL
			,intCommunityCenterID			INTEGER				NOT NULL	
			,CONSTRAINT TServiceTypeCommunityCenter_PK PRIMARY KEY ( intServiceTypeCommunityCenterID)
)

CREATE TABLE TServiceTypeShelter
(
			intServiceTypeShelterID	INTEGER	IDENTITY	NOT NULL
			,intServiceTypeID		INTEGER				NOT NULL
			,intShelterID			INTEGER				NOT NULL	
			,CONSTRAINT TServiceTypeShelter_PK PRIMARY KEY ( intServiceTypeShelterID)
)

CREATE TABLE TServiceTypeOther
(
			intServiceTypeOtherID	INTEGER	IDENTITY	NOT NULL
			,intServiceTypeID		INTEGER				NOT NULL
			,intOtherID				INTEGER				NOT NULL	
			,CONSTRAINT TServiceTypeOther_PK PRIMARY KEY ( intServiceTypeOtherID)
)

CREATE TABLE TEmployeeLocation
(
			intEmployeeLocationID	INTEGER	IDENTITY	NOT NULL
			,intEmployeeID			INTEGER				NOT NULL
			,intLocationID			INTEGER				NOT NULL	
			,CONSTRAINT TEmployeeLocation_PK PRIMARY KEY ( intEmployeeLocationID)
)

CREATE TABLE TLocationInventory
(
			intLocationInventoryID	INTEGER	IDENTITY	NOT NULL
			,intInventoryItemID		INTEGER				NOT NULL
			,intLocationID			INTEGER				NOT NULL	
			,CONSTRAINT TLocationInventory_PK PRIMARY KEY ( intLocationInventoryID)
)

CREATE TABLE TPriviledgeLevelEmployee
(
			intPriviledgeLevelEmployeeID	INTEGER	IDENTITY	NOT NULL
			,intPriviledgeLevelID			INTEGER				NOT NULL
			,intEmployeeID					INTEGER				NOT NULL
			,strLevelDesc					VARCHAR(255)		NOT NULL
			,CONSTRAINT TPriviledgeLevelEmployee_PK PRIMARY KEY ( intPriviledgeLevelEmployeeID)
)



-- --------------------------------------------------------------------------------
--	Foreign Keys
-- --------------------------------------------------------------------------------
--#		Parent							Child				FK
-- --------------------------------------------------------------------------------
--		TLocation						TState				intStateID
ALTER TABLE TLocation ADD CONSTRAINT TLocation_TStates_FK
FOREIGN KEY ( intStateID ) REFERENCES TStates ( intStateID ) ON DELETE CASCADE	

--		TLocation						TDaysandHours		intDaysHoursID
ALTER TABLE TLocation ADD CONSTRAINT TLocation_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE
	
--		TEmployees						TDaysandHours		intDaysHoursID
ALTER TABLE TEmployee ADD CONSTRAINT TEmployee_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TLocation						TServiceType		intServiceTypeID
ALTER TABLE TLocation ADD CONSTRAINT TLocation_TServiceType_FK
FOREIGN KEY ( intServiceTypeID ) REFERENCES TServiceType ( intServiceTypeID ) ON DELETE CASCADE

--		TDaysHoursSundays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursSundays ADD CONSTRAINT TDaysHoursSundays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE	

--		TDaysHoursSundays				TSundays			intSundaysID
ALTER TABLE TDaysHoursSundays ADD CONSTRAINT TDaysHoursSundays_TSundays_FK
FOREIGN KEY ( intSundaysID ) REFERENCES TSundays( intSundaysID ) ON DELETE CASCADE	
	
--		TDaysHoursSaturdays				TSaturdays			intSaturdaysID
ALTER TABLE TDaysHoursSaturdays	 ADD CONSTRAINT TDaysHoursSaturdays_TSaturdays_FK
FOREIGN KEY ( intSaturdaysID ) REFERENCES TSaturdays( intSaturdaysID ) ON DELETE CASCADE

--		TDaysHoursSaturdays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursSaturdays ADD CONSTRAINT TDaysHoursSaturdays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TDaysHoursMondays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursMondays ADD CONSTRAINT TDaysHoursMondays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TDaysHoursMondays				TMondays			intMondaysID
ALTER TABLE TDaysHoursMondays ADD CONSTRAINT TDaysHoursMondays_TMondays_FK
FOREIGN KEY ( intMondaysID ) REFERENCES TMondays( intMondaysID ) ON DELETE CASCADE

--		TDaysHoursTuesdays				TTuesdays			intTuesdaysID
ALTER TABLE TDaysHoursTuesdays ADD CONSTRAINT TDaysHoursTuesdays_TTuesdays_FK
FOREIGN KEY ( intTuesdaysID ) REFERENCES TTuesdays( intTuesdaysID ) ON DELETE CASCADE

--		TDaysHoursTuesdays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursTuesdays	 ADD CONSTRAINT TDaysHoursTuesdays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TDaysHoursWednesdays			TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursWednesdays	 ADD CONSTRAINT TDaysHoursWednesdays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TDaysHoursWednesdays			TWednesdays			intWednesdaysID
ALTER TABLE TDaysHoursWednesdays ADD CONSTRAINT TDaysHoursWednesdays_TWednesdays_FK
FOREIGN KEY ( intWednesdaysID ) REFERENCES TWednesdays( intWednesdaysID ) ON DELETE CASCADE

--		TDaysHoursThursdays				TThursdays			intThursdaysID
ALTER TABLE TDaysHoursThursdays	 ADD CONSTRAINT TDaysHoursThursdays_TThursdays_FK
FOREIGN KEY ( intThursdaysID ) REFERENCES TThursdays( intThursdaysID ) ON DELETE CASCADE

--		TDaysHoursThursdays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursThursdays	 ADD CONSTRAINT TDaysHoursThursdays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TDaysHoursFridays				TFridays			intFridaysID
ALTER TABLE TDaysHoursFridays	 ADD CONSTRAINT TDaysHoursFridays_TFridays_FK
FOREIGN KEY ( intFridaysID ) REFERENCES TFridays( intFridaysID ) ON DELETE CASCADE

--		TDaysHoursFridays				TDaysandHours		intDaysHoursID
ALTER TABLE TDaysHoursFridays	 ADD CONSTRAINT TDaysHoursFridays_TDaysHours_FK
FOREIGN KEY ( intDaysHoursID ) REFERENCES TDaysHours ( intDaysHoursID ) ON DELETE CASCADE

--		TServiceTypeFood				TServiceType		intServiceTypeID
ALTER TABLE TServiceTypeFood	 ADD CONSTRAINT TServiceTypeFood_TServiceType_FK
FOREIGN KEY ( intServiceTypeID ) REFERENCES TServiceType ( intServiceTypeID ) ON DELETE CASCADE

--		TServiceTypeCommunityCenter		TServiceType		intServiceTypeID
ALTER TABLE TServiceTypeCommunityCenter	 ADD CONSTRAINT TServiceTypeCommunityCenter_TServiceType_FK
FOREIGN KEY ( intServiceTypeID ) REFERENCES TServiceType ( intServiceTypeID ) ON DELETE CASCADE

--		TServiceTypeShelter				TServiceType		intServiceTypeID
ALTER TABLE TServiceTypeShelter		 ADD CONSTRAINT TServiceTypeShelter_TServiceType_FK
FOREIGN KEY ( intServiceTypeID ) REFERENCES TServiceType ( intServiceTypeID ) ON DELETE CASCADE

--		TServiceTypeOther				TServiceType		intServiceTypeID
ALTER TABLE TServiceTypeOther	 ADD CONSTRAINT TServiceTypeOther_TServiceType_FK
FOREIGN KEY ( intServiceTypeID ) REFERENCES TServiceType ( intServiceTypeID ) ON DELETE CASCADE

--		TServiceTypeFood				TFood				intFoodID 
ALTER TABLE TServiceTypeFood	 ADD CONSTRAINT TServiceTypeFood_TFood_FK
FOREIGN KEY ( intFoodID ) REFERENCES TFood ( intFoodID  ) ON DELETE CASCADE

--		TServiceTypeCommunityCenter		TCommunityCenter	intCommunityCenterID
ALTER TABLE TServiceTypeCommunityCenter	 ADD CONSTRAINT TServiceTypeCommunityCenter_TCommunityCenter_FK
FOREIGN KEY ( intCommunityCenterID ) REFERENCES TCommunityCenter ( intCommunityCenterID  ) ON DELETE CASCADE

--		TServiceTypeShelter				TShelter			intShelterID
ALTER TABLE TServiceTypeShelter	 ADD CONSTRAINT TServiceTypeShelter_TShelter_FK
FOREIGN KEY ( intShelterID ) REFERENCES TShelter ( intShelterID  ) ON DELETE CASCADE

--		TServiceTypeOther				TOther				intOtherID
ALTER TABLE TServiceTypeOther	 ADD CONSTRAINT TServiceTypeOther_TOther_FK
FOREIGN KEY ( intOtherID ) REFERENCES TOther ( intOtherID  ) ON DELETE CASCADE

--		TFood							TFoodDesc			intFoodDescID
ALTER TABLE TFood	 ADD CONSTRAINT TFood_TFoodDesc_FK
FOREIGN KEY ( intFoodDescID ) REFERENCES TFoodDesc ( intFoodDescID ) ON DELETE CASCADE

--		TFood							TRequirements		intRequirementsID
ALTER TABLE TFood	 ADD CONSTRAINT TFood_TRequirements_FK
FOREIGN KEY ( intRequirementsID ) REFERENCES TRequirements ( intRequirementsID ) ON DELETE CASCADE

--		TCommunityCenter				TRequirements		intRequirementsID
ALTER TABLE TCommunityCenter	 ADD CONSTRAINT TCommunityCenter_TRequirements_FK
FOREIGN KEY ( intRequirementsID ) REFERENCES TRequirements ( intRequirementsID ) ON DELETE CASCADE

--		TCommunityCenter				TPopulationServed	intPopulationServedID
ALTER TABLE TCommunityCenter	 ADD CONSTRAINT TCommunityCenter_TPopulationServed_FK
FOREIGN KEY ( intPopulationServedID ) REFERENCES TPopulationServed ( intPopulationServedID ) ON DELETE CASCADE

--		TShelter						TRequirements		intRequirementsID
ALTER TABLE TShelter	 ADD CONSTRAINT TShelter_TRequirements_FK
FOREIGN KEY ( intRequirementsID ) REFERENCES TRequirements ( intRequirementsID ) ON DELETE CASCADE

--		TShelter						TPopulationServed	intPopulationServedID
ALTER TABLE TShelter	 ADD CONSTRAINT TShelter_TPopulationServed_FK
FOREIGN KEY ( intPopulationServedID ) REFERENCES TPopulationServed ( intPopulationServedID ) ON DELETE CASCADE

--		TOther							TListedOthers		intListedOthersID
ALTER TABLE TOther	 ADD CONSTRAINT TOther_TListedOthers_FK
FOREIGN KEY ( intListedOthersID ) REFERENCES TListedOthers ( intListedOthersID ) ON DELETE CASCADE

--		TOther							TRequirements		intRequirementsID
ALTER TABLE TOther	 ADD CONSTRAINT TOther_TRequirements_FK
FOREIGN KEY ( intRequirementsID ) REFERENCES TRequirements ( intRequirementsID ) ON DELETE CASCADE

--		TOther							TPopulationServed	intPopulationServedID
ALTER TABLE TOther	 ADD CONSTRAINT TOther_TPopulationServed_FK
FOREIGN KEY ( intPopulationServedID ) REFERENCES TPopulationServed ( intPopulationServedID ) ON DELETE CASCADE


--		TEmployeeLocation				TLocation			intLocationID
ALTER TABLE TEmployeeLocation	 ADD CONSTRAINT TEmployeeLocation_TLocation_FK
FOREIGN KEY ( intLocationID ) REFERENCES TLocation ( intLocationID ) ON DELETE CASCADE

--		TEmployeeLocation				TEmployee			intEmployeeID
ALTER TABLE TEmployeeLocation	 ADD CONSTRAINT TEmployeeLocation_TEmployee_FK
FOREIGN KEY ( intEmployeeID ) REFERENCES TEmployee ( intEmployeeID ) ON DELETE NO ACTION

--		TLogin							TEmployee			intEmployeeID
ALTER TABLE TLogin	 ADD CONSTRAINT TLogin_TEmployee_FK
FOREIGN KEY ( intEmployeeID ) REFERENCES TEmployee ( intEmployeeID ) ON DELETE CASCADE

--		TLocationInventory				TLocation			intLocationID
ALTER TABLE TLocationInventory	 ADD CONSTRAINT TLocationInventory_TLocation_FK
FOREIGN KEY ( intLocationID ) REFERENCES TLocation ( intLocationID ) ON DELETE CASCADE

--		TLocationInventory				TInventoryItem		intInventoryItemID
ALTER TABLE TLocationInventory	 ADD CONSTRAINT TLocationInventory_TInventoryItem_FK
FOREIGN KEY ( intInventoryItemID ) REFERENCES TInventoryItem ( intInventoryItemID ) ON DELETE CASCADE

--		TPriviledgeLevelEmployee				TPriviledgeLevel		intPriviledgeLevelID
ALTER TABLE TPriviledgeLevelEmployee	 ADD CONSTRAINT TPriviledgeLevelEmployee_TPriviledgeLevel_FK
FOREIGN KEY ( intPriviledgeLevelID ) REFERENCES TPriviledgeLevel ( intPriviledgeLevelID ) ON DELETE CASCADE

--		TPriviledgeLevelEmployee				TEmployee		intEmployeeID
ALTER TABLE TPriviledgeLevelEmployee	 ADD CONSTRAINT TPriviledgeLevelEmployee_TEmployee_FK
FOREIGN KEY ( intEmployeeID ) REFERENCES TEmployee ( intEmployeeID ) ON DELETE NO ACTION





-- --------------------------------------------------------------------------------
--	Data Population for Categories that probably won't change much
-- --------------------------------------------------------------------------------
INSERT INTO TStates (strStatedescription)
VALUES			   ('Ohio')
				  ,('Kentucky')
				  ,('Indiana')

INSERT INTO TPopulationServed (strPopulationServeddescription)
VALUES			   ('Male')
				  ,('Female')
				  ,('Male and Female')
				  ,('Female and Children')
				  ,('Families')
				  ,('LGBT')
				  ,('Veterans')
				  ,('HIV Patients')
				  ,('Everyone')

INSERT INTO TServiceType (strServiceTypedescription)
VALUES			   ('Food')
				  ,('Community Health Center')
				  ,('Shelter')
				  ,('Other')


INSERT INTO TListedOthers (strOtherSVCdescription)
VALUES			   
				  ('Clothing')
				  ,('Financial Assistance')
				  ,('Career and Educational')
				  ,('Utility Bill Assistance')


INSERT INTO TPriviledgeLevel (strLevelDesc, blnSiteAccessOnly, blnAddUserforSiteAccess, blnFullAdminRights)
VALUES			   ('Case Manager Supervisor', 'F', 'T', 'F')
				  ,('Case Manager Employee', 'F', 'F', 'F')
				  ,('Site Manager' , 'T', 'T', 'F')
				  ,('Site Employee', 'T', 'F', 'F')
				  ,('Website Admin', 'T', 'T', 'T')





				  





