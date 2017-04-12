while read p; do
echo $p
curl -O $p -o 'pdf/$p' -H 'Accept-Encoding: gzip, deflate, sdch, br' -H 'Accept-Language: en-US,en;q=0.8,es;q=0.6,fr^C=0.4' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Cookie: sortField=RecordingDate; sortDir=asc; pageSize=100; f5_cspm=1234; JSESSIONID=566EE6A1F53734C74AFECA8DEA389AE7; _ga=GA1.3.1758195758.1491842180' -H 'Connection: keep-alive' --compressed;
mmv "pdf/*.pdf?*" "pdf/#1.pdf"
sleep 60
done <links.txt

