# download file
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# convert tiap sheet pada file .xlsx menjadi file .csv individual
in2csv weather_data.xlsx --sheet weather_2014 > weather_2014.csv
in2csv weather_data.xlsx --sheet weather_2015 > weather_2015.csv

# gabungkan data menjadi 1 file .csv
csvstack weather_2014.csv weather_2015.csv > weather.csv

# hapus weather_data.xlsx
rm weather_data.xlsx

# sample dengan rate 0.3 dan simpan ke dalam file .csv
cat weather.csv | sample -r 0.3 > sample_weather.csv
