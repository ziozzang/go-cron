# go-cron

[![Circle CI](https://circleci.com/gh/anarcher/go-cron.svg?style=svg)](https://circleci.com/gh/anarcher/go-cron)

## Usage

### WARNING!
* go-cron's cron syntax is diffrent from any outher cron system.
```
# Format looks like same. but fileds is diffrent
* * * * * cmd
# First fileds is for second. (WTF?!)
# Second one is for minute... next hours, day, month....

```


### Docker 

- newest modified images is HERE=> https://hub.docker.com/r/ziozzang/go-cron/
     - Based on golang:alpine version.
     - with usaful utilities (vim/mc/htop/python and some packages...)
- Original Go-cron's Docker Images is(Duh! it's too old!!): https://registry.hub.docker.com/u/anarcher/go-cron/

```
###### Running Modified version of.... ######
# Usage of go-cron:
#    -cpu=4: maximum number of CPUs
#    -file="crontab": crontab file path
docker run ziozzang/go-cron -h                            
docker run -v /some-file-directory:/opt ziozzang/go-cron -file=/opt/crontab
```

* the contents of 'crontab' file

```
# Once Per once 2 min
0 */2 * * * python -c "print 'hello world! python!(Interval 2min)'"

# Once Per Every 5 Sec
*/5 * * * * python -c "print 'hello world! python!(Interval 5sec)'"

```
# Running Original version of...
$docker run anarcher/go-cron -h                            
Usage of go-cron:
    -cpu=4: maximum number of CPUs
    -file="crontab": crontab file path
```

```
$ docker run go-cron -file=crontab                                                              
2015/06/18 07:53:38 Add cron job spec:*/1 * * * * cmd:echo "hello world!" err:<nil>
2015/06/18 07:53:38 Add cron job spec:*/1 * * * * cmd:echo "hello" ; sleep 1 ; echo "world" err:<nil>
2015/06/18 07:53:38 Start runner
2015/06/18 07:53:39 cmd:echo "hello world!" out:hello world! err:<nil>
2015/06/18 07:53:40 cmd:echo "hello world!" out:hello world! err:<nil>
2015/06/18 07:53:40 cmd:echo "hello" ; sleep 1 ; echo "world" out:hello world err:<nil>
^C2015/06/18 07:53:40 Got signal:  interrupt
2015/06/18 07:53:40 Stop runner
2015/06/18 07:53:40 End cron
```

