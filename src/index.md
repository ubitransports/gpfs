---
currentMenu: index
---

# Overview of GPFS standard (General Passenger Feed Specification)

GPFS is a standard for exchanging user data within a framework of interoperability of transport networks.
This standard was put in place to simplify the transmission of user information between the different transport players,
as does the GTFS for network topology data.

This documentation describes the characteristics of the GPFS standard.

## List of files

List of files and folders contained in a GPFS stream, which is a folder compressed in ZIP format.

| Filename                                                          |    Mandatory    | Description                                                                                          |
|-------------------------------------------------------------------|:---------------:|------------------------------------------------------------------------------------------------------|
| [passengers.txt](en/passengers.txt.html)                          | **Mandatory** | 	Information concerning users who can use the transport network.                                     |
| [passenger_comments.txt](en/passenger_comments.txt.html)          |    Optional    | Comments associated to users.                                                                        |
| [passenger_tutors.txt](en/passenger_tutors.txt.html)              |    Optional    | Information concerning passengers' tutor.                                                            |
| [passenger_tags.txt](en/passenger_tags.txt.html)                  |    Optional    | Definition of the passeners' tags.                                                                   |
| [passenger_tickets.txt](en/passenger_tickets.txt.html)            |    Optional    | Transport tickets (tickets or subscriptions) associated to a passenger.                              |
| [profiles.txt](en/profiles.txt.html)                              |    Optional    | Passenger profiles.                                                                                  |
| [passenger_profiles.txt](en/passenger_profiles.txt.html)          |    Optional    | Association between a profile and a user.                                                            |
| [schools.txt](en/schools.txt.html)                                |    Optional    | Information concerning school data.                                                                  |
| [passenger_schools.txt](en/passenger_schools.txt.html)            |    Optional    | Association between schools and passengers.                                                          |
| [bookings.txt](en/bookings.txt.html)                              |    Optional    | Reservations associated with users.                                                                  |
| [calendars.txt](en/calendars.txt.html)                            |    Optional    | Information regarding operating schedules.                                                           |
| [calendar_dates.txt](en/calendar_dates.txt.html)                  |    Optional    | Information about dates to include or exclude from a calendar.                                       |
| [passenger_organization.txt](en/passenger_organizations.txt.html) |    Optional    | Association of one (or more) Organizing Authority(ies) to a user.                                    |
| pictures/                                                         |    Optional    | File containing users’ photos. The photo name must match the one defined in the passengers.txt file. |

## Requirements

The following prerequisites apply to file format and content:

* All files in a GPFS must be saved in TXT format and their values ​​will be separated by commas.
* File names are case sensitive.
* The first line of each file must contain the names of the columns used. If a field is Optional and not used, the column can be omitted.
* All field names are case sensitive.
* Values must not contain tabs or newlines.
* Field names and values must not have spaces before and after them.
* Files must be encoded in UTF-8.
* Files must be contained in a compressed folder in ZIP format.
* The order of lines in each file does not matter.


## Types

This is a list with the used [types](en/types.md).