.class public Lgov/nist/javax/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# static fields
.field private static greylist computeContentLengthFromMessage:Z


# instance fields
.field private greylist parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

.field private greylist rawStringMessage:Ljava/lang/String;

.field protected greylist readBody:Z

.field private greylist strict:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    .line 88
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .registers 2
    .param p1, "exhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 98
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 99
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 100
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 625
    const-string v0, "SIP/2.0 180 Ringing\r\nVia: SIP/2.0/UDP 172.18.1.29:5060;branch=z9hG4bK43fc10fb4446d55fc5c8f969607991f4\r\nTo: \"0440\" <sip:0440@212.209.220.131>;tag=2600\r\nFrom: \"Andreas\" <sip:andreas@e-horizon.se>;tag=8524\r\nCall-ID: f51a1851c5f570606140f14c8eb64fd3@172.18.1.29\r\nCSeq: 1 INVITE\r\nMax-Forwards: 70\r\nRecord-Route: <sip:212.209.220.131:5060>\r\nContent-Length: 0\r\n\r\n"

    const-string v1, "REGISTER sip:nist.gov SIP/2.0\r\nVia: SIP/2.0/UDP 129.6.55.182:14826\r\nMax-Forwards: 70\r\nFrom: <sip:mranga@nist.gov>;tag=6fcd5c7ace8b4a45acf0f0cd539b168b;epid=0d4c418ddf\r\nTo: <sip:mranga@nist.gov>\r\nCall-ID: c5679907eb954a8da9f9dceb282d7230@129.6.55.182\r\nCSeq: 1 REGISTER\r\nContact: <sip:129.6.55.182:14826>;methods=\"INVITE, MESSAGE, INFO, SUBSCRIBE, OPTIONS, BYE, CANCEL, NOTIFY, ACK, REFER\"\r\nUser-Agent: RTC/(Microsoft RTC)\r\nEvent:  registration\r\nAllow-Events: presence\r\nContent-Length: 0\r\n\r\nINVITE sip:littleguy@there.com:5060 SIP/2.0\r\nVia: SIP/2.0/UDP 65.243.118.100:5050\r\nFrom: M. Ranganathan  <sip:M.Ranganathan@sipbakeoff.com>;tag=1234\r\nTo: \"littleguy@there.com\" <sip:littleguy@there.com:5060> \r\nCall-ID: Q2AboBsaGn9!?x6@sipbakeoff.com \r\nCSeq: 1 INVITE \r\nContent-Length: 247\r\n\r\nv=0\r\no=4855 13760799956958020 13760799956958020 IN IP4  129.6.55.78\r\ns=mysession session\r\np=+46 8 52018010\r\nc=IN IP4  129.6.55.78\r\nt=0 0\r\nm=audio 6022 RTP/AVP 0 4 18\r\na=rtpmap:0 PCMU/8000\r\na=rtpmap:4 G723/8000\r\na=rtpmap:18 G729A/8000\r\na=ptime:20\r\n"

    const-string v2, "SIP/2.0 200 OK\r\nTo: \"The Little Blister\" <sip:LittleGuy@there.com>;tag=469bc066\r\nFrom: \"The Master Blaster\" <sip:BigGuy@here.com>;tag=11\r\nVia: SIP/2.0/UDP 139.10.134.246:5060;branch=z9hG4bK8b0a86f6_1030c7d18e0_17;received=139.10.134.246\r\nCall-ID: 1030c7d18ae_a97b0b_b@8b0a86f6\r\nCSeq: 1 SUBSCRIBE\r\nContact: <sip:172.16.11.162:5070>\r\nContent-Length: 0\r\n\r\n"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "messages":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1f

    .line 699
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;

    invoke-direct {v3, v0}, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;-><init>([Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 702
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method private greylist processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 13
    .param p1, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 359
    const-string v0, "SIP/2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\n"

    if-nez v0, :cond_44

    .line 360
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    move-object v4, v0

    .line 362
    .local v4, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_10
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    .line 364
    .local v0, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    move-object v1, v4

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    :try_end_30
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_30} :catch_32

    .line 372
    .end local v0    # "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    move-object v6, p1

    goto :goto_7e

    .line 365
    :catch_32
    move-exception v0

    move-object v3, v0

    .line 366
    .local v3, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_43

    .line 367
    iget-object v2, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v5, Lgov/nist/javax/sip/header/RequestLine;

    iget-object v7, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v6, p1

    .end local p1    # "firstLine":Ljava/lang/String;
    .local v6, "firstLine":Ljava/lang/String;
    invoke-interface/range {v2 .. v7}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v3    # "ex":Ljava/text/ParseException;
    goto :goto_7e

    .line 370
    .end local v6    # "firstLine":Ljava/lang/String;
    .restart local v3    # "ex":Ljava/text/ParseException;
    .restart local p1    # "firstLine":Ljava/lang/String;
    :cond_43
    throw v3

    .line 374
    .end local v3    # "ex":Ljava/text/ParseException;
    .end local v4    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_44
    move-object v6, p1

    .end local p1    # "firstLine":Ljava/lang/String;
    .restart local v6    # "firstLine":Ljava/lang/String;
    new-instance v7, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v7}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 376
    .local v7, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_4a
    new-instance p1, Lgov/nist/javax/sip/parser/StatusLineParser;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object p1

    .line 377
    .local p1, "sl":Lgov/nist/javax/sip/header/StatusLine;
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    :try_end_6a
    .catch Ljava/text/ParseException; {:try_start_4a .. :try_end_6a} :catch_6b

    .line 385
    .end local p1    # "sl":Lgov/nist/javax/sip/header/StatusLine;
    goto :goto_7d

    .line 378
    :catch_6b
    move-exception v0

    move-object p1, v0

    .line 379
    .local p1, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_7f

    .line 380
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const-class v8, Lgov/nist/javax/sip/header/StatusLine;

    iget-object v10, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v9, v6

    move-object v6, p1

    .end local p1    # "ex":Ljava/text/ParseException;
    .local v6, "ex":Ljava/text/ParseException;
    .local v9, "firstLine":Ljava/lang/String;
    invoke-interface/range {v5 .. v10}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 387
    .end local v9    # "firstLine":Ljava/lang/String;
    .local v6, "firstLine":Ljava/lang/String;
    :goto_7d
    move-object v4, v7

    .end local v7    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v4    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_7e
    return-object v4

    .line 383
    .end local v4    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "ex":Ljava/text/ParseException;
    :cond_7f
    throw p1
