.class public Lgov/nist/javax/sip/stack/TLSMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TLSMessageProcessor.java"


# instance fields
.field private greylist incomingTlsMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private greylist isRunning:Z

.field protected greylist nConnections:I

.field private greylist sock:Ljava/net/ServerSocket;

.field private greylist tlsMessageChannels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/TLSMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist useCount:I


# direct methods
.method protected constructor greylist <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .registers 5
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .line 89
    const-string v0, "tls"

    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 90
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    .line 94
    return-void
.end method


# virtual methods
.method protected declared-synchronized greylist cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .registers 7
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    monitor-enter p0

    .line 249
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 251
    .local v1, "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    if-eqz v1, :cond_36

    .line 252
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 253
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 254
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_33
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    .line 256
    :cond_36
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 257
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 258
    :cond_5a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_61

    .line 260
    monitor-exit p0

    return-void

    .line 248
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "currentChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    .end local p1    # "messageChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public declared-synchronized greylist createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 7
    .param p1, "targetHostPort"    # Lgov/nist/core/HostPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 232
    :try_start_1
    const-string v0, "TLS"

    invoke-static {p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 234
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_72

    monitor-exit p0

    return-object v1

    .line 236
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_19
    :try_start_19
    new-instance v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 237
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    .line 238
    .local v1, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 240
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_19 .. :try_end_70} :catchall_72

    .line 244
    :cond_70
    monitor-exit p0

    return-object v1

    .line 231
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    .end local p1    # "targetHostPort":Lgov/nist/core/HostPort;
    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method public declared-synchronized greylist createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 8
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_1
    const-string v0, "TLS"

    invoke-static {p1, p2, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 267
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_17} :catch_6c
    .catchall {:try_start_1 .. :try_end_17} :catchall_6a

    monitor-exit p0

    return-object v1

    .line 269
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_19
    :try_start_19
    new-instance v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, p1, p2, v2, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    .line 270
    .local v1, "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 272
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 273
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_68} :catch_6c
    .catchall {:try_start_19 .. :try_end_68} :catchall_6a

    .line 276
    :cond_68
    monitor-exit p0

    return-object v1

    .line 264
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    .end local p1    # "host":Ljava/net/InetAddress;
    .end local p2    # "port":I
    :catchall_6a
    move-exception p1

    goto :goto_77

    .line 278
    .restart local p1    # "host":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catch_6c
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_6d
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    .end local p1    # "host":Ljava/net/InetAddress;
    .end local p2    # "port":I
    :goto_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_6a

    throw p1
.end method

.method public greylist getDefaultTargetPort()I
    .registers 2

    .line 298
    const/16 v0, 0x13c5

    return v0
.end method

.method public greylist getMaximumMessageSize()I
    .registers 2

    .line 287
    const v0, 0x7fffffff

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist inUse()Z
    .registers 2

    .line 291
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized greylist remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V
    .registers 6
    .param p1, "tlsMessageChannel"    # Lgov/nist/javax/sip/stack/TLSMessageChannel;

    monitor-enter p0

    .line 218
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 220
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 224
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_31
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3e

    .line 225
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3e
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 228
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "tlsMessageChannel":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 126
    nop

    :goto_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v0, :cond_90

    .line 128
    const/4 v0, 0x0

    :try_start_6
    monitor-enter p0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_7} :catch_7c
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_7} :catch_6d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7} :catch_60
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7} :catch_53

    .line 133
    :goto_7
    :try_start_7
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_50

    if-lt v1, v2, :cond_22

    .line 136
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 138
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_20
    .catchall {:try_start_16 .. :try_end_1b} :catchall_50

    if-nez v1, :cond_1f

    .line 139
    :try_start_1d
    monitor-exit p0

    return-void

    .line 142
    :cond_1f
    goto :goto_7

    .line 140
    :catch_20
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/InterruptedException;
    nop

    .line 144
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_22
    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 145
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_50

    .line 147
    :try_start_29
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 149
    .local v1, "newsock":Ljava/net/Socket;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 150
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Accepting new connection!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 156
    :cond_42
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    new-instance v3, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v3, v1, v4, p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/net/SocketException; {:try_start_29 .. :try_end_4e} :catch_7c
    .catch Ljavax/net/ssl/SSLException; {:try_start_29 .. :try_end_4e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4e} :catch_60
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4e} :catch_53

    .line 175
    nop

    .end local v1    # "newsock":Ljava/net/Socket;
    goto :goto_1

    .line 145
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :try_start_52
    throw v1
    :try_end_53
    .catch Ljava/net/SocketException; {:try_start_52 .. :try_end_53} :catch_7c
    .catch Ljavax/net/ssl/SSLException; {:try_start_52 .. :try_end_53} :catch_6d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 173
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :catch_53
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected Exception!"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 175
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    goto :goto_1

    .line 169
    :catch_60
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Problem Accepting Connection"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    goto :goto_1

    .line 164
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6d
    move-exception v1

    .line 165
    .local v1, "ex":Ljavax/net/ssl/SSLException;
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Fatal - SSSLException occured while Accepting connection"

    invoke-interface {v0, v2, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 168
    goto :goto_90

    .line 157
    .end local v1    # "ex":Ljavax/net/ssl/SSLException;
    :catch_7c
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/net/SocketException;
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    if-eqz v2, :cond_8f

    .line 159
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Fatal - SocketException occured while Accepting connection"

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 161
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 162
    goto :goto_90

    .line 158
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_8f
    goto :goto_5f

    .line 177
    :cond_90
    :goto_90
    return-void
.end method

.method public greylist start()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "TLSMessageProcessorThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 106
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v3

    .line 107
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 106
    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lgov/nist/core/net/NetworkLayer;->createSSLServerSocket(IILjava/net/InetAddress;)Ljavax/net/ssl/SSLServerSocket;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 108
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 109
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 110
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v2, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 111
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    check-cast v2, Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "enabledCiphers":[Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v3, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    check-cast v3, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v3, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 116
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public declared-synchronized greylist stop()V
    .registers 4

    monitor-enter p0

    .line 192
    :try_start_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_49

    if-nez v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->isRunning:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_49

    .line 197
    :try_start_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_49

    .line 200
    goto :goto_14

    .line 198
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :catch_10
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :goto_14
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->tlsMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 203
    .local v0, "en":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 205
    .local v2, "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    .line 206
    .end local v2    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    goto :goto_1e

    .line 207
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2e
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->incomingTlsMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "incomingMCIterator":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 210
    .restart local v2    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->close()V

    .line 211
    .end local v2    # "next":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    goto :goto_34

    .line 212
    .end local v1    # "incomingMCIterator":Ljava/util/Iterator;
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_49

    .line 214
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "en":Ljava/util/Collection;
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method
