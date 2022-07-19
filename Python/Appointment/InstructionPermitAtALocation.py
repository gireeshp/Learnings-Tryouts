import requests
import json
from datetime import datetime
import time

street = '45 Kilmer Road'.upper().strip()
targetAvailabilityDateTime = '09/10/2022 09:00 AM'

targetDateTime = datetime.strptime(targetAvailabilityDateTime, '%m/%d/%Y %I:%M %p')
url = 'https://telegov.njportal.com/njmvc/AppointmentWizard/15'
response = requests.get(url).text

locationDataIdx = response.find('var locationData = ')
timeDataIdx = response.find('var timeData = ')
locationModelIdx = response.find ('var locationModel = ')

locationDataStr = response[locationDataIdx+19:timeDataIdx-11]
locationData = json.loads(locationDataStr)

for loc in locationData:
    if street in loc.get('Street1').upper().strip():
        locId = loc.get('Id')

print ('Location ID we are looking for is: ',locId)

while True:

    response = requests.get(url).text

    timeDataIdx = response.find('var timeData = ')
    locationModelIdx = response.find ('var locationModel = ')

    timeDataStr = response[timeDataIdx+15:locationModelIdx-1].strip()
    timeData = json.loads(timeDataStr)

    for slot in timeData:
        if locId == slot.get('LocationId'):
            firstOpenSlotStr = slot.get('FirstOpenSlot')
            idx = firstOpenSlotStr.find('Next Available: ')
            firstAvailabilityDateTimeStr = firstOpenSlotStr[idx+16:999].strip()

            firstAvailabilityDateTime = datetime.strptime(firstAvailabilityDateTimeStr, '%m/%d/%Y %I:%M %p')

            if firstAvailabilityDateTime < targetDateTime:
                print ('Found availability before the target date time at: ',firstAvailabilityDateTime)
                break
            else:
                print ('First availability at',street,' is: ', firstAvailabilityDateTime,' :(')
    
    time.sleep(10)