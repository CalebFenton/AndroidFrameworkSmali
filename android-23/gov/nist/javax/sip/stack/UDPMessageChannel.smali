.class public Lgov/nist/javax/sip/stack/UDPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "UDPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
    }
.end annotation


# instance fields
.field private incomingPacket:Ljava/net/DatagramPacket;

.field private myAddress:Ljava/lang/String;

.field protected myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

.field protected myPort:I

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPacketSourceAddress:Ljava/net/InetAddress;

.field private peerPacketSourcePort:I

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private pingBackRecord:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private receptionTime:J

.field protected sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .locals 2
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 141
    new-instance v1, Ljava/util/Hashtable;

    #@5
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    #@a
    .line 174
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@c
    .line 175
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e
    .line 177
    new-instance v0, Ljava/lang/Thread;

    #@10
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@13
    .line 179
    .local v0, "mythread":Ljava/lang/Thread;
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    #@1d
    .line 180
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    #@23
    .line 182
    const-string/jumbo v1, "UDPMessageChannelThread"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@29
    .line 183
    const/4 v1, 0x1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@2d
    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@30
    .line 173
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    .locals 2
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    .param p3, "packet"    # Ljava/net/DatagramPacket;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 141
    new-instance v1, Ljava/util/Hashtable;

    #@5
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    #@a
    .line 202
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    #@c
    .line 203
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@e
    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    .line 206
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    #@1a
    .line 207
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    #@20
    .line 208
    new-instance v0, Ljava/lang/Thread;

    #@22
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@25
    .line 209
    .local v0, "mythread":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@29
    .line 210
    const-string/jumbo v1, "UDPMessageChannelThread"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@2f
    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@32
    .line 200
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .locals 3
    .param p1, "targetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 141
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    #@a
    .line 228
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@c
    .line 229
    iput p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@e
    .line 230
    const-string/jumbo v0, "UDP"

    #@11
    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@13
    .line 231
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@15
    .line 232
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    #@1f
    .line 233
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    #@25
    .line 234
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27
    .line 235
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 236
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@32
    move-result-object v0

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Creating message channel "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 237
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 237
    const-string/jumbo v2, "/"

    #@4a
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@59
    .line 227
    :cond_0
    return-void
.end method

