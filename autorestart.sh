running=1

finish()
{
    running=0
}

trap finish SIGINT

while (( running )); do
    echo "Restarting server on crash.."
    mono InfiniteServer.exe
    sleep 5
done
