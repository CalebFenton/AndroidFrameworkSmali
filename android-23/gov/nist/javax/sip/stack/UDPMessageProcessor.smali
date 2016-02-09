.class public Lgov/nist/javax/sip/stack/UDPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "UDPMessageProcessor.java"


# static fields
.field private static final HIGHWAT:I = 0x1388

.field private static final LOWAT:I = 0x9c4


# instance fields
.field protected isRunning:Z

.field protected messageChannels:Ljava/util/LinkedList;

.field protected messageQueue:Ljava/util/LinkedList;

.field private port:I

.field protected sock:Ljava/net/DatagramSocket;

.field protected threadPoolSize:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    const-string/jumbo v1, "udp"

    #@3
    invoke-direct {p0, p1, p3, v1, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@6
    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    .line 103
    new-instance v1, Ljava/util/LinkedList;

    #@a
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@d
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@f
    .line 105
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    #@11
    .line 107
    :try_start_0
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, p3, p1}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@1b
    .line 110
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@1d
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getReceiveUdpBufferSize()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    #@24
    .line 111
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@26
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getSendUdpBufferSize()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    #@2d
    .line 117
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@39
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    #@40
    move-result-wide v2

    #@41
    long-to-int v2, v2

    #@42
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    #@45
    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "0.0.0.0"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_1

    #@52
    .line 121
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v2, "::0"

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    .line 120
    if-eqz v1, :cond_2

    #@5f
    .line 126
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@61
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    #@64
    move-result-object v1

    #@65
    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    .line 98
    :cond_2
    return-void

    #@69
    .line 129
    :catch_0
    move-exception v0

    #@6a
    .line 130
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v1, Ljava/io/IOException;

    #@6c
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@73
    throw v1
.end method


