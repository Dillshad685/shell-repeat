R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-repeat"
SCRIPT_PATH=$(echo $0 | cut -d "."  -f1)
SCRIPT_NAME="$LOG_FOLDER/$SCRIPT_PATH.log"
mkdir -p $LOG_FOLDER

START_TIME=$(date +%s)
if [ $(id -u) -eq 0 ]; then
    echo "login with sudo users"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R error while installing $2 $N" 
        exit 1
    else 
        echo -e "$G $2 installed successfully $N"
    fi
}

dnf list installed mysql

if [ $? -eq 0 ]; then
    dnf install mysql -y  &>> $SCRIPT_NAME  &
    VALIDATE $? "mysql"
else
    echo -e "$Y nginx $N installed $G successfully $N"
fi

dnf list installed nginx 

if [ $? -ne 0 ]; then
    dnf install nginx -y &>> $SCRIPT_NAME  &
    VALIDATE $? "nginx"
else
    echo -e "$Y nginx $N installed $G successfully $N"
fi

END_TIME =$(date +%s)
TOTAL_TIME=$(($END_TIME - $START_TIME))
echo "SCRIPT_EXECUTION time is $Y $TOTAL_TIME SEC $N"

