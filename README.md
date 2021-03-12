# hydrateOclock
Reminds users to stay hydrated throughout the day.
## Setup
1. Clone the repo `git clone https://github.com/jngbot/hydrateOclock.git`
2. Go into project directory `cd hydrateOclock`
3. Run the script below to set the script up as a cron job (modify to change notification frequency):

        crontab -l | { cat; echo "*/30 * * * * bash $pwd/hydrateOclock.sh && exit "; } | crontab -
