.class public Lgov/nist/javax/sip/stack/TCPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TCPMessageProcessor.java"


# instance fields
.field private incomingTcpMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgov/nist/javax/sip/stack/TCPMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field protected nConnections:I

.field private sock:Ljava/net/ServerSocket;

.field private tcpMessageChannels:Ljava/util/Hashtable;

.field protected useCount:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "tcp"

    #@3
    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@6
    .line 81
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    .line 83
    new-instance v0, Ljava/util/Hashtable;

    #@a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@f
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    #@16
    .line 78
    return-void
.end method


# virtual methods
.method protected declared-synchronized cacheMessageChannel(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 5
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 233
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 234
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@d
    .line 235
    .local v0, "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    if-eqz v0, :cond_1

    #@f
    .line 236
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 237
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1c
    move-result-object v2

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Closing "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@34
    .line 238
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    #@37
    .line 240
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@44
    move-result-object v2

    #@45
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v4, "Caching "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5c
    .line 242
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@5e
    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 232
    return-void

    #@63
    .end local v0    # "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit p0

    #@65
    throw v2
.end method

.method public declared-synchronized createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 5
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 216
    :try_start_0
    const-string/jumbo v2, "TCP"

    #@4
    invoke-static {p1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 217
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 218
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v2

    #@1a
    .line 220
    :cond_0
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@1c
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    #@1f
    move-result-object v2

    #@20
    .line 221
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    #@23
    move-result v3

    #@24
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@26
    .line 220
    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    #@29
    .line 222
    .local v1, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@2b
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 223
    const/4 v2, 0x1

    #@2f
    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    #@31
    .line 224
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@33
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_1

    #@39
    .line 225
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3b
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3e
    move-result-object v2

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "key "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@56
    .line 226
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@58
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5b
    move-result-object v2

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "Creating "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    :cond_1
    monitor-exit p0

    #@74
    .line 228
    return-object v1

    #@75
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catchall_0
    move-exception v2

    #@76
    monitor-exit p0

    #@77
    throw v2
.end method

.method public declared-synchronized createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 6
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    const-string/jumbo v3, "TCP"

    #@4
    invoke-static {p1, p2, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 250
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 251
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v3

    #@1a
    .line 253
    :cond_0
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@1c
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    invoke-direct {v2, p1, p2, v3, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    #@21
    .line 254
    .local v2, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@23
    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 255
    const/4 v3, 0x1

    #@27
    iput-boolean v3, v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    #@29
    .line 256
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 257
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@33
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@36
    move-result-object v3

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "key "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4e
    .line 258
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@50
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@53
    move-result-object v3

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "Creating "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    :cond_1
    monitor-exit p0

    #@6c
    .line 260
    return-object v2

    #@6d
    .line 262
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catch_0
    move-exception v0

    #@6e
    .line 263
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    #@70
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@77
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v3

    #@79
    monitor-exit p0

    #@7a
    throw v3
.end method

.method public getDefaultTargetPort()I
    .locals 1

    #@0
    .prologue
    .line 282
    const/16 v0, 0x13c4

    #@2
    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    #@0
    .prologue
    .line 271
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "tcp"

    #@3
    return-object v0
.end method

.method public inUse()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 275
    iget v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected declared-synchronized remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 4
    .param p1, "tcpMessageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 201
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 202
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@12
    move-result-object v1

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " removing "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@32
    .line 207
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@34
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    if-ne v1, p1, :cond_1

    #@3a
    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@3c
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 211
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 199
    return-void

    #@46
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit p0

    #@48
    throw v1
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 112
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    #@2
    if-eqz v5, :cond_4

    #@4
    .line 114
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    #@5
    .line 119
    :cond_1
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    iget v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@9
    const/4 v6, -0x1

    #@a
    if-eq v5, v6, :cond_2

    #@c
    .line 120
    iget v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@e
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10
    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    if-lt v5, v6, :cond_2

    #@14
    .line 122
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->wait()V

    #@17
    .line 124
    iget-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    if-nez v5, :cond_1

    #@1b
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@1c
    .line 125
    return-void

    #@1d
    .line 126
    :catch_0
    move-exception v2

    #@1e
    .line 130
    :cond_2
    :try_start_4
    iget v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@20
    add-int/lit8 v5, v5, 0x1

    #@22
    iput v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@24
    :try_start_5
    monitor-exit p0

    #@25
    .line 133
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@27
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@2a
    move-result-object v4

    #@2b
    .line 134
    .local v4, "newsock":Ljava/net/Socket;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2d
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_3

    #@33
    .line 135
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, "Accepting new connection!"

    #@3e
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@41
    .line 140
    :cond_3
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    #@43
    new-instance v6, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@45
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@47
    invoke-direct {v6, v4, v7, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    #@4a
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@4d
    goto :goto_0

    #@4e
    .line 141
    .end local v4    # "newsock":Ljava/net/Socket;
    :catch_1
    move-exception v3

    #@4f
    .line 142
    .local v3, "ex":Ljava/net/SocketException;
    const/4 v5, 0x0

    #@50
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    #@52
    goto :goto_0

    #@53
    .line 114
    .end local v3    # "ex":Ljava/net/SocketException;
    :catchall_0
    move-exception v5

    #@54
    :try_start_6
    monitor-exit p0

    #@55
    throw v5
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@56
    .line 143
    :catch_2
    move-exception v0

    #@57
    .line 145
    .local v0, "ex":Ljava/io/IOException;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@59
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_0

    #@5f
    .line 146
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66
    move-result-object v5

    #@67
    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@6a
    goto :goto_0

    #@6b
    .line 148
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    #@6c
    .line 149
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@6f
    goto :goto_0

    #@70
    .line 110
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 91
    new-instance v0, Ljava/lang/Thread;

    #@3
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@6
    .line 92
    .local v0, "thread":Ljava/lang/Thread;
    const-string/jumbo v1, "TCPMessageProcessorThread"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@c
    .line 93
    const/16 v1, 0xa

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    #@11
    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    #@14
    .line 95
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x0

    #@23
    invoke-interface {v1, v2, v4, v3}, Lgov/nist/core/net/NetworkLayer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@29
    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "0.0.0.0"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_0

    #@3a
    .line 97
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, "::0"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    .line 96
    if-eqz v1, :cond_1

    #@4b
    .line 99
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@4d
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    #@50
    move-result-object v1

    #@51
    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V

    #@54
    .line 102
    :cond_1
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    #@56
    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@59
    .line 90
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 176
    const/4 v5, 0x0

    #@2
    :try_start_0
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 179
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@6
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 184
    :goto_0
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@e
    move-result-object v1

    #@f
    .line 185
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@1f
    .line 187
    .local v4, "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    goto :goto_1

    #@23
    .end local v1    # "en":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catchall_0
    move-exception v5

    #@24
    monitor-exit p0

    #@25
    throw v5

    #@26
    .line 180
    :catch_0
    move-exception v0

    #@27
    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@2a
    goto :goto_0

    #@2b
    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v2

    #@31
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@3d
    .line 193
    .restart local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    #@40
    goto :goto_2

    #@41
    .line 196
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 175
    return-void
.end method
