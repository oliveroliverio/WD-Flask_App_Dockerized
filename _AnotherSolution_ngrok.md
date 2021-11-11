# ngrok

## May not need to dockerize app
[source](https://www.youtube.com/watch?v=DCxt9SAnkyc)

This tunnels localhost traffic that can be access remotely

1. sign up for free account (only one connection/tunnel)
2. download and install `ngrok` on Macbook pro
   1. https://dashboard.ngrok.com/get-started/setup
3. connect to account by running script

4. Go somewhere else
5. SSH VSCode into MBP (24.4.58.130)
6. Develop, run flask app, see what port it runs on (usually 5000...localhost:5000)
7. Run the ngrok command

```
./ngrok http 3000
```
8. Look at the output and see what public URL is displayed
9. Copy and paste that to URL to view website you're working on
10. Develop remotely, monitor changes
11. repeat
12. Now you can do WD with GANs that's currently not possible on your M1 mac.
