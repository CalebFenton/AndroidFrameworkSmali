.class public abstract Lgov/nist/javax/sip/stack/MessageChannel;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# instance fields
.field protected transient messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field protected useCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fromReq"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    .line 444
    .local v1, "start":I
    if-eq v1, v3, :cond_0

    #@7
    .line 445
    const-string/jumbo v2, "\r\n"

    #@a
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 446
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    #@10
    .line 448
    add-int/lit8 v2, v1, -0x2

    #@12
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@19
    .line 450
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 453
    .end local v0    # "end":I
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method private static final copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "fromReq"    # Ljava/lang/String;
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 466
    const-string/jumbo v3, "Via"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 467
    .local v2, "start":I
    const/4 v1, 0x0

    #@9
    .line 468
    .local v1, "found":Z
    :goto_0
    if-eq v2, v4, :cond_1

    #@b
    .line 469
    const-string/jumbo v3, "\r\n"

    #@e
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 470
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    #@14
    .line 472
    add-int/lit8 v3, v2, -0x2

    #@16
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@1d
    .line 474
    const/4 v1, 0x1

    #@1e
    .line 475
    const-string/jumbo v3, "Via"

    #@21
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@24
    move-result v2

    #@25
    goto :goto_0

    #@26
    .line 477
    :cond_0
    const/4 v3, 0x0

    #@27
    return v3

    #@28
    .line 480
    .end local v0    # "end":I
    :cond_1
    return v1
.end method

