.class public final Lgov/nist/javax/sip/stack/TLSMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TLSMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field private greylist handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

.field protected greylist isCached:Z

.field protected greylist isRunning:Z

.field private greylist key:Ljava/lang/String;

.field private greylist myAddress:Ljava/lang/String;

.field private greylist myClientInputStream:Ljava/io/InputStream;

.field private greylist myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field private greylist myPort:I

.field private greylist mySock:Ljava/net/Socket;

.field private greylist mythread:Ljava/lang/Thread;

.field private greylist peerAddress:Ljava/net/InetAddress;

.field private greylist peerPort:I

.field private greylist peerProtocol:Ljava/lang/String;

.field private greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private greylist tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;


# direct methods
.method protected constructor greylist <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .registers 8
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 171
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 172
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TLSMessageChannel (outgoing)"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 175
    :cond_19
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 176
    iput p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    .line 177
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    .line 178
    const-string v0, "TLS"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 180
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    .line 181
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-static {v1, v2, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 185
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .registers 7
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 127
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TLSMessageChannel (incoming)"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 131
    :cond_19
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 132
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 134
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 135
    .local v0, "sslSock":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 136
    new-instance v2, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 137
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 138
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 142
    .end local v0    # "sslSock":Ljavax/net/ssl/SSLSocket;
    :cond_38
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 143
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 146
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    .line 147
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 148
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    const-string v1, "TLSMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 150
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 152
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    .line 153
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    .line 156
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 158
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method private greylist sendMessage([BZ)V
    .registers 12
    .param p1, "msg"    # [B
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 256
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 255
    move-object v8, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "msg":[B
    .end local p2    # "retry":Z
    .local v6, "msg":[B
    .local v7, "retry":Z
    invoke-virtual/range {v1 .. v8}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object p1

    .line 261
    .local p1, "sock":Ljava/net/Socket;
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq p1, p2, :cond_45

    if-eqz p1, :cond_45

    .line 263
    :try_start_1f
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz p2, :cond_28

    .line 264
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    .line 266
    :cond_28
    goto :goto_2a

    .line 265
    :catch_29
    move-exception v0

    .line 267
    :goto_2a
    iput-object p1, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 268
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 270
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    .local p2, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 272
    const-string v0, "TLSMessageChannelThread"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 276
    .end local p2    # "thread":Ljava/lang/Thread;
    :cond_45
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 5

    .line 199
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 201
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing message Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 206
    :cond_2d
    goto :goto_53

    .line 203
    :catch_2e
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 205
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 207
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_53
    :goto_53
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 662
    return v1

    .line 664
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .line 665
    .local v0, "that":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v2, v3, :cond_1a

    .line 666
    return v1

    .line 668
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public greylist getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
    .registers 2

    .line 736
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    check-cast v0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 4

    .line 677
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    return-object v0

    .line 680
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    const-string v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPeerAddress()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 717
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourcePort()I
    .registers 2

    .line 713
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerPort()I
    .registers 2

    .line 709
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerProtocol()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 224
    const-string v0, "tls"

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 700
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    return v0
.end method

.method public greylist handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
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

    .line 343
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 344
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 346
    :cond_11
    if-eqz p3, :cond_d5

    const-class v0, Lgov/nist/javax/sip/header/From;

    .line 347
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    .line 348
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    .line 349
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    .line 350
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 351
    :cond_4b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 352
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered bad message \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 354
    :cond_6f
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "msgString":Ljava/lang/String;
    const-string v1, "SIP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    const-string v1, "ACK "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 357
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "badReqRes":Ljava/lang/String;
    if-eqz v1, :cond_c1

    .line 359
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 360
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Sending automatic 400 Bad Request:"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 364
    :cond_a5
    :try_start_a5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerPort()I

    move-result v4

    .line 364
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b5} :catch_b6

    goto :goto_c0

    .line 366
    :catch_b6
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :goto_c0
    goto :goto_d4

    .line 370
    :cond_c1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 371
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 376
    .end local v1    # "badReqRes":Ljava/lang/String;
    :cond_d4
    :goto_d4
    throw p1

    .line 378
    .end local v0    # "msgString":Ljava/lang/String;
    :cond_d5
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public greylist isReliable()Z
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public greylist processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 15
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    const-string v0, "rport"

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    if-eqz v1, :cond_299

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    if-eqz v1, :cond_299

    .line 394
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    if-eqz v1, :cond_297

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    if-eqz v1, :cond_297

    .line 395
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    if-nez v1, :cond_23

    move-object v7, p1

    goto/16 :goto_29a

    .line 404
    :cond_23
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    .line 410
    .local v1, "viaList":Lgov/nist/javax/sip/header/ViaList;
    instance-of v2, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v2, :cond_9d

    .line 411
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    .line 413
    .local v2, "v":Lgov/nist/javax/sip/header/Via;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v3

    .line 414
    .local v3, "hop":Ljavax/sip/address/Hop;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 416
    :try_start_43
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 423
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 424
    invoke-interface {v3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 425
    :cond_61
    const-string v4, "received"

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_6c
    iget v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/text/ParseException; {:try_start_43 .. :try_end_75} :catch_76

    .line 433
    goto :goto_7a

    .line 431
    :catch_76
    move-exception v0

    .line 432
    .local v0, "ex":Ljava/text/ParseException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 435
    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_7a
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    if-nez v0, :cond_9d

    .line 436
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 438
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    invoke-static {v0, v4}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v4, v0, v5}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 445
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "v":Lgov/nist/javax/sip/header/Via;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    :cond_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 448
    .local v11, "receptionTime":J
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    const-string v2, "Message size exceeded"

    const/4 v3, 0x0

    if-eqz v0, :cond_1ae

    .line 450
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    .line 454
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 455
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v5, "----Processing Message---"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 457
    :cond_be
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v5, 0x10

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 459
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v6, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 460
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 461
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 459
    const/4 v10, 0x0

    move-object v7, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v7, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-interface/range {v6 .. v12}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_106

    .line 457
    .end local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_105
    move-object v7, p1

    .line 466
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_106
    iget-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result p1

    if-lez p1, :cond_144

    .line 467
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    move-result p1

    .line 468
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    if-nez v0, :cond_11a

    move v0, v3

    goto :goto_122

    .line 469
    :cond_11a
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v0

    :goto_122
    add-int/2addr p1, v0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 470
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v0

    if-gt p1, v0, :cond_12c

    goto :goto_144

    .line 471
    :cond_12c
    nop

    .line 472
    const/16 p1, 0x201

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object p1

    .line 473
    .local p1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 474
    .local v0, "resp":[B
    invoke-direct {p0, v0, v3}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    .line 475
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 480
    .end local v0    # "resp":[B
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_144
    :goto_144
    iget-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p1, v4, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object p1

    .line 482
    .local p1, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-eqz p1, :cond_179

    .line 484
    :try_start_14c
    invoke-interface {p1, v4, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_164

    .line 486
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_163

    .line 487
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 488
    .local v0, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_162

    .line 489
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 490
    .end local v0    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_162
    nop

    .line 491
    :cond_163
    goto :goto_1ac

    .line 486
    :catchall_164
    move-exception v0

    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_178

    .line 487
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 488
    .local v2, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_178

    .line 489
    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 491
    .end local v2    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_178
    throw v0

    .line 493
    :cond_179
    nop

    .line 494
    const/16 v0, 0x1f7

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 496
    .local v2, "response":Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    move-object v3, v0

    .line 500
    .local v3, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :try_start_186
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v8

    double-to-int v0, v5

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 501
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 502
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_197} :catch_198

    .line 505
    goto :goto_199

    .line 503
    :catch_198
    move-exception v0

    .line 506
    :goto_199
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 508
    const-string v5, "Dropping message -- could not acquire semaphore"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 510
    .end local v2    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local v4    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_1ac
    :goto_1ac
    goto/16 :goto_270

    .line 511
    .end local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local p1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_1ae
    move-object v7, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    move-object p1, v7

    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 513
    .local p1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_1b2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_1b5
    .catch Ljava/text/ParseException; {:try_start_1b2 .. :try_end_1b5} :catch_271

    .line 520
    nop

    .line 524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v0

    if-lez v0, :cond_1ec

    .line 525
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    move-result v0

    .line 526
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    if-nez v4, :cond_1c9

    goto :goto_1d1

    .line 527
    :cond_1c9
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    :goto_1d1
    add-int/2addr v0, v3

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 528
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-le v0, v3, :cond_1ec

    .line 529
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 530
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 531
    :cond_1eb
    return-void

    .line 534
    :cond_1ec
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0, p1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v2

    .line 536
    .local v2, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v2, :cond_265

    .line 538
    :try_start_1f4
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_239

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 540
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v0

    if-nez v0, :cond_239

    .line 541
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping response message with invalid tag >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_225
    .catchall {:try_start_1f4 .. :try_end_225} :catchall_250

    .line 550
    :cond_225
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_238

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 551
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_238

    .line 555
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 545
    :cond_238
    return-void

    .line 548
    :cond_239
    :try_start_239
    invoke-interface {v2, p1, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_250

    .line 550
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_24f

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 551
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_24f

    .line 555
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 557
    :cond_24f
    goto :goto_270

    .line 550
    :catchall_250
    move-exception v0

    instance-of v3, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_264

    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 551
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_264

    .line 555
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 557
    :cond_264
    throw v0

    .line 559
    :cond_265
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v3, "Could not get semaphore... dropping response"

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 564
    .end local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .end local v2    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .end local v11    # "receptionTime":J
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :goto_270
    return-void

    .line 514
    .restart local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .restart local v11    # "receptionTime":J
    .restart local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_271
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_296

    .line 516
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping Badly formatted response message >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 519
    :cond_296
    return-void

    .line 394
    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .end local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v11    # "receptionTime":J
    .local p1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_297
    move-object v7, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_29a

    .line 393
    .end local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_299
    move-object v7, p1

    .line 396
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v7    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_29a
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object p1

    .line 397
    .local p1, "badmsg":Ljava/lang/String;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 398
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, ">>> Dropped Bad Msg"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 401
    :cond_2cd
    return-void
.end method

.method public whitelist test-api run()V
    .registers 10

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v1, Lgov/nist/javax/sip/parser/Pipeline;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 575
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    .line 578
    .end local v0    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .local v1, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    .line 580
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    .line 582
    const/16 v0, 0x1000

    .line 583
    .local v0, "bufferSize":I
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 584
    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 588
    :goto_30
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_32
    new-array v5, v0, [B

    .line 589
    .local v5, "msg":[B
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v5, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 591
    .local v6, "nbytes":I
    if-ne v6, v2, :cond_7f

    .line 592
    const-string v7, "\r\n\r\n"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_47} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_47} :catch_85
    .catchall {:try_start_32 .. :try_end_47} :catchall_83

    .line 594
    :try_start_47
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v7, v2, :cond_61

    .line 595
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_85
    .catchall {:try_start_47 .. :try_end_50} :catchall_83

    .line 596
    :try_start_50
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v8, v7, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    sub-int/2addr v8, v4

    iput v8, v7, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 597
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 598
    monitor-exit v2

    goto :goto_61

    :catchall_5e
    move-exception v7

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_5e

    .end local v0    # "bufferSize":I
    .end local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .end local v5    # "msg":[B
    .end local v6    # "nbytes":I
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_start_60
    throw v7

    .line 600
    .restart local v0    # "bufferSize":I
    .restart local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .restart local v5    # "msg":[B
    .restart local v6    # "nbytes":I
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :cond_61
    :goto_61
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    .line 601
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_85
    .catchall {:try_start_60 .. :try_end_69} :catchall_83

    .line 603
    goto :goto_6b

    .line 602
    :catch_6a
    move-exception v2

    .line 639
    :goto_6b
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v2, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 604
    return-void

    .line 606
    :cond_7f
    :try_start_7f
    invoke-virtual {v1, v5, v3, v6}, Lgov/nist/javax/sip/parser/Pipeline;->write([BII)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_85
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    .end local v5    # "msg":[B
    .end local v6    # "nbytes":I
    goto :goto_89

    .line 639
    :catchall_83
    move-exception v2

    goto :goto_e1

    .line 634
    :catch_85
    move-exception v2

    .line 635
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_86
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    .line 636
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_89
    goto :goto_30

    .line 608
    :catch_8a
    move-exception v5

    .line 611
    .local v5, "ex":Ljava/io/IOException;
    :try_start_8b
    const-string v6, "\r\n\r\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_96} :catch_97
    .catchall {:try_start_8b .. :try_end_96} :catchall_83

    .line 614
    goto :goto_98

    .line 612
    :catch_97
    move-exception v6

    .line 617
    :goto_98
    :try_start_98
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 618
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException  closing sock "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_bc} :catch_f5
    .catchall {:try_start_98 .. :try_end_bc} :catchall_83

    .line 620
    :cond_bc
    :try_start_bc
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v6, v2, :cond_d6

    .line 621
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c5} :catch_df
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c5} :catch_f5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_83

    .line 622
    :try_start_c5
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    sub-int/2addr v7, v4

    iput v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 623
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 624
    monitor-exit v2

    goto :goto_d6

    :catchall_d3
    move-exception v6

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_c5 .. :try_end_d5} :catchall_d3

    .end local v0    # "bufferSize":I
    .end local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :try_start_d5
    throw v6

    .line 626
    .restart local v0    # "bufferSize":I
    .restart local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .restart local v5    # "ex":Ljava/io/IOException;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TLSMessageChannel;
    :cond_d6
    :goto_d6
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 627
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_de} :catch_df
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_de} :catch_f5
    .catchall {:try_start_d5 .. :try_end_de} :catchall_83

    .line 629
    goto :goto_e0

    .line 628
    :catch_df
    move-exception v2

    .line 632
    :goto_e0
    goto :goto_f6

    .line 639
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_e1
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v5, v3, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v5, v4

    iput v5, v3, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 643
    throw v2

    .line 630
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_f5
    move-exception v2

    .line 639
    :goto_f6
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v2, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 633
    return-void
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 9
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    .local v0, "msg":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 290
    .local v5, "time":J
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    .line 292
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 293
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_2a

    .line 292
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_29
    move-object v2, p1

    .line 294
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_2a
    return-void
.end method

.method public greylist sendMessage([BLjava/net/InetAddress;IZ)V
    .registers 14
    .param p1, "message"    # [B
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    if-eqz p1, :cond_46

    if-eqz p2, :cond_46

    .line 308
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    const-string v5, "TLS"

    move-object v8, p0

    move-object v6, p1

    move-object v3, p2

    move v4, p3

    move v7, p4

    .end local p1    # "message":[B
    .end local p2    # "receiverAddress":Ljava/net/InetAddress;
    .end local p3    # "receiverPort":I
    .end local p4    # "retry":Z
    .local v3, "receiverAddress":Ljava/net/InetAddress;
    .local v4, "receiverPort":I
    .local v6, "message":[B
    .local v7, "retry":Z
    invoke-virtual/range {v1 .. v8}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object p1

    .line 313
    .local p1, "sock":Ljava/net/Socket;
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq p1, p2, :cond_45

    if-eqz p1, :cond_45

    .line 315
    :try_start_1f
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz p2, :cond_28

    .line 316
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    .line 319
    :cond_28
    goto :goto_2a

    .line 317
    :catch_29
    move-exception v0

    .line 320
    :goto_2a
    iput-object p1, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 321
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 324
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    .local p2, "mythread":Ljava/lang/Thread;
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 326
    const-string p3, "TLSMessageChannelThread"

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 330
    .end local p2    # "mythread":Ljava/lang/Thread;
    :cond_45
    return-void

    .line 306
    .end local v3    # "receiverAddress":Ljava/net/InetAddress;
    .end local v4    # "receiverPort":I
    .end local v6    # "message":[B
    .end local v7    # "retry":Z
    .local p1, "message":[B
    .local p2, "receiverAddress":Ljava/net/InetAddress;
    .restart local p3    # "receiverPort":I
    .restart local p4    # "retry":Z
    :cond_46
    move-object v8, p0

    move-object v6, p1

    move-object v3, p2

    move v4, p3

    move v7, p4

    .line 307
    .end local p1    # "message":[B
    .end local p2    # "receiverAddress":Ljava/net/InetAddress;
    .end local p3    # "receiverPort":I
    .end local p4    # "retry":Z
    .restart local v3    # "receiverAddress":Ljava/net/InetAddress;
    .restart local v4    # "receiverPort":I
    .restart local v6    # "message":[B
    .restart local v7    # "retry":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2
    .param p1, "handshakeCompletedListenerImpl"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 729
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 730
    return-void
.end method

.method protected greylist uncache()V
    .registers 2

    .line 648
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    if-nez v0, :cond_d

    .line 649
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 651
    :cond_d
    return-void
.end method
