from typing import Text
import requests
import urllib.request
import re
import time
# from bs4 import BeautifulSoup

url = "https://telegov.njportal.com/njmvc/AppointmentWizard"

while True:
    response = requests.get(url).text

    ind = response.find("KNOWLEDGE TESTING")
    print (ind)
    aoi = response[ind+200:ind + 500]
    print (aoi)

    z = re.search("([0-9]{1,}) Appointments Available ", aoi)
    numOfAppointmentsAvailable = int(z.group(1))
    if numOfAppointmentsAvailable > 0:
        print ("Have some appointments now")
    # else:
    #     print (":(")

    time.sleep(5)