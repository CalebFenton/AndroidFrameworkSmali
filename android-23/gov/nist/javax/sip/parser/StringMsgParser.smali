.class public Lgov/nist/javax/sip/parser/StringMsgParser;
.super Ljava/lang/Object;
.source "StringMsgParser.java"


# static fields
.field private static computeContentLengthFromMessage:Z


# instance fields
.field private parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

.field private rawStringMessage:Ljava/lang/String;

.field protected readBody:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    #@3
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    #@6
    .line 85
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .locals 0
    .param p1, "exhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@5
    .line 97
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    const/4 v2, 0x3

    #@1
    new-array v1, v2, [Ljava/lang/String;

    #@3
    .line 626
    const-string/jumbo v2, "SIP/2.0 200 OK\r\nTo: \"The Little Blister\" <sip:LittleGuy@there.com>;tag=469bc066\r\nFrom: \"The Master Blaster\" <sip:BigGuy@here.com>;tag=11\r\nVia: SIP/2.0/UDP 139.10.134.246:5060;branch=z9hG4bK8b0a86f6_1030c7d18e0_17;received=139.10.134.246\r\nCall-ID: 1030c7d18ae_a97b0b_b@8b0a86f6\r\nCSeq: 1 SUBSCRIBE\r\nContact: <sip:172.16.11.162:5070>\r\nContent-Length: 0\r\n\r\n"

    #@6
    const/4 v3, 0x0

    #@7
    aput-object v2, v1, v3

    #@9
    .line 635
    const-string/jumbo v2, "SIP/2.0 180 Ringing\r\nVia: SIP/2.0/UDP 172.18.1.29:5060;branch=z9hG4bK43fc10fb4446d55fc5c8f969607991f4\r\nTo: \"0440\" <sip:0440@212.209.220.131>;tag=2600\r\nFrom: \"Andreas\" <sip:andreas@e-horizon.se>;tag=8524\r\nCall-ID: f51a1851c5f570606140f14c8eb64fd3@172.18.1.29\r\nCSeq: 1 INVITE\r\nMax-Forwards: 70\r\nRecord-Route: <sip:212.209.220.131:5060>\r\nContent-Length: 0\r\n\r\n"

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 643
    const-string/jumbo v2, "REGISTER sip:nist.gov SIP/2.0\r\nVia: SIP/2.0/UDP 129.6.55.182:14826\r\nMax-Forwards: 70\r\nFrom: <sip:mranga@nist.gov>;tag=6fcd5c7ace8b4a45acf0f0cd539b168b;epid=0d4c418ddf\r\nTo: <sip:mranga@nist.gov>\r\nCall-ID: c5679907eb954a8da9f9dceb282d7230@129.6.55.182\r\nCSeq: 1 REGISTER\r\nContact: <sip:129.6.55.182:14826>;methods=\"INVITE, MESSAGE, INFO, SUBSCRIBE, OPTIONS, BYE, CANCEL, NOTIFY, ACK, REFER\"\r\nUser-Agent: RTC/(Microsoft RTC)\r\nEvent:  registration\r\nAllow-Events: presence\r\nContent-Length: 0\r\n\r\nINVITE sip:littleguy@there.com:5060 SIP/2.0\r\nVia: SIP/2.0/UDP 65.243.118.100:5050\r\nFrom: M. Ranganathan  <sip:M.Ranganathan@sipbakeoff.com>;tag=1234\r\nTo: \"littleguy@there.com\" <sip:littleguy@there.com:5060> \r\nCall-ID: Q2AboBsaGn9!?x6@sipbakeoff.com \r\nCSeq: 1 INVITE \r\nContent-Length: 247\r\n\r\nv=0\r\no=4855 13760799956958020 13760799956958020 IN IP4  129.6.55.78\r\ns=mysession session\r\np=+46 8 52018010\r\nc=IN IP4  129.6.55.78\r\nt=0 0\r\nm=audio 6022 RTP/AVP 0 4 18\r\na=rtpmap:0 PCMU/8000\r\na=rtpmap:4 G723/8000\r\na=rtpmap:18 G729A/8000\r\na=ptime:20\r\n"

    #@12
    const/4 v3, 0x2

    #@13
    aput-object v2, v1, v3

    #@15
    .line 698
    .local v1, "messages":[Ljava/lang/String;
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    #@18
    if-ge v0, v2, :cond_0

    #@1a
    .line 699
    new-instance v2, Ljava/lang/Thread;

    #@1c
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;

    #@1e
    invoke-direct {v3, v1}, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;-><init>([Ljava/lang/String;)V

    #@21
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@24
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@27
    .line 698
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 624
    :cond_0
    return-void
.end method

.method private processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 9
    .param p1, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    const-string/jumbo v1, "SIP/2.0"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 360
    new-instance v3, Lgov/nist/javax/sip/message/SIPRequest;

    #@b
    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@e
    .line 362
    .local v3, "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/RequestLineParser;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, "\n"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    #@2a
    move-result-object v7

    #@2b
    .line 364
    .local v7, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    move-object v0, v3

    #@2c
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@2e
    move-object v1, v0

    #@2f
    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 387
    .end local v7    # "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    :goto_0
    return-object v3

    #@33
    .line 365
    :catch_0
    move-exception v2

    #@34
    .line 366
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 367
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@3a
    .line 368
    const-class v4, Lgov/nist/javax/sip/header/RequestLine;

    #@3c
    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    #@3e
    move-object v5, p1

    #@3f
    .line 367
    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    goto :goto_0

    #@43
    .line 370
    :cond_0
    throw v2

    #@44
    .line 374
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_1
    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    #@46
    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    #@49
    .line 376
    .restart local v3    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/parser/StatusLineParser;

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, "\n"

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    #@62
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    #@65
    move-result-object v8

    #@66
    .line 377
    .local v8, "sl":Lgov/nist/javax/sip/header/StatusLine;
    move-object v0, v3

    #@67
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@69
    move-object v1, v0

    #@6a
    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@6d
    goto :goto_0

    #@6e
    .line 378
    .end local v8    # "sl":Lgov/nist/javax/sip/header/StatusLine;
    :catch_1
    move-exception v2

    #@6f
    .line 379
    .restart local v2    # "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@71
    if-eqz v1, :cond_2

    #@73
    .line 380
    iget-object v1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@75
    .line 381
    const-class v4, Lgov/nist/javax/sip/header/StatusLine;

    #@77
    iget-object v6, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    #@79
    move-object v5, p1

    #@7a
    .line 380
    invoke-interface/range {v1 .. v6}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    goto :goto_0

    #@7e
    .line 383
    :cond_2
    throw v2
.end method

.method private processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 391
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 392
    :cond_0
    return-void

    #@a
    .line 394
    :cond_1
    const/4 v7, 0x0

    #@b
    .line 396
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v2, "\n"

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v7

    #@23
    .line 404
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :try_start_1
    invoke-virtual {v7}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@26
    move-result-object v8

    #@27
    .line 405
    .local v8, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v0, 0x0

    #@28
    invoke-virtual {p2, v8, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 390
    .end local v8    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2
    :goto_0
    return-void

    #@2c
    .line 397
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :catch_0
    move-exception v1

    #@2d
    .line 398
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@2f
    .line 399
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    #@31
    move-object v2, p2

    #@32
    move-object v4, p1

    #@33
    .line 398
    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 400
    return-void

    #@37
    .line 406
    .end local v1    # "ex":Ljava/text/ParseException;
    .local v7, "headerParser":Lgov/nist/javax/sip/parser/HeaderParser;
    :catch_1
    move-exception v1

    #@38
    .line 407
    .restart local v1    # "ex":Ljava/text/ParseException;
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 408
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 409
    .local v6, "headerName":Ljava/lang/String;
    invoke-static {v6}, Lgov/nist/javax/sip/header/NameMap;->getClassFromName(Ljava/lang/String;)Ljava/lang/Class;

    #@43
    move-result-object v3

    #@44
    .line 410
    .local v3, "headerClass":Ljava/lang/Class;
    if-nez v3, :cond_3

    #@46
    .line 411
    const-class v3, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    #@48
    .line 414
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@4a
    .line 415
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    #@4c
    move-object v2, p2

    #@4d
    move-object v4, p1

    #@4e
    .line 414
    invoke-interface/range {v0 .. v5}, Lgov/nist/javax/sip/parser/ParseExceptionListener;->handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    #@51
    goto :goto_0
.end method

.method public static setComputeContentLengthFromMessage(Z)V
    .locals 0
    .param p0, "computeContentLengthFromMessage"    # Z

    #@0
    .prologue
    .line 616
    sput-boolean p0, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    #@2
    .line 615
    return-void
.end method

.method private trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 341
    if-nez p1, :cond_0

    #@3
    .line 342
    return-object p1

    #@4
    .line 344
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .line 345
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    const/16 v2, 0x20

    #@12
    if-gt v1, v2, :cond_1

    #@14
    .line 346
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v1

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    if-ne v0, v1, :cond_2

    #@1f
    .line 349
    return-object p1

    #@20
    .line 351
    :cond_2
    const/4 v1, -0x1

    #@21
    if-ne v0, v1, :cond_3

    #@23
    .line 352
    const-string/jumbo v1, ""

    #@26
    return-object v1

    #@27
    .line 354
    :cond_3
    add-int/lit8 v1, v0, 0x1

    #@29
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lgov/nist/javax/sip/address/AddressImpl;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    new-instance v0, Lgov/nist/javax/sip/parser/AddressParser;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Ljava/lang/String;)V

    #@5
    .line 434
    .local v0, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public parseHost(Ljava/lang/String;)Lgov/nist/core/Host;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@2
    const-string/jumbo v1, "charLexer"

    #@5
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 466
    .local v0, "lexer":Lgov/nist/javax/sip/parser/Lexer;
    new-instance v1, Lgov/nist/core/HostNameParser;

    #@a
    invoke-direct {v1, v0}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    #@d
    invoke-virtual {v1}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0xa

    #@2
    const/4 v11, 0x0

    #@3
    const/16 v10, 0x20

    #@5
    .line 529
    const/4 v8, 0x0

    #@6
    .line 530
    .local v8, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v9

    #@a
    add-int/lit8 v3, v9, -0x1

    #@c
    .line 533
    .local v3, "end":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v9

    #@10
    if-gt v9, v10, :cond_0

    #@12
    .line 534
    add-int/lit8 v8, v8, 0x1

    #@14
    goto :goto_0

    #@15
    .line 537
    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v9

    #@19
    if-gt v9, v10, :cond_1

    #@1b
    .line 538
    add-int/lit8 v3, v3, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 540
    :catch_0
    move-exception v2

    #@1f
    .line 542
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v9, Ljava/text/ParseException;

    #@21
    const-string/jumbo v10, "Empty header."

    #@24
    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@27
    throw v9

    #@28
    .line 545
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    #@2a
    add-int/lit8 v9, v3, 0x1

    #@2c
    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2f
    .line 546
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v6, v8

    #@30
    .line 547
    .local v6, "i":I
    move v7, v8

    #@31
    .line 548
    .local v7, "lineStart":I
    const/4 v4, 0x0

    #@32
    .line 549
    .local v4, "endOfLine":Z
    :goto_2
    if-gt v6, v3, :cond_7

    #@34
    .line 550
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v1

    #@38
    .line 551
    .local v1, "c":C
    const/16 v9, 0xd

    #@3a
    if-eq v1, v9, :cond_2

    #@3c
    if-ne v1, v12, :cond_4

    #@3e
    .line 552
    :cond_2
    if-nez v4, :cond_3

    #@40
    .line 553
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 554
    const/4 v4, 0x1

    #@48
    .line 570
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 558
    :cond_4
    if-eqz v4, :cond_3

    #@4d
    .line 559
    const/4 v4, 0x0

    #@4e
    .line 560
    if-eq v1, v10, :cond_5

    #@50
    const/16 v9, 0x9

    #@52
    if-ne v1, v9, :cond_6

    #@54
    .line 561
    :cond_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@57
    .line 562
    add-int/lit8 v7, v6, 0x1

    #@59
    .line 560
    goto :goto_3

    #@5a
    .line 565
    :cond_6
    move v7, v6

    #@5b
    goto :goto_3

    #@5c
    .line 572
    .end local v1    # "c":C
    :cond_7
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    .line 573
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@66
    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-static {v9}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    #@6d
    move-result-object v5

    #@6e
    .line 576
    .local v5, "hp":Lgov/nist/javax/sip/parser/HeaderParser;
    if-nez v5, :cond_8

    #@70
    .line 577
    new-instance v9, Ljava/text/ParseException;

    #@72
    const-string/jumbo v10, "could not create parser"

    #@75
    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@78
    throw v9

    #@79
    .line 578
    :cond_8
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@7c
    move-result-object v9

    #@7d
    return-object v9
.end method

.method public parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 14
    .param p1, "msgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v11

    #@6
    if-nez v11, :cond_1

    #@8
    .line 242
    :cond_0
    const/4 v11, 0x0

    #@9
    return-object v11

    #@a
    .line 244
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->rawStringMessage:Ljava/lang/String;

    #@c
    .line 246
    const/4 v7, 0x0

    #@d
    .line 250
    .local v7, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v11

    #@11
    const/16 v12, 0x20

    #@13
    if-ge v11, v12, :cond_2

    #@15
    .line 251
    add-int/lit8 v7, v7, 0x1

    #@17
    goto :goto_0

    #@18
    .line 256
    :catch_0
    move-exception v5

    #@19
    .line 257
    .local v5, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v11, 0x0

    #@1a
    return-object v11

    #@1b
    .line 253
    .end local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v4

    #@1c
    .line 255
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v11, 0x0

    #@1d
    return-object v11

    #@1e
    .line 261
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    const/4 v3, 0x0

    #@1f
    .line 262
    .local v3, "currentLine":Ljava/lang/String;
    const/4 v2, 0x0

    #@20
    .line 263
    .local v2, "currentHeader":Ljava/lang/String;
    const/4 v8, 0x1

    #@21
    .line 264
    .local v8, "isFirstLine":Z
    const/4 v10, 0x0

    #@22
    .line 267
    .end local v2    # "currentHeader":Ljava/lang/String;
    .end local v3    # "currentLine":Ljava/lang/String;
    :cond_3
    move v9, v7

    #@23
    .line 271
    .local v9, "lineStart":I
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v1

    #@27
    .line 272
    .local v1, "c":C
    :goto_1
    const/16 v11, 0xd

    #@29
    if-eq v1, v11, :cond_4

    #@2b
    const/16 v11, 0xa

    #@2d
    if-eq v1, v11, :cond_4

    #@2f
    .line 273
    add-int/lit8 v7, v7, 0x1

    #@31
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    #@34
    move-result v1

    #@35
    goto :goto_1

    #@36
    .line 283
    :cond_4
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 284
    .local v3, "currentLine":Ljava/lang/String;
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v11

    #@42
    if-nez v11, :cond_8

    #@44
    .line 288
    if-eqz v2, :cond_5

    #@46
    .line 289
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    #@49
    .line 313
    :cond_5
    :goto_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v11

    #@4d
    const/16 v12, 0xd

    #@4f
    if-ne v11, v12, :cond_6

    #@51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@54
    move-result v11

    #@55
    add-int/lit8 v12, v7, 0x1

    #@57
    if-le v11, v12, :cond_6

    #@59
    add-int/lit8 v11, v7, 0x1

    #@5b
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v11

    #@5f
    const/16 v12, 0xa

    #@61
    if-ne v11, v12, :cond_6

    #@63
    .line 314
    add-int/lit8 v7, v7, 0x1

    #@65
    .line 316
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@67
    .line 318
    const/4 v8, 0x0

    #@68
    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6b
    move-result v11

    #@6c
    if-gtz v11, :cond_3

    #@6e
    .line 322
    .end local v1    # "c":C
    .end local v3    # "currentLine":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    #@71
    .line 325
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    #@73
    if-eqz v11, :cond_7

    #@75
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@78
    move-result-object v11

    #@79
    if-eqz v11, :cond_7

    #@7b
    .line 326
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@7e
    move-result-object v11

    #@7f
    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@82
    move-result v11

    #@83
    if-eqz v11, :cond_e

    #@85
    .line 327
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    .line 328
    .local v0, "body":Ljava/lang/String;
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    #@8b
    sget-boolean v12, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    #@8d
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@90
    move-result-object v13

    #@91
    invoke-interface {v13}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@94
    move-result v13

    #@95
    invoke-virtual {v10, v0, v11, v12, v13}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent(Ljava/lang/String;ZZI)V

    #@98
    .line 337
    .end local v0    # "body":Ljava/lang/String;
    :cond_7
    return-object v10

    #@99
    .line 293
    .restart local v1    # "c":C
    .restart local v3    # "currentLine":Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_9

    #@9b
    .line 294
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@9e
    move-result-object v10

    #@9f
    .local v10, "message":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_2

    #@a0
    .line 296
    .end local v10    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_9
    const/4 v11, 0x0

    #@a1
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    #@a4
    move-result v6

    #@a5
    .line 297
    .local v6, "firstChar":C
    const/16 v11, 0x9

    #@a7
    if-eq v6, v11, :cond_a

    #@a9
    const/16 v11, 0x20

    #@ab
    if-ne v6, v11, :cond_c

    #@ad
    .line 298
    :cond_a
    if-nez v2, :cond_b

    #@af
    .line 299
    new-instance v11, Ljava/text/ParseException;

    #@b1
    const-string/jumbo v12, "Bad header continuation."

    #@b4
    const/4 v13, 0x0

    #@b5
    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b8
    throw v11

    #@b9
    .line 302
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    const/4 v12, 0x1

    #@c3
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c6
    move-result-object v12

    #@c7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v11

    #@cb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    .local v2, "currentHeader":Ljava/lang/String;
    goto/16 :goto_2

    #@d1
    .line 305
    .end local v2    # "currentHeader":Ljava/lang/String;
    :cond_c
    if-eqz v2, :cond_d

    #@d3
    .line 306
    invoke-direct {p0, v2, v10}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    #@d6
    .line 308
    :cond_d
    move-object v2, v3

    #@d7
    .restart local v2    # "currentHeader":Ljava/lang/String;
    goto/16 :goto_2

    #@d9
    .line 329
    .end local v1    # "c":C
    .end local v2    # "currentHeader":Ljava/lang/String;
    .end local v3    # "currentLine":Ljava/lang/String;
    .end local v6    # "firstChar":C
    :cond_e
    sget-boolean v11, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    #@db
    if-nez v11, :cond_7

    #@dd
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@e0
    move-result-object v11

    #@e1
    invoke-interface {v11}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@e4
    move-result v11

    #@e5
    if-nez v11, :cond_7

    #@e7
    const-string/jumbo v11, "\r\n\r\n"

    #@ea
    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@ed
    move-result v11

    #@ee
    if-nez v11, :cond_7

    #@f0
    .line 330
    iget-boolean v11, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    #@f2
    if-eqz v11, :cond_7

    #@f4
    .line 331
    new-instance v11, Ljava/text/ParseException;

    #@f6
    const-string/jumbo v12, "Extraneous characters at the end of the message "

    #@f9
    invoke-direct {v11, v12, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@fc
    throw v11

    #@fd
    .line 275
    :catch_2
    move-exception v4

    #@fe
    .restart local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_3

    #@100
    .line 278
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_3
    move-exception v5

    #@101
    .restart local v5    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto/16 :goto_3
.end method

.method public parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;
    .locals 16
    .param p1, "msgBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v13, v0

    #@5
    if-nez v13, :cond_1

    #@7
    .line 131
    :cond_0
    const/4 v13, 0x0

    #@8
    return-object v13

    #@9
    .line 133
    :cond_1
    const/4 v8, 0x0

    #@a
    .line 137
    .local v8, "i":I
    :goto_0
    :try_start_0
    aget-byte v13, p1, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    const/16 v14, 0x20

    #@e
    if-ge v13, v14, :cond_2

    #@10
    .line 138
    add-int/lit8 v8, v8, 0x1

    #@12
    goto :goto_0

    #@13
    .line 140
    :catch_0
    move-exception v6

    #@14
    .line 142
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v13, 0x0

    #@15
    return-object v13

    #@16
    .line 146
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    const/4 v4, 0x0

    #@17
    .line 147
    .local v4, "currentLine":Ljava/lang/String;
    const/4 v3, 0x0

    #@18
    .line 148
    .local v3, "currentHeader":Ljava/lang/String;
    const/4 v9, 0x1

    #@19
    .line 149
    .local v9, "isFirstLine":Z
    const/4 v12, 0x0

    #@1a
    .line 152
    .end local v3    # "currentHeader":Ljava/lang/String;
    .end local v4    # "currentLine":Ljava/lang/String;
    :cond_3
    move v11, v8

    #@1b
    .line 156
    .local v11, "lineStart":I
    :goto_1
    :try_start_1
    aget-byte v13, p1, v8

    #@1d
    const/16 v14, 0xd

    #@1f
    if-eq v13, v14, :cond_4

    #@21
    aget-byte v13, p1, v8
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    #@23
    const/16 v14, 0xa

    #@25
    if-eq v13, v14, :cond_4

    #@27
    .line 157
    add-int/lit8 v8, v8, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 163
    :cond_4
    sub-int v10, v8, v11

    #@2c
    .line 167
    .local v10, "lineLength":I
    :try_start_2
    new-instance v4, Ljava/lang/String;

    #@2e
    const-string/jumbo v13, "UTF-8"

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-direct {v4, v0, v11, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@36
    .line 172
    .local v4, "currentLine":Ljava/lang/String;
    move-object/from16 v0, p0

    #@38
    invoke-direct {v0, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->trimEndOfLine(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3f
    move-result v13

    #@40
    if-nez v13, :cond_7

    #@42
    .line 176
    if-eqz v3, :cond_5

    #@44
    if-eqz v12, :cond_5

    #@46
    .line 177
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v3, v12}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    #@4b
    .line 202
    :cond_5
    :goto_2
    aget-byte v13, p1, v8

    #@4d
    const/16 v14, 0xd

    #@4f
    if-ne v13, v14, :cond_6

    #@51
    move-object/from16 v0, p1

    #@53
    array-length v13, v0

    #@54
    add-int/lit8 v14, v8, 0x1

    #@56
    if-le v13, v14, :cond_6

    #@58
    add-int/lit8 v13, v8, 0x1

    #@5a
    aget-byte v13, p1, v13

    #@5c
    const/16 v14, 0xa

    #@5e
    if-ne v13, v14, :cond_6

    #@60
    .line 203
    add-int/lit8 v8, v8, 0x1

    #@62
    .line 205
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@64
    .line 207
    const/4 v9, 0x0

    #@65
    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@68
    move-result v13

    #@69
    if-gtz v13, :cond_3

    #@6b
    .line 210
    .end local v4    # "currentLine":Ljava/lang/String;
    .end local v10    # "lineLength":I
    :goto_3
    if-nez v12, :cond_d

    #@6d
    new-instance v13, Ljava/text/ParseException;

    #@6f
    const-string/jumbo v14, "Bad message"

    #@72
    const/4 v15, 0x0

    #@73
    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@76
    throw v13

    #@77
    .line 168
    .restart local v10    # "lineLength":I
    :catch_1
    move-exception v5

    #@78
    .line 169
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Ljava/text/ParseException;

    #@7a
    const-string/jumbo v14, "Bad message encoding!"

    #@7d
    const/4 v15, 0x0

    #@7e
    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@81
    throw v13

    #@82
    .line 182
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "currentLine":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    #@84
    .line 183
    move-object/from16 v0, p0

    #@86
    invoke-direct {v0, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->processFirstLine(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@89
    move-result-object v12

    #@8a
    .local v12, "message":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_2

    #@8b
    .line 185
    .end local v12    # "message":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_8
    const/4 v13, 0x0

    #@8c
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    #@8f
    move-result v7

    #@90
    .line 186
    .local v7, "firstChar":C
    const/16 v13, 0x9

    #@92
    if-eq v7, v13, :cond_9

    #@94
    const/16 v13, 0x20

    #@96
    if-ne v7, v13, :cond_b

    #@98
    .line 187
    :cond_9
    if-nez v3, :cond_a

    #@9a
    .line 188
    new-instance v13, Ljava/text/ParseException;

    #@9c
    const-string/jumbo v14, "Bad header continuation."

    #@9f
    const/4 v15, 0x0

    #@a0
    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@a3
    throw v13

    #@a4
    .line 191
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v13

    #@ad
    const/4 v14, 0x1

    #@ae
    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b1
    move-result-object v14

    #@b2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v13

    #@b6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    .local v3, "currentHeader":Ljava/lang/String;
    goto :goto_2

    #@bb
    .line 194
    .end local v3    # "currentHeader":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_c

    #@bd
    if-eqz v12, :cond_c

    #@bf
    .line 195
    move-object/from16 v0, p0

    #@c1
    invoke-direct {v0, v3, v12}, Lgov/nist/javax/sip/parser/StringMsgParser;->processHeader(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPMessage;)V

    #@c4
    .line 197
    :cond_c
    move-object v3, v4

    #@c5
    .restart local v3    # "currentHeader":Ljava/lang/String;
    goto :goto_2

    #@c6
    .line 211
    .end local v3    # "currentHeader":Ljava/lang/String;
    .end local v4    # "currentLine":Ljava/lang/String;
    .end local v7    # "firstChar":C
    .end local v10    # "lineLength":I
    :cond_d
    invoke-virtual {v12, v8}, Lgov/nist/javax/sip/message/SIPMessage;->setSize(I)V

    #@c9
    .line 213
    move-object/from16 v0, p0

    #@cb
    iget-boolean v13, v0, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z

    #@cd
    if-eqz v13, :cond_e

    #@cf
    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@d2
    move-result-object v13

    #@d3
    if-eqz v13, :cond_e

    #@d5
    .line 214
    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@d8
    move-result-object v13

    #@d9
    invoke-interface {v13}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@dc
    move-result v13

    #@dd
    if-eqz v13, :cond_e

    #@df
    .line 216
    move-object/from16 v0, p1

    #@e1
    array-length v13, v0

    #@e2
    sub-int v2, v13, v8

    #@e4
    .line 218
    .local v2, "bodyLength":I
    new-array v1, v2, [B

    #@e6
    .line 219
    .local v1, "body":[B
    const/4 v13, 0x0

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-static {v0, v8, v1, v13, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ec
    .line 220
    sget-boolean v13, Lgov/nist/javax/sip/parser/StringMsgParser;->computeContentLengthFromMessage:Z

    #@ee
    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@f1
    move-result-object v14

    #@f2
    invoke-interface {v14}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@f5
    move-result v14

    #@f6
    invoke-virtual {v12, v1, v13, v14}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([BZI)V

    #@f9
    .line 223
    .end local v1    # "body":[B
    .end local v2    # "bodyLength":I
    :cond_e
    return-object v12

    #@fa
    .line 159
    :catch_2
    move-exception v6

    #@fb
    .restart local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_3
.end method

.method public parseSIPRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/RequestLine;
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "\n"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 594
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    #@16
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public parseSIPStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/StatusLine;
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "\n"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 611
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    #@16
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public parseSIPUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/SipUri;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    #@2
    invoke-direct {v1, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 500
    :catch_0
    move-exception v0

    #@c
    .line 501
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/text/ParseException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " Not a SIP URL "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    const/4 v3, 0x0

    #@23
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@26
    throw v1
.end method

.method public parseTelephoneNumber(Ljava/lang/String;)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 2
    .param p1, "telephone_number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V
    .locals 0
    .param p1, "pexhandler"    # Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;

    #@2
    .line 109
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 705
    iput-boolean p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser;->strict:Z

    #@2
    .line 704
    return-void
.end method