.end method

.method private greylist processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 11
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 391
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_58

    .line 394
    :cond_9
    const/4 v7, 0x0

    .line 396
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v0
    :try_end_21
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_21} :catch_4b

    move-object v7, v0

    .line 401
    nop

    .line 404
    :try_start_23
    invoke-virtual {v7}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    .line 405
    .local v0, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_2b
    .catch Ljava/text/ParseException; {:try_start_23 .. :try_end_2b} :catch_2c

    .line 418
    .end local v0    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_4a

    .line 406
    :catch_2c
    move-exception v0

    move-object v2, v0

    .line 407
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    if-eqz v0, :cond_4a

    .line 408
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "headerName":Ljava/lang/String;
    invoke-static {v0}, Lgov/nist/javax/sip/header/NameMap;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 410
    .local v1, "headerClass":Ljava/lang/Class;
    if-nez v1, :cond_40

    .line 411
    const-class v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    move-object v4, v1

    goto :goto_41

    .line 410
    :cond_40
    move-object v4, v1

    .line 414
    .end local v1    # "headerClass":Ljava/lang/Class;
    .local v4, "headerClass":Ljava/lang/Class;
    :goto_41
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v0    # "headerName":Ljava/lang/String;
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v4    # "headerClass":Ljava/lang/Class;
    :cond_4a
    :goto_4a
    return-void

    .line 397
    :catch_4b
    move-exception v0

    move-object v2, v0

    .line 398
    .restart local v2    # "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    const/4 v4, 0x0

    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    move-object v5, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 392
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v7    # "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :cond_58
    :goto_58
    return-void
.end method

.method public static greylist setComputeContentLengthFromMessage(Z)V
    .registers 1
    .param p0, "computeContentLengthFromMessage"    # Z

    .line 616
    sput-boolean p0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    .line 617
    return-void
.end method

.method private greylist trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .line 341
    if-nez p1, :cond_3

    .line 342
    return-object p1

    .line 344
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 345
    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_16

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_16

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 348
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 349
    return-object p1

    .line 351
    :cond_1f
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 352
    const-string v1, ""

    return-object v1

    .line 354
    :cond_25
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 433
    new-instance v0, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v1

    return-object v1
.end method