.method public static getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostPort"    # Lgov/nist/core/HostPort;
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ":"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getPort()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public static getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inetAddr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ":"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected final createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;
    .locals 10
    .param p1, "badReq"    # Ljava/lang/String;
    .param p2, "pe"    # Ljava/text/ParseException;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 383
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    const/16 v6, 0x200

    #@6
    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 384
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "SIP/2.0 400 Bad Request ("

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {p2}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    const/16 v7, 0x29

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 387
    invoke-static {p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    #@2d
    move-result v6

    #@2e
    if-nez v6, :cond_0

    #@30
    .line 388
    return-object v8

    #@31
    .line 389
    :cond_0
    const-string/jumbo v6, "CSeq"

    #@34
    invoke-static {v6, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_1

    #@3a
    .line 390
    return-object v8

    #@3b
    .line 391
    :cond_1
    const-string/jumbo v6, "Call-ID"

    #@3e
    invoke-static {v6, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_2

    #@44
    .line 392
    return-object v8

    #@45
    .line 393
    :cond_2
    const-string/jumbo v6, "From"

    #@48
    invoke-static {v6, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_3

    #@4e
    .line 394
    return-object v8

    #@4f
    .line 395
    :cond_3
    const-string/jumbo v6, "To"

    #@52
    invoke-static {v6, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_4

    #@58
    .line 396
    return-object v8

    #@59
    .line 399
    :cond_4
    const-string/jumbo v6, "To"

    #@5c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@5f
    move-result v5

    #@60
    .line 400
    .local v5, "toStart":I
    if-eq v5, v9, :cond_5

    #@62
    const-string/jumbo v6, "tag"

    #@65
    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    #@68
    move-result v6

    #@69
    if-ne v6, v9, :cond_5

    #@6b
    .line 401
    const-string/jumbo v6, ";tag=badreq"

    #@6e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@71
    .line 405
    :cond_5
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@74
    move-result-object v4

    #@75
    .line 406
    .local v4, "s":Ljavax/sip/header/ServerHeader;
    if-eqz v4, :cond_6

    #@77
    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v7, "\r\n"

    #@7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-interface {v4}, Ljavax/sip/header/ServerHeader;->toString()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@92
    .line 409
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@95
    move-result v1

    #@96
    .line 410
    .local v1, "clength":I
    instance-of v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@98
    if-eqz v6, :cond_7

    #@9a
    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@9d
    move-result v6

    #@9e
    add-int/2addr v6, v1

    #@9f
    const-string/jumbo v7, "Content-Type"

    #@a2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@a5
    move-result v7

    #@a6
    add-int/2addr v6, v7

    #@a7
    .line 412
    const-string/jumbo v7, ": message/sipfrag\r\n"

    #@aa
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@ad
    move-result v7

    #@ae
    .line 411
    add-int/2addr v6, v7

    #@af
    .line 413
    const-string/jumbo v7, "Content-Length"

    #@b2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@b5
    move-result v7

    #@b6
    .line 411
    add-int/2addr v6, v7

    #@b7
    .line 413
    const/16 v7, 0x514

    #@b9
    .line 411
    if-ge v6, v7, :cond_8

    #@bb
    .line 418
    :cond_7
    new-instance v3, Lgov/nist/javax/sip/header/ContentType;

    #@bd
    const-string/jumbo v6, "message"

    #@c0
    const-string/jumbo v7, "sipfrag"

    #@c3
    invoke-direct {v3, v6, v7}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c6
    .line 419
    .local v3, "cth":Ljavax/sip/header/ContentTypeHeader;
    new-instance v6, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v7, "\r\n"

    #@ce
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->toString()Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e1
    .line 420
    new-instance v2, Lgov/nist/javax/sip/header/ContentLength;

    #@e3
    invoke-direct {v2, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    #@e6
    .line 421
    .local v2, "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v6, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v7, "\r\n"

    #@ee
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v6

    #@f2
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v6

    #@fa
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@101
    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v7, "\r\n\r\n"

    #@109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v6

    #@10d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v6

    #@111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v6

    #@115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@118
    .line 428
    .end local v3    # "cth":Ljavax/sip/header/ContentTypeHeader;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    return-object v6

    #@11d
    .line 424
    .end local v2    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    :cond_8
    new-instance v2, Lgov/nist/javax/sip/header/ContentLength;

    #@11f
    const/4 v6, 0x0

    #@120
    invoke-direct {v2, v6}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    #@123
    .line 425
    .restart local v2    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v6, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v7, "\r\n"

    #@12b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v6

    #@12f
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    #@132
    move-result-object v7

    #@133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v6

    #@137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v6

    #@13b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13e
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 3

    #@0
    .prologue
    .line 288
    new-instance v0, Lgov/nist/core/HostPort;

    #@2
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@5
    .line 289
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    #@7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@11
    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    #@18
    .line 291
    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    return-object v0
.end method

.method public abstract getPeerAddress()Ljava/lang/String;
.end method

.method public getPeerHostPort()Lgov/nist/core/HostPort;
    .locals 3

    #@0
    .prologue
    .line 300
    new-instance v0, Lgov/nist/core/HostPort;

    #@2
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@5
    .line 301
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    #@7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@11
    .line 302
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    #@18
    .line 303
    return-object v0
.end method

.method protected abstract getPeerInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerPacketSourcePort()I
.end method

.method public abstract getPeerPort()I
.end method

.method protected abstract getPeerProtocol()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@6
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 189
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method public getRawIpSourceAddress()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 258
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 259
    .local v2, "sourceAddress":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 261
    .local v1, "rawIpSourceAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@8
    move-result-object v3

    #@9
    .line 262
    .local v3, "sourceInetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 266
    .end local v1    # "rawIpSourceAddress":Ljava/lang/String;
    .end local v3    # "sourceInetAddress":Ljava/net/InetAddress;
    :goto_0
    return-object v1

    #@e
    .line 263
    .restart local v1    # "rawIpSourceAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@f
    .line 264
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@12
    goto :goto_0
.end method

.method public abstract getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 3

    #@0
    .prologue
    .line 314
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    #@5
    .line 316
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 319
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHostPort()Lgov/nist/core/HostPort;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    #@13
    .line 320
    return-object v0

    #@14
    .line 317
    :catch_0
    move-exception v1

    #@15
    .local v1, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public abstract getViaHost()Ljava/lang/String;
.end method

.method public getViaHostPort()Lgov/nist/core/HostPort;
    .locals 3

    #@0
    .prologue
    .line 330
    new-instance v0, Lgov/nist/core/HostPort;

    #@2
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@5
    .line 331
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    #@7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@11
    .line 332
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    #@18
    .line 333
    return-object v0
.end method

.method public abstract getViaPort()I
.end method

.method public abstract isReliable()Z
.end method

.method public abstract isSecure()Z
.end method

.method protected logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V
    .locals 8
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "time"    # J

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x10

    #@a
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 345
    return-void

    #@11
    .line 348
    :cond_0
    const/4 v0, -0x1

    #@12
    if-ne p3, v0, :cond_1

    #@14
    .line 349
    const/16 p3, 0x13c4

    #@16
    .line 350
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@1c
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v2, ":"

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    #@33
    move-result v2

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v2, ":"

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    const/4 v5, 0x1

    #@5d
    move-object v2, p1

    #@5e
    move-wide v6, p4

    #@5f
    .line 350
    invoke-interface/range {v1 .. v7}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@62
    .line 343
    return-void
.end method

.method public logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V
    .locals 10
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "receptionTime"    # J
    .param p4, "status"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 363
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    #@4
    move-result v9

    #@5
    .line 364
    .local v9, "peerport":I
    if-nez v9, :cond_0

    #@7
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 365
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Ljavax/sip/header/ContactHeader;

    #@17
    .line 366
    .local v8, "contact":Ljavax/sip/header/ContactHeader;
    invoke-interface {v8}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@1d
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getPort()I

    #@20
    move-result v9

    #@21
    .line 369
    .end local v8    # "contact":Ljavax/sip/header/ContactHeader;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, ":"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 370
    .local v2, "from":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string/jumbo v1, ":"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    #@58
    move-result v1

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 371
    .local v3, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@64
    move-result-object v0

    #@65
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@67
    move-object v1, p1

    #@68
    move-object v4, p4

    #@69
    move-wide v6, p2

    #@6a
    invoke-interface/range {v0 .. v7}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@6d
    .line 362
    return-void
.end method

.method public abstract sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    .locals 7
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 249
    .local v4, "time":J
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@b
    move-result-object v6

    #@c
    .line 250
    .local v6, "bytes":[B
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@e
    invoke-virtual {p0, v6, p2, p3, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move-object v2, p2

    #@14
    move v3, p3

    #@15
    .line 251
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@18
    .line 247
    return-void
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    .locals 13
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "hop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 201
    .local v4, "time":J
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@b
    move-result-object v2

    #@c
    .line 205
    .local v2, "hopAddr":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    #@13
    move-result-object v1

    #@14
    const/4 v0, 0x0

    #@15
    array-length v3, v1

    #@16
    :goto_0
    if-ge v0, v3, :cond_3

    #@18
    aget-object v9, v1, v0

    #@1a
    .line 206
    .local v9, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v11

    #@22
    if-eqz v11, :cond_2

    #@24
    .line 207
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@27
    move-result v11

    #@28
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@2b
    move-result v12

    #@2c
    if-ne v11, v12, :cond_2

    #@2e
    .line 208
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@35
    move-result-object v12

    #@36
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v11

    #@3a
    .line 206
    if-eqz v11, :cond_2

    #@3c
    .line 210
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@3f
    move-result v11

    #@40
    .line 209
    invoke-virtual {v9, v2, v11}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    #@43
    move-result-object v8

    #@44
    .line 211
    .local v8, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v11, v8, Lgov/nist/javax/sip/stack/RawMessageChannel;

    #@46
    if-eqz v11, :cond_2

    #@48
    .line 212
    check-cast v8, Lgov/nist/javax/sip/stack/RawMessageChannel;

    #@4a
    .end local v8    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-interface {v8, p1}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@4d
    .line 213
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_0

    #@57
    .line 214
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5e
    move-result-object v0

    #@5f
    const-string/jumbo v1, "Self routing message"

    #@62
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    .line 234
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6c
    move-result-object v0

    #@6d
    const/16 v1, 0x10

    #@6f
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_1

    #@75
    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@78
    move-result v3

    #@79
    move-object v0, p0

    #@7a
    move-object v1, p1

    #@7b
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@7e
    .line 215
    :cond_1
    return-void

    #@7f
    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@81
    goto :goto_0

    #@82
    .line 220
    .end local v9    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@89
    move-result-object v10

    #@8a
    .line 222
    .local v10, "msg":[B
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@8d
    move-result v0

    #@8e
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@90
    invoke-virtual {p0, v10, v2, v0, v1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 234
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9a
    move-result-object v0

    #@9b
    const/16 v1, 0x10

    #@9d
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_4

    #@a3
    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@a6
    move-result v3

    #@a7
    move-object v0, p0

    #@a8
    move-object v1, p1

    #@a9
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@ac
    .line 199
    :cond_4
    return-void

    #@ad
    .line 226
    .end local v10    # "msg":[B
    :catch_0
    move-exception v6

    #@ae
    .line 227
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b1
    move-result-object v0

    #@b2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b5
    move-result-object v0

    #@b6
    const/4 v1, 0x4

    #@b7
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@ba
    move-result v0

    #@bb
    if-eqz v0, :cond_5

    #@bd
    .line 228
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c4
    move-result-object v0

    #@c5
    const-string/jumbo v1, "Error self routing message cause by: "

    #@c8
    invoke-interface {v0, v1, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@cb
    .line 231
    :cond_5
    new-instance v0, Ljava/io/IOException;

    #@cd
    const-string/jumbo v1, "Error self routing message"

    #@d0
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    .line 232
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@d5
    move-object v11, v0

    #@d6
    .line 234
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@dd
    move-result-object v0

    #@de
    const/16 v1, 0x10

    #@e0
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@e3
    move-result v0

    #@e4
    if-eqz v0, :cond_6

    #@e6
    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    #@e9
    move-result v3

    #@ea
    move-object v0, p0

    #@eb
    move-object v1, p1

    #@ec
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@ef
    .line 232
    :cond_6
    throw v11

    #@f0
    .line 224
    :catch_1
    move-exception v7

    #@f1
    .line 225
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected abstract sendMessage([BLjava/net/InetAddress;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected uncache()V
    .locals 0

    #@0
    .prologue
    .line 80
    return-void
.end method
