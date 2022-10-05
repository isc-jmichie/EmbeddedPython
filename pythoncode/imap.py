
	from imaplib import IMAP4_SSL
	import email
	from email.header import decode_header
	
	# create an IMAP4 object with an SSL connection
	imap = IMAP4_SSL(self.IMAPServer, self.IMAPPort)
	
	#authenticate
	imap.login(self._CredentialsObj.Username, self._CredentialsObj.Password)
	
	# select inbox
	imap.select("Inbox", readonly=0)
	
	(retcode, messages) = imap.search(None, '(UNSEEN)')
	
	if retcode == 'OK':
		for i in messages[0].decode() :
			# fetch the email message by ID
			if i == " ":
				pass
			else:
				res, msg = imap.fetch(i, "(RFC822)")
			
				for response in msg:
					if isinstance(response, tuple):
						# parse a bytes email into a message object
						msg = email.message_from_bytes(response[1])
						# decode email sender
						From, encoding = decode_header(msg.get("From"))[0]
				
						if isinstance(From, bytes):
							From = From.decode(encoding)
				
						# if the email message is multipart
						if msg.is_multipart():
							pass
						else:
							# extract content type of email
							content_type = msg.get_content_type()

							# get the email body
							body = msg.get_payload(decode=True).decode()
							if content_type == "text/plain":
								#### change this to a request is created
                                ### it is filled (using From and body)
                                ### and then send it to the business process
							
	# close the connection and logout
	imap.close()
	imap.logout()