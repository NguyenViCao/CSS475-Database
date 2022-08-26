CREATE DATABASE catering;
USE catering;
CREATE TABLE Event(EventID int,
				EventTitle CHAR(10),
				EventCode int,
                EventDate CHAR(10),
                EventDescription CHAR(100),
                EstCount int,
                FacilityID int,
                ToTime CHAR(8),
                FromTime CHAR(8),
                ContactID int,
                primary key (EventID),
				foreign key (EventCode) references
										EventType(EventCode),
				foreign key (FacilityID) references
										Facility(FacilityID),
				foreign key (ContactID) references
										Contact(ContactID));
CREATE INDEX TheEvent on catering.Event(EventID);
CREATE TABLE Facility(FacilityID int,
					FacilityName CHAR(50),
                    FacilityDescription CHAR(100),
                    LocationID int,
                    ContactID int,
                    primary key (FacilityID),
                    foreign key (LocationID) references
											Location(LocationID),
					foreign key(ContactID) references
											Contact(ContactID));
CREATE INDEX TheFacility on catering.Facility(FacilityID);
