.class public Lgov/nist/javax/sip/stack/TCPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TCPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field protected greylist isCached:Z

.field protected greylist isRunning:Z

.field protected greylist key:Ljava/lang/String;

.field protected greylist myAddress:Ljava/lang/String;

.field protected greylist myClientInputStream:Ljava/io/InputStream;

.field protected greylist myClientOutputStream:Ljava/io/OutputStream;

.field private greylist myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field protected greylist myPort:I

.field private greylist mySock:Ljava/net/Socket;

.field private greylist mythread:Ljava/lang/Thread;

.field protected greylist peerAddress:Ljava/net/InetAddress;

.field protected greylist peerPort:I

.field protected greylist peerProtocol:Ljava/lang/String;

.field protected greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private greylist tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmySock(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    return-object p0
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 102
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 103
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 105
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V
    .registers 8
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 156
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 157
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TCPMessageChannel "

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 160
    :cond_19
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 161
    iput p2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    .line 162
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

    .line 163
    const-string v0, "TCP"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 165
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    .line 166
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    invoke-static {v1, v2, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 171
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V
    .registers 6
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 122
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TCPMessageChannel "

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 126
    :cond_19
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 128
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 131
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    .line 132
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    const-string v1, "TCPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 135
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    .line 138
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    .line 139
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

    .line 141
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
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

    .line 252
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

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
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eq p1, p2, :cond_4b

    if-eqz p1, :cond_4b

    .line 263
    :try_start_1d
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz p2, :cond_26

    .line 264
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_27

    .line 266
    :cond_26
    goto :goto_28

    .line 265
    :catch_27
    move-exception v0

    .line 267
    :goto_28
    iput-object p1, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 268
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 269
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 270
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    .local p2, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 272
    const-string v0, "TCPMessageChannelThread"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 276
    .end local p2    # "thread":Ljava/lang/Thread;
    :cond_4b
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 5

    .line 185
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 189
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 190
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    .line 194
    :cond_30
    goto :goto_56

    .line 191
    :catch_31
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 193
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 195
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_56
    :goto_56
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 682
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 683
    return v1

    .line 685
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    .line 686
    .local v0, "that":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v3, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v2, v3, :cond_1a

    .line 687
    return v1

    .line 689
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 4

    .line 698
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    return-object v0

    .line 701
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    const-string v2, "TCP"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPeerAddress()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    .line 223
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 229
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 738
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourcePort()I
    .registers 2

    .line 734
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerPort()I
    .registers 2

    .line 730
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerProtocol()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 203
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 212
    const-string v0, "TCP"

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 712
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 721
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

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

    .line 363
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 366
    :cond_11
    if-eqz p3, :cond_d9

    const-class v0, Lgov/nist/javax/sip/header/From;

    .line 367
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    .line 368
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    .line 369
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    .line 370
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 371
    :cond_4b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 372
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered Bad Message \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 378
    :cond_73
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "msgString":Ljava/lang/String;
    const-string v1, "SIP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d8

    const-string v1, "ACK "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 381
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "badReqRes":Ljava/lang/String;
    if-eqz v1, :cond_c5

    .line 383
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 384
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Sending automatic 400 Bad Request:"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 388
    :cond_a9
    :try_start_a9
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 389
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerPort()I

    move-result v4

    .line 388
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b9} :catch_ba

    goto :goto_c4

    .line 390
    :catch_ba
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 392
    .end local v2    # "e":Ljava/io/IOException;
    :goto_c4
    goto :goto_d8

    .line 394
    :cond_c5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 395
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 401
    .end local v1    # "badReqRes":Ljava/lang/String;
    :cond_d8
    :goto_d8
    throw p1

    .line 403
    .end local v0    # "msgString":Ljava/lang/String;
    :cond_d9
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public greylist isReliable()Z
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public greylist processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 16
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    const-string v0, "rport"

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    if-eqz v1, :cond_28f

    .line 419
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    if-eqz v1, :cond_28d

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    if-eqz v1, :cond_28d

    .line 420
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    if-eqz v1, :cond_28b

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    if-nez v1, :cond_23

    move-object v8, p1

    goto/16 :goto_290

    .line 430
    :cond_23
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    .line 435
    .local v1, "viaList":Lgov/nist/javax/sip/header/ViaList;
    instance-of v2, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v2, :cond_ad

    .line 436
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    .line 437
    .local v2, "v":Lgov/nist/javax/sip/header/Via;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v3

    .line 438
    .local v3, "hop":Ljavax/sip/address/Hop;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 440
    :try_start_43
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 451
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 452
    invoke-interface {v3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 453
    :cond_61
    const-string v4, "received"

    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_6c
    iget v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/text/ParseException; {:try_start_43 .. :try_end_75} :catch_76

    .line 462
    goto :goto_80

    .line 460
    :catch_76
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    invoke-static {v0, v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov/nist/core/StackLogger;)V

    .line 464
    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_80
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    if-nez v0, :cond_ad

    .line 465
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    .line 467
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 468
    .local v0, "remotePort":I
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4, v0}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5, v4, v6}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 476
    .end local v0    # "remotePort":I
    .end local v2    # "v":Lgov/nist/javax/sip/header/Via;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v4    # "key":Ljava/lang/String;
    :cond_ad
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 478
    .local v12, "receptionTime":J
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    const-string v2, "Message size exceeded"

    const/4 v3, 0x0

    if-eqz v0, :cond_1a2

    .line 480
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    .line 484
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 485
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v5, "----Processing Message---"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_ce
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v5, 0x10

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v7, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 491
    const/4 v11, 0x0

    move-object v8, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v8, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-interface/range {v7 .. v13}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_11a

    .line 490
    .end local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_119
    move-object v8, p1

    .line 497
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_11a
    iget-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result p1

    if-lez p1, :cond_158

    .line 498
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    move-result p1

    .line 499
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    if-nez v0, :cond_12e

    move v0, v3

    goto :goto_136

    .line 500
    :cond_12e
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v0

    :goto_136
    add-int/2addr p1, v0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 501
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v0

    if-gt p1, v0, :cond_140

    goto :goto_158

    .line 502
    :cond_140
    nop

    .line 503
    const/16 p1, 0x201

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object p1

    .line 504
    .local p1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 505
    .local v0, "resp":[B
    invoke-direct {p0, v0, v3}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BZ)V

    .line 506
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .end local v0    # "resp":[B
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_158
    :goto_158
    iget-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p1, v4, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object p1

    .line 512
    .local p1, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-eqz p1, :cond_18d

    .line 514
    :try_start_160
    invoke-interface {p1, v4, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_178

    .line 516
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_177

    .line 517
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 518
    .local v0, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_176

    .line 519
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 520
    .end local v0    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_176
    nop

    .line 521
    :cond_177
    goto :goto_1a0

    .line 516
    :catchall_178
    move-exception v0

    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_18c

    .line 517
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 518
    .local v2, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_18c

    .line 519
    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 521
    .end local v2    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_18c
    throw v0

    .line 523
    :cond_18d
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 525
    const-string v2, "Dropping request -- could not acquire semaphore in 10 sec"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 528
    .end local v4    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_1a0
    :goto_1a0
    goto/16 :goto_264

    .line 529
    .end local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local p1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_1a2
    move-object v8, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    move-object p1, v8

    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 534
    .local p1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_1a6
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_1a9
    .catch Ljava/text/ParseException; {:try_start_1a6 .. :try_end_1a9} :catch_265

    .line 541
    nop

    .line 545
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v0

    if-lez v0, :cond_1e0

    .line 546
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    move-result v0

    .line 547
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    if-nez v4, :cond_1bd

    goto :goto_1c5

    .line 548
    :cond_1bd
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    :goto_1c5
    add-int/2addr v0, v3

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 549
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-le v0, v3, :cond_1e0

    .line 550
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 551
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 552
    :cond_1df
    return-void

    .line 555
    :cond_1e0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0, p1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v2

    .line 557
    .local v2, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v2, :cond_259

    .line 559
    :try_start_1e8
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_22d

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 561
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v0

    if-nez v0, :cond_22d

    .line 562
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_219

    .line 563
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 564
    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_219
    .catchall {:try_start_1e8 .. :try_end_219} :catchall_244

    .line 571
    :cond_219
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_22c

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 572
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_22c

    .line 573
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 566
    :cond_22c
    return-void

    .line 569
    :cond_22d
    :try_start_22d
    invoke-interface {v2, p1, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_230
    .catchall {:try_start_22d .. :try_end_230} :catchall_244

    .line 571
    instance-of v0, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_243

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 572
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_243

    .line 573
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 574
    :cond_243
    goto :goto_264

    .line 571
    :catchall_244
    move-exception v0

    instance-of v3, v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_258

    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 572
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_258

    .line 573
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 574
    :cond_258
    throw v0

    .line 576
    :cond_259
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 577
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 578
    const-string v3, "Application is blocked -- could not acquire semaphore -- dropping response"

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 584
    .end local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .end local v2    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .end local v12    # "receptionTime":J
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :goto_264
    return-void

    .line 535
    .restart local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .restart local v12    # "receptionTime":J
    .restart local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_265
    move-exception v0

    .line 536
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 537
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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

    .line 538
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 540
    :cond_28a
    return-void

    .line 420
    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    .end local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v12    # "receptionTime":J
    .local p1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_28b
    move-object v8, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_290

    .line 419
    .end local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_28d
    move-object v8, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_290

    .line 416
    .end local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_28f
    move-object v8, p1

    .line 421
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v8    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_290
    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object p1

    .line 422
    .local p1, "badmsg":Ljava/lang/String;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 423
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, ">>> Dropped Bad Msg"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 427
    :cond_2b0
    return-void
.end method

.method public whitelist test-api run()V
    .registers 10

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v1, Lgov/nist/javax/sip/parser/Pipeline;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 595
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    .line 598
    .end local v0    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .local v1, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    .line 600
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    .line 602
    const/16 v0, 0x1000

    .line 603
    .local v0, "bufferSize":I
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    .line 604
    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    .line 608
    :goto_30
    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_32
    new-array v5, v0, [B

    .line 609
    .local v5, "msg":[B
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v5, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 611
    .local v6, "nbytes":I
    if-ne v6, v2, :cond_7f

    .line 612
    const-string v7, "\r\n\r\n"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_47} :catch_90
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_47} :catch_85
    .catchall {:try_start_32 .. :try_end_47} :catchall_83

    .line 614
    :try_start_47
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v7, v2, :cond_61

    .line 615
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    monitor-enter v2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_85
    .catchall {:try_start_47 .. :try_end_50} :catchall_83

    .line 616
    :try_start_50
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v8, v7, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    sub-int/2addr v8, v4

    iput v8, v7, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    .line 617
    iget-object v7, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 618
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
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_start_60
    throw v7

    .line 620
    .restart local v0    # "bufferSize":I
    .restart local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .restart local v5    # "msg":[B
    .restart local v6    # "nbytes":I
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :cond_61
    :goto_61
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    .line 621
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_85
    .catchall {:try_start_60 .. :try_end_69} :catchall_83

    .line 623
    goto :goto_6b

    .line 622
    :catch_6a
    move-exception v2

    .line 660
    :goto_6b
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    .line 661
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v2, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    .line 662
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    .line 663
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 624
    return-void

    .line 626
    :cond_7f
    :try_start_7f
    invoke-virtual {v1, v5, v3, v6}, Lgov/nist/javax/sip/parser/Pipeline;->write([BII)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_90
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_85
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    .end local v5    # "msg":[B
    .end local v6    # "nbytes":I
    goto :goto_8f

    .line 660
    :catchall_83
    move-exception v2

    goto :goto_e7

    .line 655
    :catch_85
    move-exception v2

    .line 656
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_86
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-static {v2, v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov/nist/core/StackLogger;)V
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_83

    .line 657
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_8f
    goto :goto_30

    .line 628
    :catch_90
    move-exception v5

    .line 631
    .local v5, "ex":Ljava/io/IOException;
    :try_start_91
    const-string v6, "\r\n\r\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9c} :catch_9d
    .catchall {:try_start_91 .. :try_end_9c} :catchall_83

    .line 634
    goto :goto_9e

    .line 632
    :catch_9d
    move-exception v6

    .line 637
    :goto_9e
    :try_start_9e
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 638
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c2} :catch_fb
    .catchall {:try_start_9e .. :try_end_c2} :catchall_83

    .line 640
    :cond_c2
    :try_start_c2
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v6, v2, :cond_dc

    .line 641
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    monitor-enter v2
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_cb} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_fb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_83

    .line 642
    :try_start_cb
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    sub-int/2addr v7, v4

    iput v7, v6, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    .line 644
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 645
    monitor-exit v2

    goto :goto_dc

    :catchall_d9
    move-exception v6

    monitor-exit v2
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_d9

    .end local v0    # "bufferSize":I
    .end local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :try_start_db
    throw v6

    .line 647
    .restart local v0    # "bufferSize":I
    .restart local v1    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    .restart local v5    # "ex":Ljava/io/IOException;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    :cond_dc
    :goto_dc
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 648
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e4} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e4} :catch_fb
    .catchall {:try_start_db .. :try_end_e4} :catchall_83

    .line 650
    goto :goto_e6

    .line 649
    :catch_e5
    move-exception v2

    .line 653
    :goto_e6
    goto :goto_fc

    .line 660
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_e7
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    .line 661
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    .line 662
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v5, v3, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    sub-int/2addr v5, v4

    iput v5, v3, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    .line 663
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 664
    throw v2

    .line 651
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_fb
    move-exception v2

    .line 660
    :goto_fc
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    .line 661
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v2, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    .line 662
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    iget v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    .line 663
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 654
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
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    .local v0, "msg":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 292
    .local v5, "time":J
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BZ)V

    .line 294
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 295
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_29

    .line 294
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_28
    move-object v2, p1

    .line 296
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_29
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

    .line 308
    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 310
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    const-string v5, "TCP"

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

    .line 312
    .local p1, "sock":Ljava/net/Socket;
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eq p1, p2, :cond_56

    if-eqz p1, :cond_56

    .line 313
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz p2, :cond_33

    .line 317
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object p2

    new-instance p3, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;

    invoke-direct {p3, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;-><init>(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 340
    :cond_33
    iput-object p1, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    .line 341
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 342
    iget-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, v8, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    .line 344
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 345
    .local p2, "mythread":Ljava/lang/Thread;
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 346
    const-string p3, "TCPMessageChannelThread"

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 350
    .end local p2    # "mythread":Ljava/lang/Thread;
    :cond_56
    return-void

    .line 308
    .end local v3    # "receiverAddress":Ljava/net/InetAddress;
    .end local v4    # "receiverPort":I
    .end local v6    # "message":[B
    .end local v7    # "retry":Z
    .local p1, "message":[B
    .local p2, "receiverAddress":Ljava/net/InetAddress;
    .restart local p3    # "receiverPort":I
    .restart local p4    # "retry":Z
    :cond_57
    move-object v8, p0

    move-object v6, p1

    move-object v3, p2

    move v4, p3

    move v7, p4

    .line 309
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

.method protected greylist uncache()V
    .registers 2

    .line 669
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    if-nez v0, :cond_d

    .line 670
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    .line 672
    :cond_d
    return-void
.end method
