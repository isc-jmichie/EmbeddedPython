# Embedded Python Exercise

In this exercise, a simple production will be created that will read mail from a mail server using the IMAP protocol (as there is no standard inbound adapter for this, unlike for POP3, this will be implemented using the Python imaplib library), then send this mail to a process which checks the sender. If the name of the sender corresponds to a certain person, the mail will go to an operation which will create a pdf (using python and the reportlab library) containing the content (an amount owed) and the receiver (the sender of the mail).

## Step 1

Create a namespace with the name PYTHON, then connect to this namespace using the ObjectScript extensions and import and compile the code in the src folder of the project.

Now open this production in the management portal.

## Step 2

Complete the SaveAsPDF class. Use the pythoncode createpdf.py under the pythoncode folder. Write this in ObjectScript code. (Hint: import the required libraries using the Import method from the %SYS.Python class. Do not forget to install the libraries first.) Import and compile the changes. If not already, enable this production item and test it (enable testing first).

## Step 3

Change the business process from the management portal so that it checks for mails only for a single email (e.g. use jelle.michiels@intersystems.com and ask me to send a mail in the end, or use your own mail adress). After saving and compiling it in the management portal, export it so the changes are persisted to the src folder in VS code.

## Step 4

Complete the business service IMAPEmailService with code written in python (imap.py) opening a connection to the IMAP mail server. Add the required parts to create a requests (see EmailContents.cls), fill this request and then send it to the business process from step 3.

## Step 5 

Create a set of credentials for your mail account (in the management portal go to Interoperability, Config, Credentials) and then complete the settings of the business service in the production (or ask me to provide you with a mail account + login).

## Step 6

Test the full process by sending a mail with an invalid and valid address (according to the business process) to the configured mail account. (Or ask me to do so)


