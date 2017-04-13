while read p; do
echo $p
curl -O $p -H 'Accept-Language: en-US,en;q=0.8,es;q=0.6,fr;q=0.4' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Cookie: sortField=RecordingDate; sortDir=asc; pageSize=100; JSESSIONID=78B2259595E0E03C248C4C19EDB1285C; _ga=GA1.3.1758195758.1491842180' -H 'Connection: keep-alive' --compressed
mmv "*.pdf?*" "pdf/#1.pdf"
sleep 10
done <links.txt
