.class public final Lgov/nist/javax/sip/stack/TLSMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TLSMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field private handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

.field protected isCached:Z

.field protected isRunning:Z

.field private key:Ljava/lang/String;

.field private myAddress:Ljava/lang/String;

.field private myClientInputStream:Ljava/io/InputStream;

.field private myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field private myPort:I

.field private mySock:Ljava/net/Socket;

.field private mythread:Ljava/lang/Thread;

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .locals 3
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 171
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 172
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "creating new TLSMessageChannel (outgoing)"

    #@10
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@13
    .line 173
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@1a
    .line 175
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1c
    .line 176
    iput p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@1e
    .line 177
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    #@24
    .line 178
    const-string/jumbo v0, "TLS"

    #@27
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    #@29
    .line 179
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    .line 180
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@2d
    .line 181
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    #@37
    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@39
    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@3b
    const-string/jumbo v2, "TLS"

    #@3e
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    #@44
    .line 183
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@46
    .line 170
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .locals 4
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 124
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@4
    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 127
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "creating new TLSMessageChannel (incoming)"

    #@11
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@14
    .line 128
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@1b
    :cond_0
    move-object v1, p1

    #@1c
    .line 131
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    #@1e
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@20
    .line 132
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    #@22
    if-eqz v1, :cond_1

    #@24
    move-object v0, p1

    #@25
    .line 134
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@27
    .line 135
    .local v0, "sslSock":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    #@2a
    .line 136
    new-instance v1, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@2c
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@2f
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    #@31
    .line 137
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    #@33
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    #@36
    .line 138
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@39
    .line 142
    .end local v0    # "sslSock":Ljavax/net/ssl/SSLSocket;
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@3b
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@41
    .line 143
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    #@4b
    .line 144
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@4d
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@50
    move-result-object v1

    #@51
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@53
    .line 146
    new-instance v1, Ljava/lang/Thread;

    #@55
    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@58
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    #@5a
    .line 147
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    #@5c
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    #@5f
    .line 148
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    #@61
    const-string/jumbo v2, "TLSMessageChannelThread"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@67
    .line 150
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@69
    .line 152
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@6b
    .line 153
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@6d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    #@70
    move-result v1

    #@71
    iput v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    #@73
    .line 154
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@75
    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    #@78
    move-result v1

    #@79
    iput v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@7b
    .line 156
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@7d
    .line 158
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    #@7f
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@82
    .line 125
    return-void
.end method

