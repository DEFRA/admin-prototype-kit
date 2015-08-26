# We run bundle each time to ensure you have everything you need to run the app.
bundle
echo "#################################"
echo ""
echo "Navigate to http://localhost:3001 to see the home page"
echo ""
bundle exec rails s -p 3001
