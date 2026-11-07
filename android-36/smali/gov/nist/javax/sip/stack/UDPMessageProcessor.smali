.class public Lgov/nist/javax/sip/stack/UDPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "UDPMessageProcessor.java"


# static fields
.field private static final greylist HIGHWAT:I = 0x1388

.field private static final greylist LOWAT:I = 0x9c4


# instance fields
.field protected greylist isRunning:Z

.field protected greylist messageChannels:Ljava/util/LinkedList;

.field protected greylist messageQueue:Ljava/util/LinkedList;

.field private greylist port:I

.field protected greylist sock:Ljava/net/DatagramSocket;

.field protected greylist threadPoolSize:I


# direct methods
.method protected constructor greylist <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .registers 7
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, "udp"

    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 105
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    .line 107
    :try_start_10
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getReceiveUdpBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getSendUdpBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 117
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 120
    :cond_44
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 121
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 126
    :cond_5c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V
    :try_end_65
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_65} :catch_67

    .line 131
    :cond_65
    nop

    .line 132
    return-void

    .line 129
    :catch_67
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 6
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 311
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 312
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, v1, v2, v3, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    .line 311
    return-object v0
.end method

.method public greylist createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 5
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, p1, p2, v1, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public greylist getDefaultTargetPort()I
    .registers 2

    .line 324
    const/16 v0, 0x13c4

    return v0
.end method

.method public greylist getMaximumMessageSize()I
    .registers 2

    .line 338
    const/16 v0, 0x2000

    return v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 142
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 294
    const-string v0, "udp"

    return-object v0
.end method

.method public greylist inUse()Z
    .registers 3

    .line 345
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 347
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api run()V
    .registers 16

    .line 166
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ge v0, v2, :cond_24

    .line 171
    new-instance v2, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v2, v3, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    .line 173
    .local v2, "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v2    # "channel":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 179
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v0

    .line 182
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :goto_2e
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-eqz v2, :cond_142

    .line 186
    const/4 v2, 0x0

    :try_start_33
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 188
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v3

    .line 189
    .local v3, "bufsize":I
    new-array v4, v3, [B

    .line 190
    .local v4, "message":[B
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-direct {v5, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 191
    .local v5, "packet":Ljava/net/DatagramPacket;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 203
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    if-eqz v6, :cond_c4

    .line 204
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v7, 0x1388

    if-lt v6, v7, :cond_6c

    .line 205
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 206
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping message -- queue length exceeded"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 210
    :cond_6b
    goto :goto_2e

    .line 211
    :cond_6c
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v8, 0x9c4

    if-le v6, v8, :cond_c4

    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v6, v7, :cond_c4

    .line 213
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    int-to-float v6, v6

    const v7, 0x451c4000    # 2500.0f

    div-float/2addr v6, v7

    .line 214
    .local v6, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    float-to-double v9, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v9, v11, v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_99

    const/4 v7, 0x1

    goto :goto_9a

    :cond_99
    move v7, v2

    .line 215
    .local v7, "decision":Z
    :goto_9a
    if-eqz v7, :cond_c4

    .line 216
    iget-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 217
    iget-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping message with probability  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    float-to-double v13, v6

    sub-double/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 221
    :cond_c2
    goto/16 :goto_2e

    .line 231
    .end local v6    # "threshold":F
    .end local v7    # "decision":Z
    :cond_c4
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-eq v6, v1, :cond_dc

    .line 238
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_cd
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_cd} :catch_13f
    .catch Ljava/net/SocketException; {:try_start_33 .. :try_end_cd} :catch_11a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_cd} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_cd} :catch_e4

    .line 240
    :try_start_cd
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit v6

    goto :goto_140

    :catchall_d9
    move-exception v7

    monitor-exit v6
    :try_end_db
    .catchall {:try_start_cd .. :try_end_db} :catchall_d9

    .end local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :try_start_db
    throw v7

    .line 244
    .restart local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :cond_dc
    new-instance v6, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v6, v7, p0, v5}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    :try_end_e3
    .catch Ljava/net/SocketTimeoutException; {:try_start_db .. :try_end_e3} :catch_13f
    .catch Ljava/net/SocketException; {:try_start_db .. :try_end_e3} :catch_11a
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e3} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e3} :catch_e4

    goto :goto_140

    .line 264
    .end local v3    # "bufsize":I
    .end local v4    # "message":[B
    .end local v5    # "packet":Ljava/net/DatagramPacket;
    :catch_e4
    move-exception v1

    .line 265
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 266
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "UDPMessageProcessor: Unexpected Exception - quitting"

    .line 267
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 268
    :cond_fa
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 269
    return-void

    .line 258
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_fe
    move-exception v3

    .line 259
    .local v3, "ex":Ljava/io/IOException;
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 260
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_140

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v4, "UDPMessageProcessor: Got an IO Exception"

    .line 263
    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_140

    .line 248
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_11a
    move-exception v3

    .line 249
    .local v3, "ex":Ljava/net/SocketException;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 250
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "UDPMessageProcessor: Stopping"

    .line 251
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_130
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 255
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 256
    :try_start_135
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v2

    goto :goto_140

    :catchall_13c
    move-exception v1

    monitor-exit v2
    :try_end_13e
    .catchall {:try_start_135 .. :try_end_13e} :catchall_13c

    throw v1

    .line 246
    .end local v3    # "ex":Ljava/net/SocketException;
    :catch_13f
    move-exception v2

    .line 270
    :cond_140
    :goto_140
    goto/16 :goto_2e

    .line 272
    :cond_142
    return-void
.end method

.method public greylist start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 152
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    const-string v0, "UDPMessageProcessorThread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 157
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public greylist stop()V
    .registers 3

    .line 279
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 281
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 282
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method
