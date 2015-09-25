#!/bin/sh

# We run bundle each time to ensure you have everything you need to run the app.
bundle install --quiet
echo "#################################"
echo ""
echo "Navigate to http://0.0.0.0:3001 to see the home page"
echo ""
bundle exec rails s -b 0.0.0.0 -p 3001
