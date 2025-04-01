import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import sqlite3
from sqlite3 import Error

sender = "" # put your email address from which you will send the mails
passw = "" # put your password
db_name = "db_empresa.sqlite3"


# Connection
try:
    con = sqlite3.connect(db_name)
    cursor = con.cursor()
except:
    print(Error)

def get_users():
    cursor.execute("SELECT nombre, email FROM usuarios_registrados")
    return cursor.fetchall()

def body_message(name):

    return f"""Welcome {name}!!
    
This is an example of what the body could be.

blah blah blah
blah blah blah

Best regards,

X"""

def send_mail(mail_user, name):
    message = MIMEMultipart()
    message['To'] = mail_user
    message['Subject'] = f"We have something for you, {name}"

    body = body_message(name)

    message.attach(MIMEText(body, 'plain'))

    smtp_server.sendmail(sender, mail_user, message.as_string())


users = get_users() # Name of the user: user[0], email: user[1]

smtp_server = smtplib.SMTP("smtp.gmail.com", 587)
smtp_server.starttls()
smtp_server.login(sender, passw)


for user in users:
    send_mail(user[1], user[0])
    

smtp_server.quit()
print("Emails sent")