.method private sendMessage([BZ)V
    .locals 11
    .param p1, "msg"    # [B
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@4
    .line 256
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@e
    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@10
    .line 257
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    #@12
    move-object v5, p1

    #@13
    move v6, p2

    #@14
    move-object v7, p0

    #@15
    .line 255
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    #@18
    move-result-object v9

    #@19
    .line 261
    .local v9, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@1b
    if-eq v9, v0, :cond_1

    #@1d
    if-eqz v9, :cond_1

    #@1f
    .line 263
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@25
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 267
    :cond_0
    :goto_0
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@2a
    .line 268
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@2c
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@32
    .line 270
    new-instance v10, Ljava/lang/Thread;

    #@34
    invoke-direct {v10, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@37
    .line 271
    .local v10, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    #@38
    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    #@3b
    .line 272
    const-string/jumbo v0, "TLSMessageChannelThread"

    #@3e
    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@41
    .line 273
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    #@44
    .line 254
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    #@45
    .line 265
    :catch_0
    move-exception v8

    #@46
    .local v8, "ex":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 200
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    #@9
    .line 201
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 202
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v1

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Closing message Channel "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 197
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 203
    :catch_0
    move-exception v0

    #@30
    .line 204
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@32
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 205
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3d
    move-result-object v1

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "Error closing socket "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@55
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 661
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 662
    return v3

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 664
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@13
    .line 665
    .local v0, "that":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@15
    iget-object v2, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 666
    return v3

    #@1a
    .line 668
    :cond_1
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method public getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    #@2
    check-cast v0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@4
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 680
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@9
    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@b
    const-string/jumbo v2, "TLS"

    #@e
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    #@14
    .line 681
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    #@16
    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 235
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 237
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHost()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 717
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    #@0
    .prologue
    .line 713
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 709
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
    const-string/jumbo v0, "tls"

    #@3
    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 700
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    #@2
    return v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
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
    .line 343
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 344
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@11
    .line 346
    :cond_0
    if-eqz p3, :cond_7

    #@13
    .line 347
    const-class v3, Lgov/nist/javax/sip/header/From;

    #@15
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    const-class v3, Lgov/nist/javax/sip/header/To;

    #@1d
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 348
    const-class v3, Lgov/nist/javax/sip/header/CSeq;

    #@25
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    .line 347
    if-nez v3, :cond_1

    #@2b
    .line 348
    const-class v3, Lgov/nist/javax/sip/header/Via;

    #@2d
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 347
    if-nez v3, :cond_1

    #@33
    .line 349
    const-class v3, Lgov/nist/javax/sip/header/CallID;

    #@35
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 347
    if-nez v3, :cond_1

    #@3b
    .line 349
    const-class v3, Lgov/nist/javax/sip/header/RequestLine;

    #@3d
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v3

    #@41
    .line 347
    if-nez v3, :cond_1

    #@43
    .line 350
    const-class v3, Lgov/nist/javax/sip/header/StatusLine;

    #@45
    .line 349
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    .line 346
    if-eqz v3, :cond_7

    #@4b
    .line 351
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 352
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@58
    move-result-object v3

    #@59
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "Encountered bad message \n"

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@70
    .line 354
    :cond_2
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    .line 355
    .local v2, "msgString":Ljava/lang/String;
    const-string/jumbo v3, "SIP/"

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7a
    move-result v3

    #@7b
    if-nez v3, :cond_3

    #@7d
    const-string/jumbo v3, "ACK "

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_4

    #@86
    .line 376
    :cond_3
    :goto_0
    throw p1

    #@87
    .line 357
    :cond_4
    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    .line 358
    .local v0, "badReqRes":Ljava/lang/String;
    if-eqz v0, :cond_6

    #@8d
    .line 359
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8f
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_5

    #@95
    .line 360
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@97
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9a
    move-result-object v3

    #@9b
    const-string/jumbo v4, "Sending automatic 400 Bad Request:"

    #@9e
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a1
    .line 361
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a3
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a6
    move-result-object v3

    #@a7
    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@aa
    .line 364
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerPort()I

    #@b5
    move-result v5

    #@b6
    .line 365
    const/4 v6, 0x0

    #@b7
    .line 364
    invoke-virtual {p0, v3, v4, v5, v6}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ba
    goto :goto_0

    #@bb
    .line 366
    :catch_0
    move-exception v1

    #@bc
    .line 367
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@be
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c1
    move-result-object v3

    #@c2
    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@c5
    goto :goto_0

    #@c6
    .line 370
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c8
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@cb
    move-result v3

    #@cc
    if-eqz v3, :cond_3

    #@ce
    .line 371
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d0
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d3
    move-result-object v3

    #@d4
    .line 372
    const-string/jumbo v4, "Could not formulate automatic 400 Bad Request"

    #@d7
    .line 371
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 378
    .end local v0    # "badReqRes":Ljava/lang/String;
    .end local v2    # "msgString":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    #@de
    .line 342
    return-void
.end method

.method public isReliable()Z
    .locals 1

    #@0
    .prologue
    .line 191
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 724
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 26
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@3
    move-result-object v5

    #@4
    if-eqz v5, :cond_0

    #@6
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@9
    move-result-object v5

    #@a
    if-nez v5, :cond_2

    #@c
    .line 396
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 397
    .local v4, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 398
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@21
    move-result-object v5

    #@22
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "bad message "

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@39
    .line 399
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, ">>> Dropped Bad Msg"

    #@44
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@47
    .line 401
    :cond_1
    return-void

    #@48
    .line 394
    .end local v4    # "badmsg":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@4b
    move-result-object v5

    #@4c
    if-eqz v5, :cond_0

    #@4e
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@51
    move-result-object v5

    #@52
    if-eqz v5, :cond_0

    #@54
    .line 395
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@57
    move-result-object v5

    #@58
    if-eqz v5, :cond_0

    #@5a
    .line 404
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@5d
    move-result-object v25

    #@5e
    .line 410
    .local v25, "viaList":Lgov/nist/javax/sip/header/ViaList;
    move-object/from16 v0, p1

    #@60
    instance-of v5, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@62
    if-eqz v5, :cond_3

    #@64
    .line 411
    invoke-virtual/range {v25 .. v25}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@67
    move-result-object v24

    #@68
    check-cast v24, Lgov/nist/javax/sip/header/Via;

    #@6a
    .line 413
    .local v24, "v":Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p0

    #@6c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6e
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@70
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    #@73
    move-result-object v6

    #@74
    invoke-interface {v5, v6}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@77
    move-result-object v14

    #@78
    .line 414
    .local v14, "hop":Ljavax/sip/address/Hop;
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    move-object/from16 v0, p0

    #@7e
    iput-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 416
    :try_start_1
    move-object/from16 v0, p0

    #@82
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@84
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@87
    move-result-object v5

    #@88
    move-object/from16 v0, p0

    #@8a
    iput-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@8c
    .line 423
    const-string/jumbo v5, "rport"

    #@8f
    move-object/from16 v0, v24

    #@91
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    #@94
    move-result v5

    #@95
    if-nez v5, :cond_6

    #@97
    .line 424
    invoke-interface {v14}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@9f
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v5

    #@a7
    if-eqz v5, :cond_6

    #@a9
    .line 430
    :goto_0
    const-string/jumbo v5, "rport"

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@b0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    move-object/from16 v0, v24

    #@b6
    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b9
    .line 435
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@bb
    iget-boolean v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    #@bd
    if-nez v5, :cond_3

    #@bf
    .line 436
    move-object/from16 v0, p0

    #@c1
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@c3
    check-cast v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@c5
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@ca
    .line 437
    const/4 v5, 0x1

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-boolean v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    #@cf
    .line 438
    move-object/from16 v0, p0

    #@d1
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@d3
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@d6
    move-result-object v5

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@db
    invoke-static {v5, v6}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@de
    move-result-object v15

    #@df
    .line 439
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e1
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e3
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@e9
    invoke-virtual {v5, v15, v6}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    #@ec
    .line 445
    .end local v14    # "hop":Ljavax/sip/address/Hop;
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@ef
    move-result-wide v10

    #@f0
    .line 448
    .local v10, "receptionTime":J
    move-object/from16 v0, p1

    #@f2
    instance-of v5, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@f4
    if-eqz v5, :cond_c

    #@f6
    .line 450
    move-object/from16 v0, p1

    #@f8
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@fa
    move-object/from16 v19, v0

    #@fc
    .line 454
    .local v19, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@100
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@103
    move-result v5

    #@104
    if-eqz v5, :cond_4

    #@106
    .line 455
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@10d
    move-result-object v5

    #@10e
    const-string/jumbo v6, "----Processing Message---"

    #@111
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@114
    .line 457
    :cond_4
    move-object/from16 v0, p0

    #@116
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@118
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11b
    move-result-object v5

    #@11c
    const/16 v6, 0x10

    #@11e
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@121
    move-result v5

    #@122
    if-eqz v5, :cond_5

    #@124
    .line 459
    move-object/from16 v0, p0

    #@126
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@128
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@12a
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    #@12d
    move-result-object v6

    #@12e
    invoke-virtual {v6}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    #@131
    move-result-object v7

    #@132
    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    move-object/from16 v0, p0

    #@139
    iget-object v8, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@13b
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@13e
    move-result-object v8

    #@13f
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@142
    move-result-object v8

    #@143
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v6

    #@147
    const-string/jumbo v8, ":"

    #@14a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v6

    #@14e
    .line 461
    move-object/from16 v0, p0

    #@150
    iget-object v8, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@152
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@155
    move-result v8

    #@156
    .line 460
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v6

    #@15a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v8

    #@15e
    .line 461
    const/4 v9, 0x0

    #@15f
    move-object/from16 v6, p1

    #@161
    .line 459
    invoke-interface/range {v5 .. v11}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@164
    .line 466
    :cond_5
    move-object/from16 v0, p0

    #@166
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@168
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@16b
    move-result v5

    #@16c
    if-lez v5, :cond_8

    #@16e
    .line 467
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    #@171
    move-result v6

    #@172
    .line 468
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@175
    move-result-object v5

    #@176
    if-nez v5, :cond_7

    #@178
    const/4 v5, 0x0

    #@179
    .line 467
    :goto_2
    add-int/2addr v5, v6

    #@17a
    .line 469
    move-object/from16 v0, p0

    #@17c
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@17e
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@181
    move-result v6

    #@182
    .line 467
    if-le v5, v6, :cond_8

    #@184
    .line 472
    const/16 v5, 0x201

    #@186
    .line 471
    move-object/from16 v0, v19

    #@188
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@18b
    move-result-object v20

    #@18c
    .line 473
    .local v20, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    #@18f
    move-result-object v5

    #@190
    move-object/from16 v0, v20

    #@192
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    #@195
    move-result-object v16

    #@196
    .line 474
    .local v16, "resp":[B
    const/4 v5, 0x0

    #@197
    move-object/from16 v0, p0

    #@199
    move-object/from16 v1, v16

    #@19b
    invoke-direct {v0, v1, v5}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    #@19e
    .line 475
    new-instance v5, Ljava/lang/Exception;

    #@1a0
    const-string/jumbo v6, "Message size exceeded"

    #@1a3
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1a6
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a7
    .line 562
    .end local v10    # "receptionTime":J
    .end local v16    # "resp":[B
    .end local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v20    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v25    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catchall_0
    move-exception v5

    #@1a8
    throw v5

    #@1a9
    .line 425
    .restart local v14    # "hop":Ljavax/sip/address/Hop;
    .restart local v24    # "v":Lgov/nist/javax/sip/header/Via;
    .restart local v25    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :cond_6
    :try_start_3
    const-string/jumbo v5, "received"

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1b0
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1b3
    move-result-object v6

    #@1b4
    move-object/from16 v0, v24

    #@1b6
    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b9
    goto/16 :goto_0

    #@1bb
    .line 431
    :catch_0
    move-exception v13

    #@1bc
    .line 432
    .local v13, "ex":Ljava/text/ParseException;
    :try_start_4
    invoke-static {v13}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1bf
    goto/16 :goto_1

    #@1c1
    .line 468
    .end local v13    # "ex":Ljava/text/ParseException;
    .end local v14    # "hop":Ljavax/sip/address/Hop;
    .end local v24    # "v":Lgov/nist/javax/sip/header/Via;
    .restart local v10    # "receptionTime":J
    .restart local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@1c4
    move-result-object v5

    #@1c5
    invoke-interface {v5}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@1c8
    move-result v5

    #@1c9
    goto :goto_2

    #@1ca
    .line 480
    :cond_8
    move-object/from16 v0, p0

    #@1cc
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1ce
    move-object/from16 v0, v19

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    invoke-virtual {v5, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1d5
    move-result-object v21

    #@1d6
    .line 482
    .local v21, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-eqz v21, :cond_b

    #@1d8
    .line 484
    :try_start_5
    move-object/from16 v0, v21

    #@1da
    move-object/from16 v1, v19

    #@1dc
    move-object/from16 v2, p0

    #@1de
    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1e1
    .line 486
    :try_start_6
    move-object/from16 v0, v21

    #@1e3
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1e5
    if-eqz v5, :cond_9

    #@1e7
    .line 487
    move-object/from16 v0, v21

    #@1e9
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1eb
    move-object/from16 v23, v0

    #@1ed
    .line 488
    .local v23, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@1f0
    move-result v5

    #@1f1
    if-nez v5, :cond_9

    #@1f3
    .line 489
    check-cast v21, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1f5
    .end local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@1f8
    .line 391
    .end local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v23    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_9
    :goto_3
    return-void

    #@1f9
    .line 485
    .restart local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_1
    move-exception v5

    #@1fa
    .line 486
    move-object/from16 v0, v21

    #@1fc
    instance-of v6, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1fe
    if-eqz v6, :cond_a

    #@200
    .line 487
    move-object/from16 v0, v21

    #@202
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@204
    move-object/from16 v23, v0

    #@206
    .line 488
    .restart local v23    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@209
    move-result v6

    #@20a
    if-nez v6, :cond_a

    #@20c
    .line 489
    check-cast v21, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@20e
    .end local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@211
    .line 485
    .end local v23    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_a
    throw v5

    #@212
    .line 494
    .restart local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_b
    const/16 v5, 0x1f7

    #@214
    .line 493
    move-object/from16 v0, v19

    #@216
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@219
    move-result-object v17

    #@21a
    .line 496
    .local v17, "response":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v18, Lgov/nist/javax/sip/header/RetryAfter;

    #@21c
    invoke-direct/range {v18 .. v18}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@21f
    .line 500
    .local v18, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :try_start_7
    invoke-static {}, Ljava/lang/Math;->random()D

    #@222
    move-result-wide v6

    #@223
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@225
    mul-double/2addr v6, v8

    #@226
    double-to-int v5, v6

    #@227
    move-object/from16 v0, v18

    #@229
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    #@22c
    .line 501
    invoke-virtual/range {v17 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@22f
    .line 502
    move-object/from16 v0, p0

    #@231
    move-object/from16 v1, v17

    #@233
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@236
    .line 506
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    #@238
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@23a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@23d
    move-result v5

    #@23e
    if-eqz v5, :cond_9

    #@240
    .line 507
    move-object/from16 v0, p0

    #@242
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@244
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@247
    move-result-object v5

    #@248
    .line 508
    const-string/jumbo v6, "Dropping message -- could not acquire semaphore"

    #@24b
    .line 507
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@24e
    goto :goto_3

    #@24f
    .line 511
    .end local v17    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v18    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_c
    move-object/from16 v0, p1

    #@251
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@253
    move-object/from16 v20, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@255
    .line 513
    .restart local v20    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@258
    .line 524
    :try_start_a
    move-object/from16 v0, p0

    #@25a
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@25c
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@25f
    move-result v5

    #@260
    if-lez v5, :cond_10

    #@262
    .line 525
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    #@265
    move-result v6

    #@266
    .line 526
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@269
    move-result-object v5

    #@26a
    if-nez v5, :cond_f

    #@26c
    const/4 v5, 0x0

    #@26d
    .line 525
    :goto_5
    add-int/2addr v5, v6

    #@26e
    .line 527
    move-object/from16 v0, p0

    #@270
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@272
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@275
    move-result v6

    #@276
    .line 525
    if-le v5, v6, :cond_10

    #@278
    .line 529
    move-object/from16 v0, p0

    #@27a
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27c
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@27f
    move-result v5

    #@280
    if-eqz v5, :cond_d

    #@282
    .line 530
    move-object/from16 v0, p0

    #@284
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@286
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@289
    move-result-object v5

    #@28a
    const-string/jumbo v6, "Message size exceeded"

    #@28d
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@290
    .line 531
    :cond_d
    return-void

    #@291
    .line 514
    :catch_1
    move-exception v13

    #@292
    .line 515
    .restart local v13    # "ex":Ljava/text/ParseException;
    move-object/from16 v0, p0

    #@294
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@296
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@299
    move-result v5

    #@29a
    if-eqz v5, :cond_e

    #@29c
    .line 516
    move-object/from16 v0, p0

    #@29e
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2a0
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2a3
    move-result-object v5

    #@2a4
    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a9
    const-string/jumbo v7, "Dropping Badly formatted response message >>> "

    #@2ac
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v6

    #@2b0
    move-object/from16 v0, v20

    #@2b2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v6

    #@2b6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v6

    #@2ba
    .line 516
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@2bd
    .line 519
    :cond_e
    return-void

    #@2be
    .line 526
    .end local v13    # "ex":Ljava/text/ParseException;
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@2c1
    move-result-object v5

    #@2c2
    invoke-interface {v5}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@2c5
    move-result v5

    #@2c6
    goto :goto_5

    #@2c7
    .line 534
    :cond_10
    move-object/from16 v0, p0

    #@2c9
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2cb
    move-object/from16 v0, v20

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    invoke-virtual {v5, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@2d2
    move-result-object v22

    #@2d3
    .line 536
    .local v22, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v22, :cond_18

    #@2d5
    .line 538
    :try_start_b
    move-object/from16 v0, v22

    #@2d7
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2d9
    if-eqz v5, :cond_11

    #@2db
    .line 539
    move-object/from16 v0, v22

    #@2dd
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2df
    move-object v5, v0

    #@2e0
    move-object/from16 v0, v20

    #@2e2
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    #@2e5
    move-result v5

    #@2e6
    if-eqz v5, :cond_12

    #@2e8
    .line 548
    :cond_11
    move-object/from16 v0, v22

    #@2ea
    move-object/from16 v1, v20

    #@2ec
    move-object/from16 v2, p0

    #@2ee
    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@2f1
    .line 550
    :try_start_c
    move-object/from16 v0, v22

    #@2f3
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2f5
    if-eqz v5, :cond_9

    #@2f7
    .line 551
    move-object/from16 v0, v22

    #@2f9
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2fb
    move-object v5, v0

    #@2fc
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@2ff
    move-result v5

    #@300
    if-nez v5, :cond_9

    #@302
    .line 555
    check-cast v22, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@304
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@307
    goto/16 :goto_3

    #@309
    .line 541
    .restart local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_12
    :try_start_d
    move-object/from16 v0, p0

    #@30b
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@30d
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@310
    move-result v5

    #@311
    if-eqz v5, :cond_13

    #@313
    .line 542
    move-object/from16 v0, p0

    #@315
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@317
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@31a
    move-result-object v5

    #@31b
    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    #@31d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@320
    const-string/jumbo v7, "Dropping response message with invalid tag >>> "

    #@323
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v6

    #@327
    move-object/from16 v0, v20

    #@329
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v6

    #@32d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@330
    move-result-object v6

    #@331
    .line 542
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@334
    .line 550
    :cond_13
    :try_start_e
    move-object/from16 v0, v22

    #@336
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@338
    if-eqz v5, :cond_14

    #@33a
    .line 551
    move-object/from16 v0, v22

    #@33c
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@33e
    move-object v5, v0

    #@33f
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@342
    move-result v5

    #@343
    if-eqz v5, :cond_15

    #@345
    .line 545
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_14
    :goto_6
    return-void

    #@346
    .line 555
    .restart local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_15
    check-cast v22, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@348
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@34b
    goto :goto_6

    #@34c
    .line 549
    .restart local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :catchall_2
    move-exception v5

    #@34d
    move-object v6, v5

    #@34e
    .line 550
    move-object/from16 v0, v22

    #@350
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@352
    if-eqz v5, :cond_16

    #@354
    .line 551
    move-object/from16 v0, v22

    #@356
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@358
    move-object v5, v0

    #@359
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@35c
    move-result v5

    #@35d
    if-eqz v5, :cond_17

    #@35f
    .line 549
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_16
    :goto_7
    throw v6

    #@360
    .line 555
    .restart local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_17
    check-cast v22, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@362
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@365
    goto :goto_7

    #@366
    .line 559
    .restart local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_18
    move-object/from16 v0, p0

    #@368
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@36a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@36d
    move-result-object v5

    #@36e
    const-string/jumbo v6, "Could not get semaphore... dropping response"

    #@371
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@374
    goto/16 :goto_3

    #@376
    .line 503
    .end local v20    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v22    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .restart local v17    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v18    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .restart local v19    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v21    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catch_2
    move-exception v12

    #@377
    .local v12, "e":Ljava/lang/Exception;
    goto/16 :goto_4
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 572
    const/4 v5, 0x0

    #@3
    .line 574
    .local v5, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v5, Lgov/nist/javax/sip/parser/Pipeline;

    #@5
    .end local v5    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@7
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    iget v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    #@b
    .line 575
    iget-object v11, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@10
    move-result-object v11

    #@11
    .line 574
    invoke-direct {v5, v9, v10, v11}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    #@14
    .line 578
    .local v5, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v9, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@16
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@1b
    move-result v10

    #@1c
    invoke-direct {v9, p0, v5, v10}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    #@1f
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@21
    .line 580
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@23
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    #@26
    .line 582
    const/16 v0, 0x1000

    #@28
    .line 583
    .local v0, "bufferSize":I
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@2a
    iget v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@2c
    add-int/lit8 v10, v10, 0x1

    #@2e
    iput v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@30
    .line 584
    const/4 v9, 0x1

    #@31
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    #@33
    .line 588
    :goto_0
    :try_start_0
    new-array v7, v0, [B

    #@35
    .line 589
    .local v7, "msg":[B
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@37
    const/4 v10, 0x0

    #@38
    invoke-virtual {v9, v7, v10, v0}, Ljava/io/InputStream;->read([BII)I

    #@3b
    move-result v8

    #@3c
    .line 591
    .local v8, "nbytes":I
    if-ne v8, v13, :cond_1

    #@3e
    .line 592
    const-string/jumbo v9, "\r\n\r\n"

    #@41
    const-string/jumbo v10, "UTF-8"

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v5, v9}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4b
    .line 594
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@4f
    if-eq v9, v13, :cond_0

    #@51
    .line 595
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@53
    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@54
    .line 596
    :try_start_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@56
    iget v11, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@58
    add-int/lit8 v11, v11, -0x1

    #@5a
    iput v11, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@5c
    .line 597
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@5e
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    :try_start_3
    monitor-exit v10

    #@62
    .line 600
    :cond_0
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    #@65
    .line 601
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@67
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 639
    :goto_1
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    #@6c
    .line 640
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@6e
    invoke-virtual {v9, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@71
    .line 641
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@73
    iget v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@75
    add-int/lit8 v10, v10, -0x1

    #@77
    iput v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@79
    .line 642
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@7b
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@7e
    .line 604
    return-void

    #@7f
    .line 595
    :catchall_0
    move-exception v9

    #@80
    :try_start_4
    monitor-exit v10

    #@81
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@82
    .line 602
    :catch_0
    move-exception v6

    #@83
    .local v6, "ioex":Ljava/io/IOException;
    goto :goto_1

    #@84
    .line 606
    .end local v6    # "ioex":Ljava/io/IOException;
    :cond_1
    const/4 v9, 0x0

    #@85
    :try_start_5
    invoke-virtual {v5, v7, v9, v8}, Lgov/nist/javax/sip/parser/Pipeline;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@88
    goto :goto_0

    #@89
    .line 608
    .end local v7    # "msg":[B
    .end local v8    # "nbytes":I
    :catch_1
    move-exception v2

    #@8a
    .line 611
    .local v2, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v9, "\r\n\r\n"

    #@8d
    const-string/jumbo v10, "UTF-8"

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@93
    move-result-object v9

    #@94
    invoke-virtual {v5, v9}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@97
    .line 617
    :goto_2
    :try_start_7
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@99
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@9c
    move-result v9

    #@9d
    if-eqz v9, :cond_2

    #@9f
    .line 618
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a1
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a4
    move-result-object v9

    #@a5
    new-instance v10, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v11, "IOException  closing sock "

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v10

    #@b9
    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@bc
    .line 620
    :cond_2
    :try_start_8
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@be
    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@c0
    if-eq v9, v13, :cond_3

    #@c2
    .line 621
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@c4
    monitor-enter v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@c5
    .line 622
    :try_start_9
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@c7
    iget v11, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@c9
    add-int/lit8 v11, v11, -0x1

    #@cb
    iput v11, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    #@cd
    .line 623
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@cf
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@d2
    :try_start_a
    monitor-exit v10

    #@d3
    .line 626
    :cond_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@d5
    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    #@d8
    .line 627
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@db
    .line 639
    :goto_3
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    #@dd
    .line 640
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@df
    invoke-virtual {v9, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@e2
    .line 641
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@e4
    iget v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@e6
    add-int/lit8 v10, v10, -0x1

    #@e8
    iput v10, v9, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@ea
    .line 642
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@ec
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@ef
    .line 633
    return-void

    #@f0
    .line 634
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@f1
    .line 635
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 638
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    #@f7
    .line 639
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    #@f9
    .line 640
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@fb
    invoke-virtual {v10, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@fe
    .line 641
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@100
    iget v11, v10, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@102
    add-int/lit8 v11, v11, -0x1

    #@104
    iput v11, v10, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    #@106
    .line 642
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@108
    invoke-virtual {v10}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@10b
    .line 638
    throw v9

    #@10c
    .line 621
    .restart local v2    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    #@10d
    :try_start_c
    monitor-exit v10

    #@10e
    throw v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@10f
    .line 628
    :catch_3
    move-exception v6

    #@110
    .restart local v6    # "ioex":Ljava/io/IOException;
    goto :goto_3

    #@111
    .line 630
    .end local v6    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v4

    #@112
    .local v4, "ex1":Ljava/lang/Exception;
    goto :goto_3

    #@113
    .line 612
    .end local v4    # "ex1":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    #@114
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 7
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v6

    #@8
    .line 288
    .local v6, "msg":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v4

    #@c
    .line 290
    .local v4, "time":J
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    #@e
    invoke-direct {p0, v6, v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    #@11
    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v0

    #@17
    const/16 v1, 0x10

    #@19
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 293
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@21
    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@28
    .line 285
    :cond_0
    return-void
.end method

.method public sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 11
    .param p1, "message"    # [B
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Null argument"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 308
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@11
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@13
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@16
    move-result-object v1

    #@17
    .line 309
    const-string/jumbo v4, "TLS"

    #@1a
    move-object v2, p2

    #@1b
    move v3, p3

    #@1c
    move-object v5, p1

    #@1d
    move v6, p4

    #@1e
    move-object v7, p0

    #@1f
    .line 308
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    #@22
    move-result-object v10

    #@23
    .line 313
    .local v10, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@25
    if-eq v10, v0, :cond_3

    #@27
    if-eqz v10, :cond_3

    #@29
    .line 315
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 316
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@2f
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 320
    :cond_2
    :goto_0
    iput-object v10, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@34
    .line 321
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    #@36
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@3c
    .line 324
    new-instance v9, Ljava/lang/Thread;

    #@3e
    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@41
    .line 325
    .local v9, "mythread":Ljava/lang/Thread;
    const/4 v0, 0x1

    #@42
    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    #@45
    .line 326
    const-string/jumbo v0, "TLSMessageChannelThread"

    #@48
    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@4b
    .line 327
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    #@4e
    .line 305
    .end local v9    # "mythread":Ljava/lang/Thread;
    :cond_3
    return-void

    #@4f
    .line 317
    :catch_0
    move-exception v8

    #@50
    .local v8, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0
    .param p1, "handshakeCompletedListenerImpl"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    .line 729
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    #@2
    .line 728
    return-void
.end method

.method protected uncache()V
    .locals 1

    #@0
    .prologue
    .line 648
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 647
    :cond_0
    :goto_0
    return-void

    #@9
    .line 649
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@b
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@e
    goto :goto_0
.end method