.method private processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    .locals 24
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v6

    #@4
    move-object/from16 v0, p0

    #@6
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@8
    .line 319
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getLength()I

    #@b
    move-result v20

    #@c
    .line 321
    .local v20, "packetLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getData()[B

    #@f
    move-result-object v12

    #@10
    .line 322
    .local v12, "bytes":[B
    move/from16 v0, v20

    #@12
    new-array v0, v0, [B

    #@14
    move-object/from16 v18, v0

    #@16
    .line 323
    .local v18, "msgBytes":[B
    const/4 v6, 0x0

    #@17
    const/4 v7, 0x0

    #@18
    move-object/from16 v0, v18

    #@1a
    move/from16 v1, v20

    #@1c
    invoke-static {v12, v6, v0, v7, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 326
    move-object/from16 v0, p0

    #@21
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@23
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    .line 327
    move-object/from16 v0, p0

    #@2b
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2d
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@30
    move-result-object v6

    #@31
    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "UDPMessageChannel: processIncomingDataPacket : peerAddress = "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    .line 329
    move-object/from16 v0, p0

    #@3f
    iget-object v8, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@41
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    .line 329
    const-string/jumbo v8, "/"

    #@4c
    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    .line 330
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@53
    move-result v8

    #@54
    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 330
    const-string/jumbo v8, " Length = "

    #@5b
    .line 328
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    move/from16 v0, v20

    #@61
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    .line 327
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6c
    .line 334
    :cond_0
    const/16 v21, 0x0

    #@6e
    .line 336
    .local v21, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@71
    move-result-wide v6

    #@72
    move-object/from16 v0, p0

    #@74
    iput-wide v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    #@76
    .line 337
    move-object/from16 v0, p0

    #@78
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    #@7a
    move-object/from16 v0, v18

    #@7c
    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;

    #@7f
    move-result-object v21

    #@80
    .line 338
    .local v21, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    const/4 v6, 0x0

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@85
    .line 384
    if-nez v21, :cond_8

    #@87
    .line 385
    move-object/from16 v0, p0

    #@89
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8b
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@8e
    move-result v6

    #@8f
    if-eqz v6, :cond_1

    #@91
    .line 386
    move-object/from16 v0, p0

    #@93
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@95
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@98
    move-result-object v6

    #@99
    const-string/jumbo v7, "Rejecting message !  + Null message parsed."

    #@9c
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9f
    .line 388
    :cond_1
    move-object/from16 v0, p0

    #@a1
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    #@a3
    new-instance v7, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    const-string/jumbo v8, ":"

    #@b7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v7

    #@bb
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@be
    move-result v8

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    move-result-object v6

    #@cb
    if-nez v6, :cond_2

    #@cd
    .line 389
    const-string/jumbo v6, "\r\n\r\n"

    #@d0
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    #@d3
    move-result-object v5

    #@d4
    .line 390
    .local v5, "retval":[B
    new-instance v4, Ljava/net/DatagramPacket;

    #@d6
    array-length v7, v5

    #@d7
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@da
    move-result-object v8

    #@db
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@de
    move-result v9

    #@df
    const/4 v6, 0x0

    #@e0
    invoke-direct/range {v4 .. v9}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    #@e3
    .line 391
    .local v4, "keepalive":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    #@e5
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@e7
    check-cast v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@e9
    iget-object v6, v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@eb
    invoke-virtual {v6, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@ee
    .line 392
    move-object/from16 v0, p0

    #@f0
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f2
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@f5
    move-result-object v6

    #@f6
    new-instance v7, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;

    #@f8
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@fb
    move-result-object v8

    #@fc
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@ff
    move-result-object v8

    #@100
    .line 393
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@103
    move-result v9

    #@104
    .line 392
    move-object/from16 v0, p0

    #@106
    invoke-direct {v7, v0, v8, v9}, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;-><init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V

    #@109
    .line 393
    const-wide/16 v8, 0x3e8

    #@10b
    .line 392
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@10e
    .line 395
    .end local v4    # "keepalive":Ljava/net/DatagramPacket;
    .end local v5    # "retval":[B
    :cond_2
    return-void

    #@10f
    .line 339
    .end local v21    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_0
    move-exception v14

    #@110
    .line 340
    .local v14, "ex":Ljava/text/ParseException;
    const/4 v6, 0x0

    #@111
    move-object/from16 v0, p0

    #@113
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    #@115
    .line 341
    move-object/from16 v0, p0

    #@117
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@119
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@11c
    move-result v6

    #@11d
    if-eqz v6, :cond_3

    #@11f
    .line 342
    move-object/from16 v0, p0

    #@121
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@123
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@126
    move-result-object v6

    #@127
    new-instance v7, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v8, "Rejecting message !  "

    #@12f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v7

    #@133
    .line 343
    new-instance v8, Ljava/lang/String;

    #@135
    move-object/from16 v0, v18

    #@137
    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    #@13a
    .line 342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v7

    #@13e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v7

    #@142
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@145
    .line 344
    move-object/from16 v0, p0

    #@147
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@149
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@14c
    move-result-object v6

    #@14d
    new-instance v7, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v8, "error message "

    #@155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v7

    #@159
    .line 345
    invoke-virtual {v14}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@15c
    move-result-object v8

    #@15d
    .line 344
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v7

    #@161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v7

    #@165
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@168
    .line 346
    move-object/from16 v0, p0

    #@16a
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16c
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16f
    move-result-object v6

    #@170
    invoke-interface {v6, v14}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@173
    .line 352
    :cond_3
    new-instance v19, Ljava/lang/String;

    #@175
    const/4 v6, 0x0

    #@176
    move-object/from16 v0, v19

    #@178
    move-object/from16 v1, v18

    #@17a
    move/from16 v2, v20

    #@17c
    invoke-direct {v0, v1, v6, v2}, Ljava/lang/String;-><init>([BII)V

    #@17f
    .line 353
    .local v19, "msgString":Ljava/lang/String;
    const-string/jumbo v6, "SIP/"

    #@182
    move-object/from16 v0, v19

    #@184
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@187
    move-result v6

    #@188
    if-nez v6, :cond_4

    #@18a
    const-string/jumbo v6, "ACK "

    #@18d
    move-object/from16 v0, v19

    #@18f
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@192
    move-result v6

    #@193
    if-eqz v6, :cond_5

    #@195
    .line 378
    :cond_4
    :goto_0
    return-void

    #@196
    .line 355
    :cond_5
    move-object/from16 v0, p0

    #@198
    move-object/from16 v1, v19

    #@19a
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    #@19d
    move-result-object v10

    #@19e
    .line 356
    .local v10, "badReqRes":Ljava/lang/String;
    if-eqz v10, :cond_7

    #@1a0
    .line 357
    move-object/from16 v0, p0

    #@1a2
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a4
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1a7
    move-result v6

    #@1a8
    if-eqz v6, :cond_6

    #@1aa
    .line 358
    move-object/from16 v0, p0

    #@1ac
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1ae
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b1
    move-result-object v6

    #@1b2
    .line 359
    const-string/jumbo v7, "Sending automatic 400 Bad Request:"

    #@1b5
    .line 358
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1b8
    .line 360
    move-object/from16 v0, p0

    #@1ba
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1bc
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1bf
    move-result-object v6

    #@1c0
    invoke-interface {v6, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1c3
    .line 363
    :cond_6
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    #@1c6
    move-result-object v5

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1cb
    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@1ce
    move-result v7

    #@1cf
    const-string/jumbo v8, "UDP"

    #@1d2
    const/4 v9, 0x0

    #@1d3
    move-object/from16 v4, p0

    #@1d5
    .line 363
    invoke-virtual/range {v4 .. v9}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d8
    goto :goto_0

    #@1d9
    .line 365
    :catch_1
    move-exception v13

    #@1da
    .line 366
    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@1dc
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1de
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1e1
    move-result-object v6

    #@1e2
    invoke-interface {v6, v13}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@1e5
    goto :goto_0

    #@1e6
    .line 369
    .end local v13    # "e":Ljava/io/IOException;
    :cond_7
    move-object/from16 v0, p0

    #@1e8
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1ea
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1ed
    move-result v6

    #@1ee
    if-eqz v6, :cond_4

    #@1f0
    .line 370
    move-object/from16 v0, p0

    #@1f2
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1f4
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1f7
    move-result-object v6

    #@1f8
    .line 373
    const-string/jumbo v7, "Could not formulate automatic 400 Bad Request"

    #@1fb
    .line 370
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1fe
    goto :goto_0

    #@1ff
    .line 397
    .end local v10    # "badReqRes":Ljava/lang/String;
    .end local v14    # "ex":Ljava/text/ParseException;
    .end local v19    # "msgString":Ljava/lang/String;
    .restart local v21    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@202
    move-result-object v23

    #@203
    .line 399
    .local v23, "viaList":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@206
    move-result-object v6

    #@207
    if-eqz v6, :cond_9

    #@209
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@20c
    move-result-object v6

    #@20d
    if-nez v6, :cond_b

    #@20f
    .line 403
    :cond_9
    new-instance v11, Ljava/lang/String;

    #@211
    move-object/from16 v0, v18

    #@213
    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    #@216
    .line 404
    .local v11, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@218
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@21a
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@21d
    move-result v6

    #@21e
    if-eqz v6, :cond_a

    #@220
    .line 405
    move-object/from16 v0, p0

    #@222
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@224
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@227
    move-result-object v6

    #@228
    new-instance v7, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v8, "bad message "

    #@230
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v7

    #@234
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v7

    #@238
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23b
    move-result-object v7

    #@23c
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@23f
    .line 406
    move-object/from16 v0, p0

    #@241
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@243
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@246
    move-result-object v6

    #@247
    new-instance v7, Ljava/lang/StringBuilder;

    #@249
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string/jumbo v8, ">>> Dropped Bad Msg From = "

    #@24f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v7

    #@253
    .line 407
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@256
    move-result-object v8

    #@257
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v7

    #@25b
    .line 407
    const-string/jumbo v8, "To = "

    #@25e
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v7

    #@262
    .line 408
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@265
    move-result-object v8

    #@266
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@269
    move-result-object v7

    #@26a
    .line 408
    const-string/jumbo v8, "CallId = "

    #@26d
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v7

    #@271
    .line 409
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@274
    move-result-object v8

    #@275
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v7

    #@279
    .line 409
    const-string/jumbo v8, "CSeq = "

    #@27c
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v7

    #@280
    .line 410
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@283
    move-result-object v8

    #@284
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v7

    #@288
    .line 410
    const-string/jumbo v8, "Via = "

    #@28b
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v7

    #@28f
    .line 411
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@292
    move-result-object v8

    #@293
    .line 406
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v7

    #@297
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v7

    #@29b
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@29e
    .line 413
    :cond_a
    return-void

    #@29f
    .line 400
    .end local v11    # "badmsg":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@2a2
    move-result-object v6

    #@2a3
    if-eqz v6, :cond_9

    #@2a5
    .line 401
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@2a8
    move-result-object v6

    #@2a9
    if-eqz v6, :cond_9

    #@2ab
    .line 402
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@2ae
    move-result-object v6

    #@2af
    if-eqz v6, :cond_9

    #@2b1
    .line 418
    move-object/from16 v0, v21

    #@2b3
    instance-of v6, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@2b5
    if-eqz v6, :cond_e

    #@2b7
    .line 419
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@2ba
    move-result-object v22

    #@2bb
    check-cast v22, Lgov/nist/javax/sip/header/Via;

    #@2bd
    .line 420
    .local v22, "v":Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p0

    #@2bf
    iget-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c1
    iget-object v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@2c3
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    #@2c6
    move-result-object v7

    #@2c7
    invoke-interface {v6, v7}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@2ca
    move-result-object v17

    #@2cb
    .line 421
    .local v17, "hop":Ljavax/sip/address/Hop;
    invoke-interface/range {v17 .. v17}, Ljavax/sip/address/Hop;->getPort()I

    #@2ce
    move-result v6

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    iput v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@2d3
    .line 422
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@2d6
    move-result-object v6

    #@2d7
    move-object/from16 v0, p0

    #@2d9
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@2db
    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@2de
    move-result-object v6

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    #@2e3
    .line 425
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@2e6
    move-result v6

    #@2e7
    move-object/from16 v0, p0

    #@2e9
    iput v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    #@2eb
    .line 427
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@2ee
    move-result-object v6

    #@2ef
    move-object/from16 v0, p0

    #@2f1
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2f3
    .line 432
    const-string/jumbo v6, "rport"

    #@2f6
    move-object/from16 v0, v22

    #@2f8
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    #@2fb
    move-result v16

    #@2fc
    .line 433
    .local v16, "hasRPort":Z
    if-nez v16, :cond_d

    #@2fe
    .line 434
    invoke-interface/range {v17 .. v17}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@301
    move-result-object v6

    #@302
    .line 435
    move-object/from16 v0, p0

    #@304
    iget-object v7, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@306
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@309
    move-result-object v7

    #@30a
    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30d
    move-result v6

    #@30e
    if-eqz v6, :cond_d

    #@310
    .line 440
    :goto_1
    if-eqz v16, :cond_c

    #@312
    .line 441
    const-string/jumbo v6, "rport"

    #@315
    .line 442
    move-object/from16 v0, p0

    #@317
    iget v7, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    #@319
    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@31c
    move-result-object v7

    #@31d
    move-object/from16 v0, v22

    #@31f
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    #@322
    .line 457
    .end local v16    # "hasRPort":Z
    .end local v17    # "hop":Ljavax/sip/address/Hop;
    .end local v22    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v21

    #@326
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@329
    .line 317
    return-void

    #@32a
    .line 436
    .restart local v16    # "hasRPort":Z
    .restart local v17    # "hop":Ljavax/sip/address/Hop;
    .restart local v22    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_d
    :try_start_3
    const-string/jumbo v6, "received"

    #@32d
    move-object/from16 v0, p0

    #@32f
    iget-object v7, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@331
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@334
    move-result-object v7

    #@335
    move-object/from16 v0, v22

    #@337
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    #@33a
    goto :goto_1

    #@33b
    .line 444
    .end local v16    # "hasRPort":Z
    :catch_2
    move-exception v15

    #@33c
    .line 445
    .local v15, "ex1":Ljava/text/ParseException;
    invoke-static {v15}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@33f
    goto :goto_2

    #@340
    .line 450
    .end local v15    # "ex1":Ljava/text/ParseException;
    .end local v17    # "hop":Ljavax/sip/address/Hop;
    .end local v22    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@343
    move-result-object v6

    #@344
    move-object/from16 v0, p0

    #@346
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    #@348
    .line 451
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@34b
    move-result v6

    #@34c
    move-object/from16 v0, p0

    #@34e
    iput v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    #@350
    .line 452
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@353
    move-result-object v6

    #@354
    move-object/from16 v0, p0

    #@356
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@358
    .line 453
    invoke-virtual/range {p1 .. p1}, Ljava/net/DatagramPacket;->getPort()I

    #@35b
    move-result v6

    #@35c
    move-object/from16 v0, p0

    #@35e
    iput v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@360
    .line 454
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@363
    move-result-object v6

    #@364
    check-cast v6, Lgov/nist/javax/sip/header/Via;

    #@366
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@369
    move-result-object v6

    #@36a
    move-object/from16 v0, p0

    #@36c
    iput-object v6, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@36e
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 937
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 869
    if-nez p1, :cond_0

    #@2
    .line 870
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 872
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 873
    const/4 v0, 0x0

    #@13
    .line 879
    :goto_0
    return v0

    #@14
    :cond_1
    move-object v1, p1

    #@15
    .line 875
    check-cast v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@17
    .line 876
    .local v1, "that":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .local v0, "retval":Z
    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@4
    const-string/jumbo v2, "UDP"

    #@7
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    #@0
    .prologue
    .line 887
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    #@2
    return v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 927
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 818
    const-string/jumbo v0, "udp"

    #@3
    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 909
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    #@2
    return v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 585
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@11
    .line 587
    :cond_0
    if-eqz p3, :cond_3

    #@13
    .line 588
    const-class v0, Lgov/nist/javax/sip/header/From;

    #@15
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    const-class v0, Lgov/nist/javax/sip/header/To;

    #@1d
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_1

    #@23
    .line 589
    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    #@25
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    .line 588
    if-nez v0, :cond_1

    #@2b
    .line 590
    const-class v0, Lgov/nist/javax/sip/header/Via;

    #@2d
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    .line 588
    if-nez v0, :cond_1

    #@33
    .line 591
    const-class v0, Lgov/nist/javax/sip/header/CallID;

    #@35
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    .line 588
    if-nez v0, :cond_1

    #@3b
    .line 592
    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    #@3d
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    .line 588
    if-nez v0, :cond_1

    #@43
    .line 593
    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    #@45
    .line 592
    invoke-virtual {p3, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    .line 587
    if-eqz v0, :cond_3

    #@4b
    .line 594
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_2

    #@53
    .line 595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@58
    move-result-object v0

    #@59
    const-string/jumbo v1, "BAD MESSAGE!"

    #@5c
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@5f
    .line 596
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@61
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@64
    move-result-object v0

    #@65
    invoke-interface {v0, p5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@68
    .line 598
    :cond_2
    throw p1

    #@69
    .line 600
    :cond_3
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    #@6c
    .line 583
    return-void
.end method

.method public isReliable()Z
    .locals 1

    #@0
    .prologue
    .line 916
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 923
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 15
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 468
    move-object/from16 v0, p1

    #@2
    instance-of v3, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    if-eqz v3, :cond_7

    #@6
    move-object/from16 v10, p1

    #@8
    .line 469
    check-cast v10, Lgov/nist/javax/sip/message/SIPRequest;

    #@a
    .line 474
    .local v10, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f
    move-result-object v3

    #@10
    const/16 v4, 0x10

    #@12
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 476
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@1c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getHost()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v6, ":"

    #@34
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 478
    iget v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    #@3a
    .line 477
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 478
    iget-wide v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    #@44
    const/4 v7, 0x0

    #@45
    move-object/from16 v4, p1

    #@47
    .line 476
    invoke-interface/range {v3 .. v9}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@4a
    .line 481
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4c
    invoke-virtual {v3, v10, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@4f
    move-result-object v12

    #@50
    .line 484
    .local v12, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-nez v12, :cond_2

    #@52
    .line 485
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@54
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_1

    #@5a
    .line 486
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5c
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5f
    move-result-object v3

    #@60
    .line 487
    const-string/jumbo v4, "Null request interface returned -- dropping request"

    #@63
    .line 486
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@66
    .line 491
    :cond_1
    return-void

    #@67
    .line 493
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@69
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_3

    #@6f
    .line 494
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@71
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@74
    move-result-object v3

    #@75
    new-instance v4, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v5, "About to process "

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    .line 495
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    .line 495
    const-string/jumbo v5, "/"

    #@8c
    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9b
    .line 497
    :cond_3
    :try_start_0
    invoke-interface {v12, v10, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    .line 499
    instance-of v3, v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@a0
    if-eqz v3, :cond_4

    #@a2
    move-object v14, v12

    #@a3
    .line 500
    check-cast v14, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@a5
    .line 501
    .local v14, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@a8
    move-result v3

    #@a9
    if-nez v3, :cond_4

    #@ab
    move-object v3, v12

    #@ac
    .line 502
    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@ae
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@b1
    .line 506
    .end local v14    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b3
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b6
    move-result v3

    #@b7
    if-eqz v3, :cond_5

    #@b9
    .line 507
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@bb
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@be
    move-result-object v3

    #@bf
    new-instance v4, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v5, "Done processing "

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    .line 508
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    .line 508
    const-string/jumbo v5, "/"

    #@d6
    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@e5
    .line 466
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_5
    :goto_0
    return-void

    #@e6
    .line 498
    .restart local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v12    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_0
    move-exception v3

    #@e7
    .line 499
    instance-of v4, v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@e9
    if-eqz v4, :cond_6

    #@eb
    move-object v14, v12

    #@ec
    .line 500
    check-cast v14, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@ee
    .line 501
    .restart local v14    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@f1
    move-result v4

    #@f2
    if-nez v4, :cond_6

    #@f4
    .line 502
    check-cast v12, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@f6
    .end local v12    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@f9
    .line 498
    .end local v14    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_6
    throw v3

    #@fa
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_7
    move-object/from16 v11, p1

    #@fc
    .line 515
    check-cast v11, Lgov/nist/javax/sip/message/SIPResponse;

    #@fe
    .line 517
    .local v11, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_1
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@101
    .line 525
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@103
    invoke-virtual {v3, v11, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@106
    move-result-object v13

    #@107
    .line 527
    .local v13, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v13, :cond_10

    #@109
    .line 529
    :try_start_2
    instance-of v3, v13, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@10b
    if-eqz v3, :cond_8

    #@10d
    .line 530
    move-object v0, v13

    #@10e
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@110
    move-object v3, v0

    #@111
    invoke-virtual {v3, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    #@114
    move-result v3

    #@115
    if-eqz v3, :cond_a

    #@117
    .line 539
    :cond_8
    invoke-interface {v13, v11, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@11a
    .line 541
    instance-of v3, v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@11c
    if-eqz v3, :cond_5

    #@11e
    move-object v3, v13

    #@11f
    .line 542
    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@121
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@124
    move-result v3

    #@125
    if-nez v3, :cond_5

    #@127
    .line 544
    check-cast v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@129
    .end local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@12c
    goto :goto_0

    #@12d
    .line 518
    :catch_0
    move-exception v2

    #@12e
    .line 519
    .local v2, "ex":Ljava/text/ParseException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@130
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@133
    move-result v3

    #@134
    if-eqz v3, :cond_9

    #@136
    .line 520
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@138
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13b
    move-result-object v3

    #@13c
    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v5, "Dropping Badly formatted response message >>> "

    #@144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v4

    #@148
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v4

    #@14c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v4

    #@150
    .line 520
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@153
    .line 523
    :cond_9
    return-void

    #@154
    .line 532
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_a
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@156
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@159
    move-result v3

    #@15a
    if-eqz v3, :cond_b

    #@15c
    .line 533
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15e
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@161
    move-result-object v3

    #@162
    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v5, "Dropping response message with invalid tag >>> "

    #@16a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v4

    #@16e
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v4

    #@172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v4

    #@176
    .line 533
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@179
    .line 541
    :cond_b
    instance-of v3, v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@17b
    if-eqz v3, :cond_c

    #@17d
    move-object v3, v13

    #@17e
    .line 542
    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@180
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@183
    move-result v3

    #@184
    if-eqz v3, :cond_d

    #@186
    .line 536
    .end local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_c
    :goto_1
    return-void

    #@187
    .line 544
    .restart local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_d
    check-cast v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@189
    .end local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@18c
    goto :goto_1

    #@18d
    .line 540
    .restart local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :catchall_1
    move-exception v3

    #@18e
    move-object v4, v3

    #@18f
    .line 541
    instance-of v3, v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@191
    if-eqz v3, :cond_e

    #@193
    move-object v3, v13

    #@194
    .line 542
    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@196
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@199
    move-result v3

    #@19a
    if-eqz v3, :cond_f

    #@19c
    .line 540
    .end local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_e
    :goto_2
    throw v4

    #@19d
    .line 544
    .restart local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_f
    check-cast v13, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@19f
    .end local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@1a2
    goto :goto_2

    #@1a3
    .line 549
    .restart local v13    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_10
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a5
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1a8
    move-result v3

    #@1a9
    if-eqz v3, :cond_5

    #@1ab
    .line 550
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1ad
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b0
    move-result-object v3

    #@1b1
    const-string/jumbo v4, "null sipServerResponse!"

    #@1b4
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1b7
    goto/16 :goto_0
.end method

.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 246
    const/4 v3, 0x0

    #@2
    .line 250
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    #@4
    if-nez v4, :cond_1

    #@6
    .line 251
    new-instance v4, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@8
    invoke-direct {v4}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@b
    iput-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    #@d
    .line 252
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    #@f
    invoke-virtual {v4, p0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    #@12
    .line 257
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14
    iget v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@16
    if-eq v4, v8, :cond_6

    #@18
    .line 258
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@1a
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@1c
    iget-object v5, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@1e
    monitor-enter v5

    #@1f
    .line 259
    :cond_2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@21
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@23
    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@25
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_5

    #@2b
    .line 262
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2d
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@2f
    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    if-nez v4, :cond_3

    #@33
    monitor-exit v5

    #@34
    .line 263
    return-void

    #@35
    .line 267
    :cond_3
    if-nez v3, :cond_4

    #@37
    .line 268
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@40
    move-result-object v3

    #@41
    .line 273
    :cond_4
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    #@44
    .line 278
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@46
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@48
    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@4a
    .line 279
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    #@4d
    move-result-wide v6

    #@4e
    .line 278
    invoke-virtual {v4, v6, v7}, Ljava/util/LinkedList;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 281
    :catch_0
    move-exception v1

    #@53
    .line 282
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@55
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@57
    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    if-nez v4, :cond_2

    #@5b
    monitor-exit v5

    #@5c
    .line 283
    return-void

    #@5d
    .line 286
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@5f
    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@61
    iget-object v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@63
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    check-cast v2, Ljava/net/DatagramPacket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@69
    .local v2, "packet":Ljava/net/DatagramPacket;
    monitor-exit v5

    #@6a
    .line 290
    iput-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    #@6c
    .line 297
    :goto_1
    :try_start_4
    invoke-direct {p0, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@6f
    .line 304
    :goto_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@71
    iget v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@73
    if-ne v4, v8, :cond_0

    #@75
    .line 305
    return-void

    #@76
    .line 258
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v4

    #@77
    monitor-exit v5

    #@78
    throw v4

    #@79
    .line 292
    :cond_6
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    #@7b
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    goto :goto_1

    #@7c
    .line 298
    :catch_1
    move-exception v0

    #@7d
    .line 300
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7f
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@82
    move-result-object v4

    #@83
    .line 301
    const-string/jumbo v5, "Error while processing incoming UDP packet"

    #@86
    .line 300
    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@89
    goto :goto_2
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 18
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 615
    move-object/from16 v0, p1

    #@16
    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@18
    if-eqz v2, :cond_4

    #@1a
    move-object/from16 v2, p1

    #@1c
    .line 616
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@1e
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    #@21
    move-result-object v2

    #@22
    if-eqz v2, :cond_4

    #@24
    .line 620
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@28
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2b
    move-result-object v2

    #@2c
    const/16 v3, 0x10

    #@2e
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    #@31
    .line 629
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@34
    move-result-wide v6

    #@35
    .line 631
    .local v6, "time":J
    :try_start_0
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    #@3c
    move-result-object v3

    #@3d
    const/4 v2, 0x0

    #@3e
    array-length v4, v3

    #@3f
    :goto_1
    if-ge v2, v4, :cond_7

    #@41
    aget-object v17, v3, v2

    #@43
    .line 633
    .local v17, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@46
    move-result-object v5

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v8, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@4b
    invoke-virtual {v5, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_6

    #@51
    .line 634
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@54
    move-result v5

    #@55
    move-object/from16 v0, p0

    #@57
    iget v8, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@59
    if-ne v5, v8, :cond_6

    #@5b
    .line 635
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 636
    move-object/from16 v0, p0

    #@61
    iget-object v8, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@63
    .line 635
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v5

    #@67
    .line 633
    if-eqz v5, :cond_6

    #@69
    .line 638
    move-object/from16 v0, p0

    #@6b
    iget-object v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@6d
    .line 639
    move-object/from16 v0, p0

    #@6f
    iget v8, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@71
    .line 637
    move-object/from16 v0, v17

    #@73
    invoke-virtual {v0, v5, v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    #@76
    move-result-object v16

    #@77
    .line 640
    .local v16, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, v16

    #@79
    instance-of v5, v0, Lgov/nist/javax/sip/stack/RawMessageChannel;

    #@7b
    if-eqz v5, :cond_6

    #@7d
    .line 641
    check-cast v16, Lgov/nist/javax/sip/stack/RawMessageChannel;

    #@7f
    .end local v16    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, v16

    #@81
    move-object/from16 v1, p1

    #@83
    invoke-interface {v0, v1}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@86
    .line 643
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8a
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_1

    #@90
    .line 644
    move-object/from16 v0, p0

    #@92
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@94
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@97
    move-result-object v2

    #@98
    const-string/jumbo v3, "Self routing message"

    #@9b
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    .line 663
    :cond_1
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a2
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a5
    move-result-object v2

    #@a6
    const/16 v3, 0x10

    #@a8
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@ab
    move-result v2

    #@ac
    if-eqz v2, :cond_2

    #@ae
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    #@b1
    move-result v2

    #@b2
    if-eqz v2, :cond_5

    #@b4
    .line 665
    :cond_2
    move-object/from16 v0, p0

    #@b6
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b8
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@bb
    move-result-object v2

    #@bc
    const/16 v3, 0x20

    #@be
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@c1
    move-result v2

    #@c2
    if-eqz v2, :cond_3

    #@c4
    .line 666
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c8
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@cb
    move-result-object v2

    #@cc
    const-string/jumbo v3, "Sent EMPTY Message"

    #@cf
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d2
    .line 645
    :cond_3
    :goto_2
    return-void

    #@d3
    .line 622
    .end local v6    # "time":J
    .end local v17    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_4
    move-object/from16 v0, p0

    #@d5
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d7
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@da
    move-result-object v2

    #@db
    const/16 v3, 0x10

    #@dd
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 664
    .restart local v6    # "time":J
    .restart local v17    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_5
    move-object/from16 v0, p0

    #@e4
    iget-object v4, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@ea
    move-object/from16 v2, p0

    #@ec
    move-object/from16 v3, p1

    #@ee
    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@f1
    goto :goto_2

    #@f2
    .line 631
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@f4
    goto/16 :goto_1

    #@f6
    .line 651
    .end local v17    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getTransport()Ljava/lang/String;

    #@f9
    move-result-object v2

    #@fa
    move-object/from16 v0, p1

    #@fc
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@ff
    move-result-object v9

    #@100
    .line 653
    .local v9, "msg":[B
    move-object/from16 v0, p0

    #@102
    iget-object v10, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@104
    move-object/from16 v0, p0

    #@106
    iget v11, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-object v12, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@10c
    .line 654
    move-object/from16 v0, p1

    #@10e
    instance-of v13, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@110
    move-object/from16 v8, p0

    #@112
    .line 653
    invoke-virtual/range {v8 .. v13}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@115
    .line 663
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@119
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11c
    move-result-object v2

    #@11d
    const/16 v3, 0x10

    #@11f
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@122
    move-result v2

    #@123
    if-eqz v2, :cond_8

    #@125
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    #@128
    move-result v2

    #@129
    if-eqz v2, :cond_a

    #@12b
    .line 665
    :cond_8
    move-object/from16 v0, p0

    #@12d
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@132
    move-result-object v2

    #@133
    const/16 v3, 0x20

    #@135
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@138
    move-result v2

    #@139
    if-eqz v2, :cond_9

    #@13b
    .line 666
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@142
    move-result-object v2

    #@143
    const-string/jumbo v3, "Sent EMPTY Message"

    #@146
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@149
    .line 613
    :cond_9
    :goto_3
    return-void

    #@14a
    .line 664
    :cond_a
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@14e
    move-object/from16 v0, p0

    #@150
    iget v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@152
    move-object/from16 v2, p0

    #@154
    move-object/from16 v3, p1

    #@156
    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@159
    goto :goto_3

    #@15a
    .line 658
    .end local v9    # "msg":[B
    :catch_0
    move-exception v15

    #@15b
    .line 659
    .local v15, "ex":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@162
    move-result-object v2

    #@163
    const-string/jumbo v3, "An exception occured while sending message"

    #@166
    invoke-interface {v2, v3, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@169
    .line 660
    new-instance v2, Ljava/io/IOException;

    #@16b
    .line 661
    const-string/jumbo v3, "An exception occured while sending message"

    #@16e
    .line 660
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@171
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@172
    .line 662
    .end local v15    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@173
    move-object v8, v2

    #@174
    .line 663
    move-object/from16 v0, p0

    #@176
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@178
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17b
    move-result-object v2

    #@17c
    const/16 v3, 0x10

    #@17e
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@181
    move-result v2

    #@182
    if-eqz v2, :cond_b

    #@184
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    #@187
    move-result v2

    #@188
    if-eqz v2, :cond_d

    #@18a
    .line 665
    :cond_b
    move-object/from16 v0, p0

    #@18c
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18e
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@191
    move-result-object v2

    #@192
    const/16 v3, 0x20

    #@194
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@197
    move-result v2

    #@198
    if-eqz v2, :cond_c

    #@19a
    .line 666
    move-object/from16 v0, p0

    #@19c
    iget-object v2, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19e
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1a1
    move-result-object v2

    #@1a2
    const-string/jumbo v3, "Sent EMPTY Message"

    #@1a5
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1a8
    .line 662
    :cond_c
    :goto_4
    throw v8

    #@1a9
    .line 656
    :catch_1
    move-exception v14

    #@1aa
    .line 657
    .local v14, "ex":Ljava/io/IOException;
    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1ab
    .line 664
    .end local v14    # "ex":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    #@1ad
    iget-object v4, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget v5, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    #@1b3
    move-object/from16 v2, p0

    #@1b5
    move-object/from16 v3, p1

    #@1b7
    invoke-virtual/range {v2 .. v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@1ba
    goto :goto_4
.end method

.method protected sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    .locals 17
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "peerProtocol"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    const/4 v3, -0x1

    #@1
    move/from16 v0, p3

    #@3
    if-ne v0, v3, :cond_1

    #@5
    .line 753
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 754
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v3

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 755
    const-string/jumbo v5, ":sendMessage: Dropping reply!"

    #@2b
    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@36
    .line 757
    :cond_0
    new-instance v3, Ljava/io/IOException;

    #@38
    const-string/jumbo v4, "Receiver port not set "

    #@3b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3

    #@3f
    .line 759
    :cond_1
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@43
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 760
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@50
    move-result-object v3

    #@51
    new-instance v4, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v5, ":sendMessage "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, "/"

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    move/from16 v0, p3

    #@6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 761
    const-string/jumbo v5, "\n"

    #@75
    .line 760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 761
    const-string/jumbo v5, " messageSize = "

    #@7c
    .line 760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 761
    move-object/from16 v0, p1

    #@82
    array-length v5, v0

    #@83
    .line 760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@8e
    .line 764
    :cond_2
    const-string/jumbo v3, "UDP"

    #@91
    move-object/from16 v0, p4

    #@93
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@96
    move-result v3

    #@97
    if-nez v3, :cond_6

    #@99
    .line 765
    new-instance v15, Ljava/net/DatagramPacket;

    #@9b
    move-object/from16 v0, p1

    #@9d
    array-length v3, v0

    #@9e
    move-object/from16 v0, p1

    #@a0
    move-object/from16 v1, p2

    #@a2
    move/from16 v2, p3

    #@a4
    invoke-direct {v15, v0, v3, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    #@a7
    .line 770
    .local v15, "reply":Ljava/net/DatagramPacket;
    :try_start_0
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ab
    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    #@ad
    if-eqz v3, :cond_5

    #@af
    .line 771
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@b3
    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@b5
    iget-object v0, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@b7
    move-object/from16 v16, v0

    #@b9
    .line 777
    .local v16, "sock":Ljava/net/DatagramSocket;
    :goto_0
    move-object/from16 v0, p0

    #@bb
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@bd
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c0
    move-result v3

    #@c1
    if-eqz v3, :cond_3

    #@c3
    .line 778
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c7
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ca
    move-result-object v3

    #@cb
    new-instance v4, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v5, "sendMessage "

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    .line 779
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@da
    move-result-object v5

    #@db
    .line 778
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    .line 779
    const-string/jumbo v5, "/"

    #@e2
    .line 778
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v4

    #@e6
    move/from16 v0, p3

    #@e8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v4

    #@ec
    .line 780
    const-string/jumbo v5, "\n"

    #@ef
    .line 778
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    .line 780
    new-instance v5, Ljava/lang/String;

    #@f5
    move-object/from16 v0, p1

    #@f7
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    #@fa
    .line 778
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v4

    #@102
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@105
    .line 782
    :cond_3
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@10a
    .line 783
    move-object/from16 v0, p0

    #@10c
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10e
    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    #@110
    if-nez v3, :cond_4

    #@112
    .line 784
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V

    #@115
    .line 750
    .end local v15    # "reply":Ljava/net/DatagramPacket;
    .end local v16    # "sock":Ljava/net/DatagramSocket;
    :cond_4
    :goto_1
    return-void

    #@116
    .line 775
    .restart local v15    # "reply":Ljava/net/DatagramPacket;
    :cond_5
    move-object/from16 v0, p0

    #@118
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11a
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@11d
    move-result-object v3

    #@11e
    invoke-interface {v3}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@121
    move-result-object v16

    #@122
    .restart local v16    # "sock":Ljava/net/DatagramSocket;
    goto :goto_0

    #@123
    .line 787
    .end local v16    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v12

    #@124
    .line 788
    .local v12, "ex":Ljava/lang/Exception;
    invoke-static {v12}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@127
    goto :goto_1

    #@128
    .line 785
    .end local v12    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    #@129
    .line 786
    .local v11, "ex":Ljava/io/IOException;
    throw v11

    #@12a
    .line 793
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v15    # "reply":Ljava/net/DatagramPacket;
    :cond_6
    move-object/from16 v0, p0

    #@12c
    iget-object v3, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12e
    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@130
    .line 794
    move-object/from16 v0, p0

    #@132
    iget-object v4, v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@134
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@137
    move-result-object v4

    #@138
    .line 795
    const-string/jumbo v7, "tcp"

    #@13b
    move-object/from16 v5, p2

    #@13d
    move/from16 v6, p3

    #@13f
    move-object/from16 v8, p1

    #@141
    move/from16 v9, p5

    #@143
    move-object/from16 v10, p0

    #@145
    .line 793
    invoke-virtual/range {v3 .. v10}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    #@148
    move-result-object v14

    #@149
    .line 796
    .local v14, "outputSocket":Ljava/net/Socket;
    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@14c
    move-result-object v13

    #@14d
    .line 797
    .local v13, "myOutputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p1

    #@14f
    array-length v3, v0

    #@150
    const/4 v4, 0x0

    #@151
    move-object/from16 v0, p1

    #@153
    invoke-virtual {v13, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    #@156
    .line 798
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    #@159
    goto :goto_1
.end method

.method protected sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "reConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 686
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v5

    #@16
    const/16 v6, 0x10

    #@18
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    #@1b
    .line 688
    :cond_0
    const/4 v5, -0x1

    #@1c
    if-ne p3, v5, :cond_2

    #@1e
    .line 689
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@20
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 690
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@28
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2b
    move-result-object v5

    #@2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 691
    const-string/jumbo v7, ":sendMessage: Dropping reply!"

    #@40
    .line 690
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4b
    .line 693
    :cond_1
    new-instance v5, Ljava/io/IOException;

    #@4d
    const-string/jumbo v6, "Receiver port not set "

    #@50
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v5

    #@54
    .line 695
    :cond_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@56
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_3

    #@5c
    .line 696
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@61
    move-result-object v5

    #@62
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "sendMessage "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    const-string/jumbo v7, "/"

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 697
    const-string/jumbo v7, "\n"

    #@84
    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 697
    const-string/jumbo v7, "messageSize =  "

    #@8b
    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 697
    array-length v7, p1

    #@90
    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    .line 697
    const-string/jumbo v7, " message = "

    #@97
    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    .line 697
    new-instance v7, Ljava/lang/String;

    #@9d
    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    #@a0
    .line 696
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ab
    .line 698
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ad
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b0
    move-result-object v5

    #@b1
    const-string/jumbo v6, "*******************\n"

    #@b4
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b7
    .line 702
    :cond_3
    new-instance v3, Ljava/net/DatagramPacket;

    #@b9
    array-length v5, p1

    #@ba
    invoke-direct {v3, p1, v5, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    #@bd
    .line 706
    .local v3, "reply":Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    #@be
    .line 708
    .local v0, "created":Z
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c0
    iget-boolean v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    #@c2
    if-eqz v5, :cond_5

    #@c4
    .line 713
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@c6
    check-cast v5, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@c8
    iget-object v4, v5, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@ca
    .line 724
    .local v4, "sock":Ljava/net/DatagramSocket;
    :goto_0
    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@cd
    .line 725
    if-eqz v0, :cond_4

    #@cf
    .line 726
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    #@d2
    .line 683
    .end local v4    # "sock":Ljava/net/DatagramSocket;
    :cond_4
    :goto_1
    return-void

    #@d3
    .line 721
    :cond_5
    new-instance v4, Ljava/net/DatagramSocket;

    #@d5
    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    .line 722
    .restart local v4    # "sock":Ljava/net/DatagramSocket;
    const/4 v0, 0x1

    #@d9
    goto :goto_0

    #@da
    .line 729
    .end local v4    # "sock":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    #@db
    .line 730
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@de
    goto :goto_1

    #@df
    .line 727
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@e0
    .line 728
    .local v1, "ex":Ljava/io/IOException;
    throw v1
.end method