# virtual methods
.method public createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 4
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@2
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v1

    #@6
    .line 312
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    #@9
    move-result v2

    #@a
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c
    .line 311
    invoke-direct {v0, v1, v2, v3, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    #@f
    return-object v0
.end method

.method public createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4
    invoke-direct {v0, p1, p2, v1, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    #@7
    return-object v0
.end method

.method public getDefaultTargetPort()I
    .locals 1

    #@0
    .prologue
    .line 324
    const/16 v0, 0x13c4

    #@2
    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    #@0
    .prologue
    .line 338
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    #@2
    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 294
    const-string/jumbo v0, "udp"

    #@3
    return-object v0
.end method

.method public inUse()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 345
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@3
    monitor-enter v1

    #@4
    .line 346
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@6
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 345
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 331
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public run()V
    .locals 20

    #@0
    .prologue
    .line 166
    new-instance v14, Ljava/util/LinkedList;

    #@2
    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    #@5
    move-object/from16 v0, p0

    #@7
    iput-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    #@9
    .line 169
    move-object/from16 v0, p0

    #@b
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    iget v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@f
    const/4 v15, -0x1

    #@10
    if-eq v14, v15, :cond_0

    #@12
    .line 170
    const/4 v9, 0x0

    #@13
    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@15
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@17
    iget v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@19
    if-ge v9, v14, :cond_0

    #@1b
    .line 171
    new-instance v3, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-direct {v3, v14, v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    #@26
    .line 173
    .local v3, "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    move-object/from16 v0, p0

    #@28
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    #@2a
    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 170
    add-int/lit8 v9, v9, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 179
    .end local v3    # "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local v9    # "i":I
    :cond_0
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@34
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@3b
    move-result-object v12

    #@3c
    .line 182
    .local v12, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@3e
    iget-boolean v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    #@40
    if-eqz v14, :cond_8

    #@42
    .line 186
    :try_start_0
    invoke-virtual {v12}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    #@45
    .line 188
    move-object/from16 v0, p0

    #@47
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@49
    invoke-virtual {v14}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    #@4c
    move-result v2

    #@4d
    .line 189
    .local v2, "bufsize":I
    new-array v10, v2, [B

    #@4f
    .line 190
    .local v10, "message":[B
    new-instance v11, Ljava/net/DatagramPacket;

    #@51
    invoke-direct {v11, v10, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@54
    .line 191
    .local v11, "packet":Ljava/net/DatagramPacket;
    move-object/from16 v0, p0

    #@56
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@58
    invoke-virtual {v14, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    #@5b
    .line 203
    move-object/from16 v0, p0

    #@5d
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5f
    iget-boolean v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    #@61
    if-eqz v14, :cond_5

    #@63
    .line 204
    move-object/from16 v0, p0

    #@65
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@67
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    #@6a
    move-result v14

    #@6b
    const/16 v15, 0x1388

    #@6d
    if-lt v14, v15, :cond_2

    #@6f
    .line 205
    move-object/from16 v0, p0

    #@71
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@73
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@76
    move-result v14

    #@77
    if-eqz v14, :cond_1

    #@79
    .line 206
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7d
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@80
    move-result-object v14

    #@81
    const-string/jumbo v15, "Dropping message -- queue length exceeded"

    #@84
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@87
    goto :goto_1

    #@88
    .line 246
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v8

    #@89
    .local v8, "ex":Ljava/net/SocketTimeoutException;
    goto :goto_1

    #@8a
    .line 211
    .end local v8    # "ex":Ljava/net/SocketTimeoutException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :cond_2
    move-object/from16 v0, p0

    #@8c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@8e
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    #@91
    move-result v14

    #@92
    const/16 v15, 0x9c4

    #@94
    if-le v14, v15, :cond_5

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@9a
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    #@9d
    move-result v14

    #@9e
    const/16 v15, 0x1388

    #@a0
    if-ge v14, v15, :cond_5

    #@a2
    .line 213
    move-object/from16 v0, p0

    #@a4
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@a6
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    #@a9
    move-result v14

    #@aa
    add-int/lit16 v14, v14, -0x9c4

    #@ac
    int-to-float v14, v14

    #@ad
    const v15, 0x451c4000    # 2500.0f

    #@b0
    div-float v13, v14, v15

    #@b2
    .line 214
    .local v13, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    #@b5
    move-result-wide v14

    #@b6
    float-to-double v0, v13

    #@b7
    move-wide/from16 v16, v0

    #@b9
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    #@bb
    sub-double v16, v18, v16

    #@bd
    cmpl-double v14, v14, v16

    #@bf
    if-lez v14, :cond_4

    #@c1
    const/4 v4, 0x1

    #@c2
    .line 215
    .local v4, "decision":Z
    :goto_2
    if-eqz v4, :cond_5

    #@c4
    .line 216
    move-object/from16 v0, p0

    #@c6
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c8
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@cb
    move-result v14

    #@cc
    if-eqz v14, :cond_1

    #@ce
    .line 217
    move-object/from16 v0, p0

    #@d0
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d2
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d5
    move-result-object v14

    #@d6
    new-instance v15, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v16, "Dropping message with probability  "

    #@de
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v15

    #@e2
    float-to-double v0, v13

    #@e3
    move-wide/from16 v16, v0

    #@e5
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    #@e7
    sub-double v16, v18, v16

    #@e9
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v15

    #@ed
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v15

    #@f1
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    #@f4
    goto/16 :goto_1

    #@f6
    .line 248
    .end local v2    # "bufsize":I
    .end local v4    # "decision":Z
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .end local v13    # "threshold":F
    :catch_1
    move-exception v7

    #@f7
    .line 249
    .local v7, "ex":Ljava/net/SocketException;
    move-object/from16 v0, p0

    #@f9
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@fb
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@fe
    move-result v14

    #@ff
    if-eqz v14, :cond_3

    #@101
    .line 250
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@104
    move-result-object v14

    #@105
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@108
    move-result-object v14

    #@109
    .line 251
    const-string/jumbo v15, "UDPMessageProcessor: Stopping"

    #@10c
    .line 250
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@10f
    .line 252
    :cond_3
    const/4 v14, 0x0

    #@110
    move-object/from16 v0, p0

    #@112
    iput-boolean v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    #@114
    .line 255
    move-object/from16 v0, p0

    #@116
    iget-object v15, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@118
    monitor-enter v15

    #@119
    .line 256
    :try_start_1
    move-object/from16 v0, p0

    #@11b
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@11d
    invoke-virtual {v14}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@120
    monitor-exit v15

    #@121
    goto/16 :goto_1

    #@123
    .line 214
    .end local v7    # "ex":Ljava/net/SocketException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    .restart local v13    # "threshold":F
    :cond_4
    const/4 v4, 0x0

    #@124
    .restart local v4    # "decision":Z
    goto :goto_2

    #@125
    .line 231
    .end local v4    # "decision":Z
    .end local v13    # "threshold":F
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@127
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@129
    iget v14, v14, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@12b
    const/4 v15, -0x1

    #@12c
    if-eq v14, v15, :cond_7

    #@12e
    .line 238
    move-object/from16 v0, p0

    #@130
    iget-object v15, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@132
    monitor-enter v15
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@133
    .line 240
    :try_start_3
    move-object/from16 v0, p0

    #@135
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@137
    invoke-virtual {v14, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@13a
    .line 241
    move-object/from16 v0, p0

    #@13c
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@13e
    invoke-virtual {v14}, Ljava/util/LinkedList;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@141
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@142
    goto/16 :goto_1

    #@144
    .line 258
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v5

    #@145
    .line 259
    .local v5, "ex":Ljava/io/IOException;
    const/4 v14, 0x0

    #@146
    move-object/from16 v0, p0

    #@148
    iput-boolean v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    #@14a
    .line 260
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    #@14d
    .line 261
    move-object/from16 v0, p0

    #@14f
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@151
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@154
    move-result v14

    #@155
    if-eqz v14, :cond_1

    #@157
    .line 262
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15a
    move-result-object v14

    #@15b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15e
    move-result-object v14

    #@15f
    .line 263
    const-string/jumbo v15, "UDPMessageProcessor: Got an IO Exception"

    #@162
    .line 262
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@165
    goto/16 :goto_1

    #@167
    .line 238
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v14

    #@168
    :try_start_5
    monitor-exit v15

    #@169
    throw v14
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@16a
    .line 264
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v6

    #@16b
    .line 265
    .local v6, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@16d
    iget-object v14, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16f
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@172
    move-result v14

    #@173
    if-eqz v14, :cond_6

    #@175
    .line 266
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@178
    move-result-object v14

    #@179
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17c
    move-result-object v14

    #@17d
    .line 267
    const-string/jumbo v15, "UDPMessageProcessor: Unexpected Exception - quitting"

    #@180
    .line 266
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@183
    .line 268
    :cond_6
    invoke-static {v6}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@186
    .line 269
    return-void

    #@187
    .line 244
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v2    # "bufsize":I
    .restart local v10    # "message":[B
    .restart local v11    # "packet":Ljava/net/DatagramPacket;
    :cond_7
    :try_start_6
    new-instance v14, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v15, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18d
    move-object/from16 v0, p0

    #@18f
    invoke-direct {v14, v15, v0, v11}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@192
    goto/16 :goto_1

    #@194
    .line 255
    .end local v2    # "bufsize":I
    .end local v10    # "message":[B
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    .restart local v7    # "ex":Ljava/net/SocketException;
    :catchall_1
    move-exception v14

    #@195
    monitor-exit v15

    #@196
    throw v14

    #@197
    .line 164
    .end local v7    # "ex":Ljava/net/SocketException;
    :cond_8
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    #@3
    .line 152
    new-instance v0, Ljava/lang/Thread;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@8
    .line 153
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@b
    .line 155
    const-string/jumbo v1, "UDPMessageProcessorThread"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@11
    .line 157
    const/16 v1, 0xa

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    #@16
    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@19
    .line 148
    return-void
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 279
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@2
    monitor-enter v1

    #@3
    .line 280
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    #@6
    .line 281
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    #@8
    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V

    #@b
    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    #@d
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 278
    return-void

    #@12
    .line 279
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
