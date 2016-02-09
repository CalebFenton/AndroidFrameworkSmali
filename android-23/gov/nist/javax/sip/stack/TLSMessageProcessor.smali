.class public Lgov/nist/javax/sip/stack/TLSMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TLSMessageProcessor.java"


# instance fields
.field private incomingTlsMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field protected nConnections:I

.field private sock:Ljava/net/ServerSocket;

.field private tlsMessageChannels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected useCount:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "tls"

    #@3
    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@6
    .line 77
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@9
    .line 90
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    .line 91
    new-instance v0, Ljava/util/Hashtable;

    #@d
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@10
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@12
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    #@19
    .line 88
    return-void
.end method


# virtual methods
.method protected declared-synchronized cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .locals 5
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 250
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@d
    .line 251
    .local v0, "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    if-eqz v0, :cond_1

    #@f
    .line 252
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 253
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 254
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    #@37
    .line 256
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@39
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 257
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 258
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@5e
    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 248
    return-void

    #@63
    .end local v0    # "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
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
    .line 232
    :try_start_0
    const-string/jumbo v2, "TLS"

    #@4
    invoke-static {p1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 233
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 234
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v2

    #@1a
    .line 236
    :cond_0
    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@1c
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    #@1f
    move-result-object v2

    #@20
    .line 237
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    #@23
    move-result v3

    #@24
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@26
    .line 236
    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    #@29
    .line 238
    .local v1, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@2b
    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 239
    const/4 v2, 0x1

    #@2f
    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    #@31
    .line 240
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@33
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_1

    #@39
    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 242
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 244
    return-object v1

    #@75
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
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
    .line 265
    :try_start_0
    const-string/jumbo v3, "TLS"

    #@4
    invoke-static {p1, p2, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 266
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 267
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    return-object v3

    #@1a
    .line 269
    :cond_0
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@1c
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    invoke-direct {v2, p1, p2, v3, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    #@21
    .line 270
    .local v2, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@23
    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 271
    const/4 v3, 0x1

    #@27
    iput-boolean v3, v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    #@29
    .line 272
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 273
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 274
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 276
    return-object v2

    #@6d
    .line 278
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catch_0
    move-exception v0

    #@6e
    .line 279
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
    .line 298
    const/16 v0, 0x13c5

    #@2
    return v0
.end method

.method public getMaximumMessageSize()I
    .locals 1

    #@0
    .prologue
    .line 287
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public inUse()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 291
    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

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
    .line 305
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected declared-synchronized remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .locals 4
    .param p1, "tlsMessageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 218
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 219
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 220
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 224
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@34
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    if-ne v1, p1, :cond_1

    #@3a
    .line 225
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@3c
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 227
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 216
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
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 126
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    #@3
    if-eqz v6, :cond_4

    #@5
    .line 128
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    #@6
    .line 133
    :cond_1
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@a
    const/4 v7, -0x1

    #@b
    if-eq v6, v7, :cond_2

    #@d
    .line 134
    iget v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@f
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    iget v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-lt v6, v7, :cond_2

    #@15
    .line 136
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->wait()V

    #@18
    .line 138
    iget-boolean v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    if-nez v6, :cond_1

    #@1c
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@1d
    .line 139
    return-void

    #@1e
    .line 140
    :catch_0
    move-exception v2

    #@1f
    .line 144
    :cond_2
    :try_start_4
    iget v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@21
    add-int/lit8 v6, v6, 0x1

    #@23
    iput v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@25
    :try_start_5
    monitor-exit p0

    #@26
    .line 147
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@28
    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@2b
    move-result-object v5

    #@2c
    .line 149
    .local v5, "newsock":Ljava/net/Socket;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2e
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_3

    #@34
    .line 150
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@36
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, "Accepting new connection!"

    #@3d
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@40
    .line 156
    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    #@42
    new-instance v7, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@44
    iget-object v8, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@46
    invoke-direct {v7, v5, v8, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    #@49
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@4c
    goto :goto_0

    #@4d
    .line 157
    .end local v5    # "newsock":Ljava/net/Socket;
    :catch_1
    move-exception v3

    #@4e
    .line 158
    .local v3, "ex":Ljava/net/SocketException;
    iget-boolean v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    #@50
    if-eqz v6, :cond_0

    #@52
    .line 159
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@54
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@57
    move-result-object v6

    #@58
    .line 160
    const-string/jumbo v7, "Fatal - SocketException occured while Accepting connection"

    #@5b
    .line 159
    invoke-interface {v6, v7, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@5e
    .line 161
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    #@60
    .line 124
    .end local v3    # "ex":Ljava/net/SocketException;
    :cond_4
    :goto_1
    return-void

    #@61
    .line 128
    :catchall_0
    move-exception v6

    #@62
    :try_start_6
    monitor-exit p0

    #@63
    throw v6
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@64
    .line 164
    :catch_2
    move-exception v4

    #@65
    .line 165
    .local v4, "ex":Ljavax/net/ssl/SSLException;
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    #@67
    .line 166
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@69
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6c
    move-result-object v6

    #@6d
    .line 167
    const-string/jumbo v7, "Fatal - SSSLException occured while Accepting connection"

    #@70
    .line 166
    invoke-interface {v6, v7, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@73
    goto :goto_1

    #@74
    .line 173
    .end local v4    # "ex":Ljavax/net/ssl/SSLException;
    :catch_3
    move-exception v1

    #@75
    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@77
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7a
    move-result-object v6

    #@7b
    const-string/jumbo v7, "Unexpected Exception!"

    #@7e
    invoke-interface {v6, v7, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@81
    goto :goto_0

    #@82
    .line 169
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@83
    .line 171
    .local v0, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@85
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@88
    move-result-object v6

    #@89
    const-string/jumbo v7, "Problem Accepting Connection"

    #@8c
    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@8f
    goto/16 :goto_0
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 100
    new-instance v1, Ljava/lang/Thread;

    #@4
    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@7
    .line 101
    .local v1, "thread":Ljava/lang/Thread;
    const-string/jumbo v2, "TLSMessageProcessorThread"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@d
    .line 103
    const/16 v2, 0xa

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    #@12
    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    #@15
    .line 106
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@17
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    #@1e
    move-result v3

    #@1f
    .line 107
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@22
    move-result-object v4

    #@23
    .line 106
    invoke-interface {v2, v3, v6, v4}, Lgov/nist/core/net/NetworkLayer;->createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@29
    .line 108
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@2b
    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    #@2d
    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    #@30
    .line 109
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@32
    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    #@34
    invoke-virtual {v2, v6}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    #@37
    .line 110
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@39
    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    #@3b
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    #@3e
    .line 111
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@40
    check-cast v2, Lgov/nist/javax/sip/SipStackImpl;

    #@42
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 112
    .local v0, "enabledCiphers":[Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@48
    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    #@4a
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@4d
    .line 113
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@4f
    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    #@51
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    #@54
    .line 116
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    #@56
    .line 117
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@59
    .line 99
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 192
    :try_start_0
    iget-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v5, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 193
    return-void

    #@7
    .line 195
    :cond_0
    const/4 v5, 0x0

    #@8
    :try_start_1
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    .line 197
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    #@c
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f
    .line 202
    :goto_0
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@14
    move-result-object v1

    #@15
    .line 203
    .local v1, "en":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@25
    .line 205
    .local v4, "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    goto :goto_1

    #@29
    .end local v1    # "en":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catchall_0
    move-exception v5

    #@2a
    monitor-exit p0

    #@2b
    throw v5

    #@2c
    .line 198
    :catch_0
    move-exception v0

    #@2d
    .line 199
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@30
    goto :goto_0

    #@31
    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "en":Ljava/util/Collection;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    .local v2, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_2

    #@3d
    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@43
    .line 210
    .restart local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    #@46
    goto :goto_2

    #@47
    .line 212
    .end local v4    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    monitor-exit p0

    #@4b
    .line 191
    return-void
.end method
