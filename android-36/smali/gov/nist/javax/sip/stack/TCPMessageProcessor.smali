.class public Lgov/nist/javax/sip/stack/TCPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "TCPMessageProcessor.java"


# instance fields
.field private greylist incomingTcpMessageChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgov/nist/javax/sip/stack/TCPMessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private greylist isRunning:Z

.field protected greylist nConnections:I

.field private greylist sock:Ljava/net/ServerSocket;

.field private greylist tcpMessageChannels:Ljava/util/Hashtable;

.field protected greylist useCount:I


# direct methods
.method protected constructor greylist <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .registers 5
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "port"    # I

    .line 79
    const-string v0, "tcp"

    invoke-direct {p0, p1, p3, v0, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 81
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    .line 85
    return-void
.end method


# virtual methods
.method protected declared-synchronized greylist cacheMessageChannel(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .registers 7
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    monitor-enter p0

    .line 233
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 235
    .local v1, "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    if-eqz v1, :cond_36

    .line 236
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 237
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 238
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_33
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    .line 240
    :cond_36
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 241
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 242
    :cond_5a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_61

    .line 244
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "currentChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    .end local p1    # "messageChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
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

    .line 216
    :try_start_1
    const-string v0, "TCP"

    invoke-static {p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 218
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_72

    monitor-exit p0

    return-object v1

    .line 220
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_19
    :try_start_19
    new-instance v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v2, v3, v4, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    .line 222
    .local v1, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    .line 224
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 225
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 226
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 228
    :cond_70
    monitor-exit p0

    return-object v1

    .line 215
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
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

    .line 249
    :try_start_1
    const-string v0, "TCP"

    invoke-static {p1, p2, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 251
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_17} :catch_6c
    .catchall {:try_start_1 .. :try_end_17} :catchall_6a

    monitor-exit p0

    return-object v1

    .line 253
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_19
    :try_start_19
    new-instance v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, p1, p2, v2, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    .line 254
    .local v1, "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    .line 256
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 257
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 258
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 260
    :cond_68
    monitor-exit p0

    return-object v1

    .line 248
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    .end local p1    # "host":Ljava/net/InetAddress;
    .end local p2    # "port":I
    :catchall_6a
    move-exception p1

    goto :goto_77

    .line 262
    .restart local p1    # "host":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    :catch_6c
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_6d
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
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

    .line 282
    const/16 v0, 0x13c4

    return v0
.end method

.method public greylist getMaximumMessageSize()I
    .registers 2

    .line 271
    const v0, 0x7fffffff

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 160
    const-string v0, "tcp"

    return-object v0
.end method

.method public greylist inUse()Z
    .registers 2

    .line 275
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

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

    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized greylist remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .registers 6
    .param p1, "tcpMessageChannel"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    monitor-enter p0

    .line 201
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 207
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_31
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3e

    .line 208
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_3e
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 212
    monitor-exit p0

    return-void

    .line 200
    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "tcpMessageChannel":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 5

    .line 112
    nop

    :goto_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    if-eqz v0, :cond_73

    .line 114
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_6} :catch_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_59
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6} :catch_54

    .line 119
    :goto_6
    :try_start_6
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_51

    if-lt v0, v1, :cond_21

    .line 122
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 124
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_51

    if-nez v0, :cond_1e

    .line 125
    :try_start_1c
    monitor-exit p0

    return-void

    .line 128
    :cond_1e
    goto :goto_6

    .line 126
    :catch_1f
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/InterruptedException;
    nop

    .line 130
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_21
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    .line 131
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_51

    .line 133
    :try_start_28
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 134
    .local v0, "newsock":Ljava/net/Socket;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 135
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Accepting new connection!"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 140
    :cond_43
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    new-instance v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v2, v0, v3, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;-><init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/net/SocketException; {:try_start_28 .. :try_end_4f} :catch_6e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4f} :catch_59
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4f} :catch_54

    .line 150
    nop

    .end local v0    # "newsock":Ljava/net/Socket;
    goto :goto_1

    .line 131
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :try_start_53
    throw v0
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_53 .. :try_end_54} :catch_6e
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_54

    .line 148
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :catch_54
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_72

    .line 143
    :catch_59
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 146
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 147
    :cond_6d
    goto :goto_1

    .line 141
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_6e
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    .line 150
    .end local v0    # "ex":Ljava/net/SocketException;
    :goto_72
    goto :goto_1

    .line 152
    :cond_73
    return-void
.end method

.method public greylist start()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "TCPMessageProcessorThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 95
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lgov/nist/core/net/NetworkLayer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0.0.0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 97
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 99
    :cond_48
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-super {p0, v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V

    .line 102
    :cond_51
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method public declared-synchronized greylist stop()V
    .registers 4

    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->isRunning:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_43

    .line 179
    :try_start_4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->sock:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a
    .catchall {:try_start_4 .. :try_end_9} :catchall_43

    .line 182
    goto :goto_e

    .line 180
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :catch_a
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->tcpMessageChannels:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 185
    .local v0, "en":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 187
    .local v2, "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    .line 188
    .end local v2    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    goto :goto_18

    .line 190
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_28
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->incomingTcpMessageChannels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    .local v1, "incomingMCIterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 193
    .restart local v2    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->close()V

    .line 194
    .end local v2    # "next":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    goto :goto_2e

    .line 196
    .end local v1    # "incomingMCIterator":Ljava/util/Iterator;
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_43

    .line 197
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "en":Ljava/util/Collection;
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method