.method public greylist parseHost(Ljava/lang/String;)Lgov/nist/core/Host;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 465
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .local v0, "lexer":Lgov/nist/javax/sip/parser/Lexer;
    new-instance v1, Lgov/nist/core/HostNameParser;

    invoke-direct {v1, v0}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    invoke-virtual {v1}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v1

    return-object v1
.end method

.method public greylist parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 533
    .local v1, "end":I
    :goto_7
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_13

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 537
    :cond_13
    :goto_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_17
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_17} :catch_77

    if-gt v3, v4, :cond_1c

    .line 538
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 543
    :cond_1c
    nop

    .line 545
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 546
    .local v3, "buffer":Ljava/lang/StringBuffer;
    move v5, v0

    .line 547
    .local v5, "i":I
    move v6, v0

    .line 548
    .local v6, "lineStart":I
    const/4 v7, 0x0

    .line 549
    .local v7, "endOfLine":Z
    :goto_27
    const/16 v8, 0xa

    if-gt v5, v1, :cond_56

    .line 550
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 551
    .local v9, "c":C
    const/16 v10, 0xd

    if-eq v9, v10, :cond_48

    if-ne v9, v8, :cond_36

    goto :goto_48

    .line 558
    :cond_36
    if-eqz v7, :cond_52

    .line 559
    const/4 v7, 0x0

    .line 560
    if-eq v9, v4, :cond_42

    const/16 v8, 0x9

    if-ne v9, v8, :cond_40

    goto :goto_42

    .line 565
    :cond_40
    move v6, v5

    goto :goto_52

    .line 561
    :cond_42
    :goto_42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    add-int/lit8 v6, v5, 0x1

    goto :goto_52

    .line 552
    :cond_48
    :goto_48
    if-nez v7, :cond_52

    .line 553
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const/4 v7, 0x1

    .line 570
    :cond_52
    :goto_52
    nop

    .end local v9    # "c":C
    add-int/lit8 v5, v5, 0x1

    .line 571
    goto :goto_27

    .line 572
    :cond_56
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v4

    .line 576
    .local v4, "hp":Lgov/nist/javax/sip/parser/HeaderParser;
    if-eqz v4, :cond_6f

    .line 578
    invoke-virtual {v4}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    return-object v2

    .line 577
    :cond_6f
    new-instance v8, Ljava/text/ParseException;

    const-string v9, "could not create parser"

    invoke-direct {v8, v9, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 540
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "hp":Lgov/nist/javax/sip/parser/HeaderParser;
    .end local v5    # "i":I
    .end local v6    # "lineStart":I
    .end local v7    # "endOfLine":Z
    :catch_77
    move-exception v3

    .line 542
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Empty header."

    invoke-direct {v4, v5, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public greylist parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 15
    .param p1, "msgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    if-eqz p1, :cond_fb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_fb

    .line 244
    :cond_b
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    .line 246
    const/4 v1, 0x0

    .line 250
    .local v1, "i":I
    :goto_e
    :try_start_e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_12} :catch_f9
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_e .. :try_end_12} :catch_f7

    const/16 v3, 0x20

    if-ge v2, v3, :cond_19

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 258
    :cond_19
    nop

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "currentLine":Ljava/lang/String;
    const/4 v2, 0x0

    .line 263
    .local v2, "currentHeader":Ljava/lang/String;
    const/4 v4, 0x1

    .line 264
    .local v4, "isFirstLine":Z
    const/4 v5, 0x0

    .line 267
    .local v5, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_1e
    move v6, v1

    .line 271
    .local v6, "lineStart":I
    :try_start_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 272
    .local v7, "c":C
    :goto_23
    const/16 v8, 0xa

    const/16 v9, 0xd

    if-eq v7, v9, :cond_33

    if-eq v7, v8, :cond_33

    .line 273
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_31
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_31} :catch_a5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f .. :try_end_31} :catch_a3

    move v7, v8

    goto :goto_23

    .line 280
    .end local v7    # "c":C
    :cond_33
    nop

    .line 283
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    if-nez v7, :cond_49

    .line 288
    if-eqz v2, :cond_7a

    .line 289
    invoke-direct {p0, v2, v5}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    goto :goto_7a

    .line 293
    :cond_49
    if-eqz v4, :cond_50

    .line 294
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v5

    goto :goto_7a

    .line 296
    :cond_50
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 297
    .local v11, "firstChar":C
    const/16 v12, 0x9

    if-eq v11, v12, :cond_63

    if-ne v11, v3, :cond_5c

    goto :goto_63

    .line 305
    :cond_5c
    if-eqz v2, :cond_61

    .line 306
    invoke-direct {p0, v2, v5}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 308
    :cond_61
    move-object v2, v0

    goto :goto_7a

    .line 298
    :cond_63
    :goto_63
    if-eqz v2, :cond_9b

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .end local v11    # "firstChar":C
    :cond_7a
    :goto_7a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_92

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v9, v1, 0x1

    if-le v7, v9, :cond_92

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_92

    .line 314
    add-int/lit8 v1, v1, 0x1

    .line 316
    :cond_92
    add-int/2addr v1, v10

    .line 318
    const/4 v4, 0x0

    .line 320
    .end local v6    # "lineStart":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1e

    goto :goto_a7

    .line 299
    .restart local v6    # "lineStart":I
    .restart local v11    # "firstChar":C
    :cond_9b
    new-instance v3, Ljava/text/ParseException;

    const-string v8, "Bad header continuation."

    invoke-direct {v3, v8, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 278
    .end local v11    # "firstChar":C
    :catch_a3
    move-exception v3

    .line 279
    .local v3, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_a7

    .line 275
    .end local v3    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_a5
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    nop

    .line 322
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "lineStart":I
    :goto_a7
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    .line 325
    iget-boolean v3, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v3, :cond_f6

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    if-eqz v3, :cond_f6

    .line 326
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    if-eqz v3, :cond_d2

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "body":Ljava/lang/String;
    iget-boolean v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    sget-boolean v7, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent(Ljava/lang/String;ZZI)V

    .end local v3    # "body":Ljava/lang/String;
    goto :goto_f5

    .line 329
    :cond_d2
    sget-boolean v3, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    if-nez v3, :cond_f5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    if-nez v3, :cond_f5

    const-string v3, "\r\n\r\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f5

    .line 330
    iget-boolean v3, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    if-nez v3, :cond_ed

    goto :goto_f6

    .line 331
    :cond_ed
    new-instance v3, Ljava/text/ParseException;

    const-string v6, "Extraneous characters at the end of the message "

    invoke-direct {v3, v6, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 329
    :cond_f5
    :goto_f5
    nop

    .line 337
    :cond_f6
    :goto_f6
    return-object v5

    .line 256
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v2    # "currentHeader":Ljava/lang/String;
    .end local v4    # "isFirstLine":Z
    .end local v5    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_f7
    move-exception v2

    .line 257
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    return-object v0

    .line 253
    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_f9
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v0

    .line 242
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_fb
    :goto_fb
    return-object v0
.end method

.method public greylist parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;
    .registers 19
    .param p1, "msgBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_f0

    array-length v0, v2

    if-nez v0, :cond_c

    goto/16 :goto_f0

    .line 133
    :cond_c
    const/4 v0, 0x0

    move v4, v0

    .line 137
    .local v4, "i":I
    :goto_e
    :try_start_e
    aget-byte v0, v2, v4
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_10} :catch_ee

    const/16 v5, 0x20

    if-ge v0, v5, :cond_17

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 143
    :cond_17
    nop

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "currentLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, "currentHeader":Ljava/lang/String;
    const/4 v6, 0x1

    .line 149
    .local v6, "isFirstLine":Z
    const/4 v7, 0x0

    move-object/from16 v16, v3

    move-object v3, v0

    move v0, v4

    move-object/from16 v4, v16

    .line 152
    .local v0, "i":I
    .local v3, "currentLine":Ljava/lang/String;
    .local v4, "currentHeader":Ljava/lang/String;
    .local v7, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_22
    move v8, v0

    move v9, v0

    .line 156
    .end local v0    # "i":I
    .local v8, "lineStart":I
    .local v9, "i":I
    :goto_24
    const/4 v10, 0x0

    :try_start_25
    aget-byte v0, v2, v9

    const/16 v11, 0xa

    const/16 v12, 0xd

    if-eq v0, v12, :cond_34

    aget-byte v0, v2, v9
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_2f} :catch_b6

    if-eq v0, v11, :cond_34

    .line 157
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 162
    :cond_34
    nop

    .line 163
    sub-int v13, v9, v8

    .line 167
    .local v13, "lineLength":I
    :try_start_37
    new-instance v0, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v0, v2, v8, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_3e} :catch_ad

    .line 170
    .end local v3    # "currentLine":Ljava/lang/String;
    .local v0, "currentLine":Ljava/lang/String;
    nop

    .line 172
    invoke-direct {v1, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .end local v0    # "currentLine":Ljava/lang/String;
    .restart local v3    # "currentLine":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_52

    .line 176
    if-eqz v4, :cond_85

    if-eqz v7, :cond_85

    .line 177
    invoke-direct {v1, v4, v7}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    goto :goto_85

    .line 182
    :cond_52
    if-eqz v6, :cond_5a

    .line 183
    invoke-direct {v1, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v0

    move-object v7, v0

    .end local v7    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .local v0, "message":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_85

    .line 185
    .end local v0    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_5a
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    .local v0, "firstChar":C
    const/16 v15, 0x9

    if-eq v0, v15, :cond_6e

    if-ne v0, v5, :cond_65

    goto :goto_6e

    .line 194
    :cond_65
    if-eqz v4, :cond_6c

    if-eqz v7, :cond_6c

    .line 195
    invoke-direct {v1, v4, v7}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 197
    :cond_6c
    move-object v4, v3

    goto :goto_85

    .line 187
    :cond_6e
    :goto_6e
    if-eqz v4, :cond_a5

    .line 191
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .end local v0    # "firstChar":C
    :cond_85
    :goto_85
    aget-byte v0, v2, v9

    if-ne v0, v12, :cond_96

    array-length v0, v2

    add-int/lit8 v5, v9, 0x1

    if-le v0, v5, :cond_96

    add-int/lit8 v0, v9, 0x1

    aget-byte v0, v2, v0

    if-ne v0, v11, :cond_96

    .line 203
    add-int/lit8 v9, v9, 0x1

    .line 205
    :cond_96
    add-int/lit8 v0, v9, 0x1

    .line 207
    .end local v9    # "i":I
    .local v0, "i":I
    const/4 v6, 0x0

    .line 208
    .end local v8    # "lineStart":I
    .end local v13    # "lineLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_a1

    move v9, v0

    goto :goto_b8

    :cond_a1
    const/16 v5, 0x20

    goto/16 :goto_22

    .line 188
    .local v0, "firstChar":C
    .restart local v8    # "lineStart":I
    .restart local v9    # "i":I
    .restart local v13    # "lineLength":I
    :cond_a5
    new-instance v5, Ljava/text/ParseException;

    const-string v11, "Bad header continuation."

    invoke-direct {v5, v11, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 168
    .end local v0    # "firstChar":C
    :catch_ad
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/text/ParseException;

    const-string v11, "Bad message encoding!"

    invoke-direct {v5, v11, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 159
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "lineLength":I
    :catch_b6
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    nop

    .line 210
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v8    # "lineStart":I
    :goto_b8
    if-eqz v7, :cond_e6

    .line 211
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    .line 213
    iget-boolean v0, v1, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    if-eqz v0, :cond_e5

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 214
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v0

    if-eqz v0, :cond_e5

    .line 216
    array-length v0, v2

    sub-int/2addr v0, v9

    .line 218
    .local v0, "bodyLength":I
    new-array v5, v0, [B

    .line 219
    .local v5, "body":[B
    invoke-static {v2, v9, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    sget-boolean v8, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v10

    invoke-virtual {v7, v5, v8, v10}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([BZI)V

    .line 223
    .end local v0    # "bodyLength":I
    .end local v5    # "body":[B
    :cond_e5
    return-object v7

    .line 210
    :cond_e6
    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Bad message"

    invoke-direct {v0, v5, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 140
    .end local v3    # "currentLine":Ljava/lang/String;
    .end local v6    # "isFirstLine":Z
    .end local v7    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v9    # "i":I
    .local v4, "i":I
    :catch_ee
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v3

    .line 131
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "i":I
    :cond_f0
    :goto_f0
    return-object v3
.end method

.method public greylist parseSIPRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/RequestLine;
    .registers 4
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    return-object v0
.end method

.method public greylist parseSIPStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/StatusLine;
    .registers 4
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public greylist parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 499
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 500
    :catch_b
    move-exception v0

    .line 501
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not a SIP URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist parseTelephoneNumber(Ljava/lang/String;)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 4
    .param p1, "telephone_number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 483
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public greylist parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 516
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public greylist setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .registers 2
    .param p1, "pexhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 110
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    .line 111
    return-void
.end method

.method public greylist setStrict(Z)V
    .registers 2
    .param p1, "strict"    # Z

    .line 705
    iput-boolean p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    .line 707
    return-void
.end method
