function ngrok
{
    param(
        $port
    )
    ngrok.exe http https://localhost:$port -host -header = "localhost:$port"
}
