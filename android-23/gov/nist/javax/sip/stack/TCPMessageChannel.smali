.class public Lgov/nist/javax/sip/stack/TCPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TCPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field protected isCached:Z

.field protected isRunning:Z

.field protected key:Ljava/lang/String;

.field protected myAddress:Ljava/lang/String;

.field protected myClientInputStream:Ljava/io/InputStream;

.field protected myClientOutputStream:Ljava/io/OutputStream;

.field private myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field protected myPort:I

.field private mySock:Ljava/net/Socket;

.field private mythread:Ljava/lang/Thread;

.field protected peerAddress:Ljava/net/InetAddress;

.field protected peerPort:I

.field protected peerProtocol:Ljava/lang/String;

.field protected sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5
    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V
    .locals 3
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 156
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 157
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "creating new TCPMessageChannel "

    #@10
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@13
    .line 158
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@1a
    .line 160
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1c
    .line 161
    iput p2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@1e
    .line 162
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

    #@24
    .line 163
    const-string/jumbo v0, "TCP"

    #@27
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@29
    .line 164
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    .line 165
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@2d
    .line 166
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    #@37
    .line 168
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@39
    iget v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@3b
    const-string/jumbo v2, "TCP"

    #@3e
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    #@44
    .line 169
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@46
    .line 155
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TCPMessageProcessor;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p3, "msgProcessor"    # Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@3
    .line 122
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "creating new TCPMessageChannel "

    #@10
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@13
    .line 124
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@1a
    .line 126
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@1c
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@1e
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@24
    .line 128
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    #@2e
    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@30
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@36
    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@38
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    #@3e
    .line 131
    new-instance v0, Ljava/lang/Thread;

    #@40
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@43
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    #@45
    .line 132
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    #@47
    const/4 v1, 0x1

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@4b
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    #@4d
    const-string/jumbo v1, "TCPMessageChannelThread"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@53
    .line 135
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@57
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@5d
    .line 138
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@5f
    .line 139
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@61
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->getPort()I

    #@64
    move-result v0

    #@65
    iput v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

    #@67
    .line 141
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@69
    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mythread:Ljava/lang/Thread;

    #@6b
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@6e
    .line 120
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
    .line 252
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v1

    #@a
    .line 253
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@c
    iget v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@e
    iget-object v4, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@10
    move-object v5, p1

    #@11
    move v6, p2

    #@12
    move-object v7, p0

    #@13
    .line 252
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    #@16
    move-result-object v9

    #@17
    .line 261
    .local v9, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@19
    if-eq v9, v0, :cond_1

    #@1b
    if-eqz v9, :cond_1

    #@1d
    .line 263
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@23
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 267
    :cond_0
    :goto_0
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@28
    .line 268
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@2a
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@30
    .line 269
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@32
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    #@38
    .line 270
    new-instance v10, Ljava/lang/Thread;

    #@3a
    invoke-direct {v10, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@3d
    .line 271
    .local v10, "thread":Ljava/lang/Thread;
    const/4 v0, 0x1

    #@3e
    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    #@41
    .line 272
    const-string/jumbo v0, "TCPMessageChannelThread"

    #@44
    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@47
    .line 273
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    #@4a
    .line 242
    .end local v10    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void

    #@4b
    .line 265
    :catch_0
    move-exception v8

    #@4c
    .local v8, "ex":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 186
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    #@9
    .line 187
    const/4 v1, 0x0

    #@a
    iput-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@c
    .line 189
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 190
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@19
    move-result-object v1

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Closing message Channel "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 183
    :cond_1
    :goto_0
    return-void

    #@32
    .line 191
    :catch_0
    move-exception v0

    #@33
    .line 192
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@35
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 193
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@40
    move-result-object v1

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Error closing socket "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@58
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 682
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getClass()Ljava/lang/Class;

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
    .line 683
    return v3

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 685
    check-cast v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@13
    .line 686
    .local v0, "that":Lgov/nist/javax/sip/stack/TCPMessageChannel;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@15
    iget-object v2, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 687
    return v3

    #@1a
    .line 689
    :cond_1
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 701
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@9
    iget v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@b
    const-string/jumbo v2, "TCP"

    #@e
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    #@14
    .line 702
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->key:Ljava/lang/String;

    #@16
    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 223
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 225
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getHost()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    #@0
    .prologue
    .line 734
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 730
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@2
    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    const-string/jumbo v0, "TCP"

    #@3
    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 721
    iget v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myPort:I

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
    .line 363
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 364
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@11
    .line 366
    :cond_0
    if-eqz p3, :cond_7

    #@13
    .line 367
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
    .line 368
    const-class v3, Lgov/nist/javax/sip/header/CSeq;

    #@25
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    .line 367
    if-nez v3, :cond_1

    #@2b
    .line 368
    const-class v3, Lgov/nist/javax/sip/header/Via;

    #@2d
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 367
    if-nez v3, :cond_1

    #@33
    .line 369
    const-class v3, Lgov/nist/javax/sip/header/CallID;

    #@35
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 367
    if-nez v3, :cond_1

    #@3b
    .line 369
    const-class v3, Lgov/nist/javax/sip/header/RequestLine;

    #@3d
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v3

    #@41
    .line 367
    if-nez v3, :cond_1

    #@43
    .line 370
    const-class v3, Lgov/nist/javax/sip/header/StatusLine;

    #@45
    .line 369
    invoke-virtual {p3, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    .line 366
    if-eqz v3, :cond_7

    #@4b
    .line 371
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 372
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@58
    move-result-object v3

    #@59
    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "Encountered Bad Message \n"

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 372
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@74
    .line 378
    :cond_2
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    .line 379
    .local v2, "msgString":Ljava/lang/String;
    const-string/jumbo v3, "SIP/"

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7e
    move-result v3

    #@7f
    if-nez v3, :cond_3

    #@81
    const-string/jumbo v3, "ACK "

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_4

    #@8a
    .line 401
    :cond_3
    :goto_0
    throw p1

    #@8b
    .line 381
    :cond_4
    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    .line 382
    .local v0, "badReqRes":Ljava/lang/String;
    if-eqz v0, :cond_6

    #@91
    .line 383
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@93
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@96
    move-result v3

    #@97
    if-eqz v3, :cond_5

    #@99
    .line 384
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9e
    move-result-object v3

    #@9f
    const-string/jumbo v4, "Sending automatic 400 Bad Request:"

    #@a2
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a5
    .line 385
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a7
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@aa
    move-result-object v3

    #@ab
    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ae
    .line 388
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerPort()I

    #@b9
    move-result v5

    #@ba
    .line 389
    const/4 v6, 0x0

    #@bb
    .line 388
    invoke-virtual {p0, v3, v4, v5, v6}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    goto :goto_0

    #@bf
    .line 390
    :catch_0
    move-exception v1

    #@c0
    .line 391
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c2
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c5
    move-result-object v3

    #@c6
    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@c9
    goto :goto_0

    #@ca
    .line 394
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@cc
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@cf
    move-result v3

    #@d0
    if-eqz v3, :cond_3

    #@d2
    .line 395
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d4
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d7
    move-result-object v3

    #@d8
    .line 396
    const-string/jumbo v4, "Could not formulate automatic 400 Bad Request"

    #@db
    .line 395
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@de
    goto :goto_0

    #@df
    .line 403
    .end local v0    # "badReqRes":Ljava/lang/String;
    .end local v2    # "msgString":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    #@e2
    .line 362
    return-void
.end method

.method public isReliable()Z
    .locals 1

    #@0
    .prologue
    .line 177
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 745
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 24
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@3
    move-result-object v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 419
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@9
    move-result-object v5

    #@a
    if-nez v5, :cond_2

    #@c
    .line 421
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 422
    .local v4, "badmsg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@14
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 423
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@21
    move-result-object v5

    #@22
    const-string/jumbo v6, ">>> Dropped Bad Msg"

    #@25
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@28
    .line 424
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2f
    move-result-object v5

    #@30
    invoke-interface {v5, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@33
    .line 427
    :cond_1
    return-void

    #@34
    .line 419
    .end local v4    # "badmsg":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@37
    move-result-object v5

    #@38
    if-eqz v5, :cond_0

    #@3a
    .line 420
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@3d
    move-result-object v5

    #@3e
    if-eqz v5, :cond_0

    #@40
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@43
    move-result-object v5

    #@44
    if-eqz v5, :cond_0

    #@46
    .line 430
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@49
    move-result-object v23

    #@4a
    .line 435
    .local v23, "viaList":Lgov/nist/javax/sip/header/ViaList;
    move-object/from16 v0, p1

    #@4c
    instance-of v5, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@4e
    if-eqz v5, :cond_3

    #@50
    .line 436
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@53
    move-result-object v22

    #@54
    check-cast v22, Lgov/nist/javax/sip/header/Via;

    #@56
    .line 437
    .local v22, "v":Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p0

    #@58
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5a
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@5c
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    #@5f
    move-result-object v6

    #@60
    invoke-interface {v5, v6}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@63
    move-result-object v13

    #@64
    .line 438
    .local v13, "hop":Ljavax/sip/address/Hop;
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    move-object/from16 v0, p0

    #@6a
    iput-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerProtocol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 440
    :try_start_1
    move-object/from16 v0, p0

    #@6e
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@70
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@73
    move-result-object v5

    #@74
    move-object/from16 v0, p0

    #@76
    iput-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@78
    .line 451
    const-string/jumbo v5, "rport"

    #@7b
    move-object/from16 v0, v22

    #@7d
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    #@80
    move-result v5

    #@81
    if-nez v5, :cond_6

    #@83
    .line 452
    invoke-interface {v13}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@8b
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_6

    #@95
    .line 459
    :goto_0
    const-string/jumbo v5, "rport"

    #@98
    move-object/from16 v0, p0

    #@9a
    iget v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@9c
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    move-object/from16 v0, v22

    #@a2
    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a5
    .line 464
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@a7
    iget-boolean v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    #@a9
    if-nez v5, :cond_3

    #@ab
    .line 465
    move-object/from16 v0, p0

    #@ad
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@af
    check-cast v5, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@b1
    move-object/from16 v0, p0

    #@b3
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@b6
    .line 466
    const/4 v5, 0x1

    #@b7
    move-object/from16 v0, p0

    #@b9
    iput-boolean v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    #@bb
    .line 467
    move-object/from16 v0, p0

    #@bd
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@bf
    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@c2
    move-result-object v5

    #@c3
    check-cast v5, Ljava/net/InetSocketAddress;

    #@c5
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@c8
    move-result v15

    #@c9
    .line 468
    .local v15, "remotePort":I
    move-object/from16 v0, p0

    #@cb
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@cd
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@d0
    move-result-object v5

    #@d1
    invoke-static {v5, v15}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@d4
    move-result-object v14

    #@d5
    .line 469
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d7
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d9
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@df
    invoke-virtual {v5, v14, v6}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    #@e2
    .line 476
    .end local v13    # "hop":Ljavax/sip/address/Hop;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "remotePort":I
    .end local v22    # "v":Lgov/nist/javax/sip/header/Via;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e5
    move-result-wide v10

    #@e6
    .line 478
    .local v10, "receptionTime":J
    move-object/from16 v0, p1

    #@e8
    instance-of v5, v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@ea
    if-eqz v5, :cond_c

    #@ec
    .line 480
    move-object/from16 v0, p1

    #@ee
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@f0
    move-object/from16 v17, v0

    #@f2
    .line 484
    .local v17, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    #@f4
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f6
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@f9
    move-result v5

    #@fa
    if-eqz v5, :cond_4

    #@fc
    .line 485
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@100
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@103
    move-result-object v5

    #@104
    const-string/jumbo v6, "----Processing Message---"

    #@107
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@10a
    .line 490
    :cond_4
    move-object/from16 v0, p0

    #@10c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@111
    move-result-object v5

    #@112
    const/16 v6, 0x10

    #@114
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@117
    move-result v5

    #@118
    if-eqz v5, :cond_5

    #@11a
    .line 491
    move-object/from16 v0, p0

    #@11c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11e
    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@120
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v6}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    #@127
    move-result-object v7

    #@128
    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@130
    move-result-object v8

    #@131
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@134
    move-result-object v8

    #@135
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@138
    move-result-object v8

    #@139
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v6

    #@13d
    const-string/jumbo v8, ":"

    #@140
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v6

    #@144
    .line 493
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@147
    move-result-object v8

    #@148
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@14b
    move-result v8

    #@14c
    .line 492
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v6

    #@150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v8

    #@154
    .line 493
    const/4 v9, 0x0

    #@155
    move-object/from16 v6, p1

    #@157
    .line 491
    invoke-interface/range {v5 .. v11}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@15a
    .line 497
    :cond_5
    move-object/from16 v0, p0

    #@15c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@161
    move-result v5

    #@162
    if-lez v5, :cond_8

    #@164
    .line 498
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    #@167
    move-result v6

    #@168
    .line 499
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@16b
    move-result-object v5

    #@16c
    if-nez v5, :cond_7

    #@16e
    const/4 v5, 0x0

    #@16f
    .line 498
    :goto_2
    add-int/2addr v5, v6

    #@170
    .line 500
    move-object/from16 v0, p0

    #@172
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@174
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@177
    move-result v6

    #@178
    .line 498
    if-le v5, v6, :cond_8

    #@17a
    .line 503
    const/16 v5, 0x201

    #@17c
    .line 502
    move-object/from16 v0, v17

    #@17e
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@181
    move-result-object v18

    #@182
    .line 504
    .local v18, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getTransport()Ljava/lang/String;

    #@185
    move-result-object v5

    #@186
    move-object/from16 v0, v18

    #@188
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    #@18b
    move-result-object v16

    #@18c
    .line 505
    .local v16, "resp":[B
    const/4 v5, 0x0

    #@18d
    move-object/from16 v0, p0

    #@18f
    move-object/from16 v1, v16

    #@191
    invoke-direct {v0, v1, v5}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BZ)V

    #@194
    .line 506
    new-instance v5, Ljava/lang/Exception;

    #@196
    const-string/jumbo v6, "Message size exceeded"

    #@199
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@19c
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19d
    .line 582
    .end local v10    # "receptionTime":J
    .end local v16    # "resp":[B
    .end local v17    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v18    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v23    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catchall_0
    move-exception v5

    #@19e
    throw v5

    #@19f
    .line 453
    .restart local v13    # "hop":Ljavax/sip/address/Hop;
    .restart local v22    # "v":Lgov/nist/javax/sip/header/Via;
    .restart local v23    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :cond_6
    :try_start_3
    const-string/jumbo v5, "received"

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@1a6
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1a9
    move-result-object v6

    #@1aa
    move-object/from16 v0, v22

    #@1ac
    invoke-virtual {v0, v5, v6}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1af
    goto/16 :goto_0

    #@1b1
    .line 460
    :catch_0
    move-exception v12

    #@1b2
    .line 461
    .local v12, "ex":Ljava/text/ParseException;
    :try_start_4
    move-object/from16 v0, p0

    #@1b4
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1b6
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b9
    move-result-object v5

    #@1ba
    invoke-static {v12, v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov/nist/core/StackLogger;)V

    #@1bd
    goto/16 :goto_1

    #@1bf
    .line 499
    .end local v12    # "ex":Ljava/text/ParseException;
    .end local v13    # "hop":Ljavax/sip/address/Hop;
    .end local v22    # "v":Lgov/nist/javax/sip/header/Via;
    .restart local v10    # "receptionTime":J
    .restart local v17    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@1c2
    move-result-object v5

    #@1c3
    invoke-interface {v5}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@1c6
    move-result v5

    #@1c7
    goto :goto_2

    #@1c8
    .line 509
    :cond_8
    move-object/from16 v0, p0

    #@1ca
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1cc
    move-object/from16 v0, v17

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    invoke-virtual {v5, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1d3
    move-result-object v19

    #@1d4
    .line 512
    .local v19, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-eqz v19, :cond_b

    #@1d6
    .line 514
    :try_start_5
    move-object/from16 v0, v19

    #@1d8
    move-object/from16 v1, v17

    #@1da
    move-object/from16 v2, p0

    #@1dc
    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1df
    .line 516
    :try_start_6
    move-object/from16 v0, v19

    #@1e1
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1e3
    if-eqz v5, :cond_9

    #@1e5
    .line 517
    move-object/from16 v0, v19

    #@1e7
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1e9
    move-object/from16 v21, v0

    #@1eb
    .line 518
    .local v21, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@1ee
    move-result v5

    #@1ef
    if-nez v5, :cond_9

    #@1f1
    .line 519
    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1f3
    .end local v19    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@1f6
    .line 414
    .end local v17    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v21    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_9
    :goto_3
    return-void

    #@1f7
    .line 515
    .restart local v17    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v19    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_1
    move-exception v5

    #@1f8
    .line 516
    move-object/from16 v0, v19

    #@1fa
    instance-of v6, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1fc
    if-eqz v6, :cond_a

    #@1fe
    .line 517
    move-object/from16 v0, v19

    #@200
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@202
    move-object/from16 v21, v0

    #@204
    .line 518
    .restart local v21    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@207
    move-result v6

    #@208
    if-nez v6, :cond_a

    #@20a
    .line 519
    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@20c
    .end local v19    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@20f
    .line 515
    .end local v21    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_a
    throw v5

    #@210
    .line 523
    .restart local v19    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_b
    move-object/from16 v0, p0

    #@212
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@214
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@217
    move-result v5

    #@218
    if-eqz v5, :cond_9

    #@21a
    .line 524
    move-object/from16 v0, p0

    #@21c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@21e
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@221
    move-result-object v5

    #@222
    .line 525
    const-string/jumbo v6, "Dropping request -- could not acquire semaphore in 10 sec"

    #@225
    .line 524
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@228
    goto :goto_3

    #@229
    .line 529
    .end local v17    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v19    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_c
    move-object/from16 v0, p1

    #@22b
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@22d
    move-object/from16 v18, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@22f
    .line 534
    .restart local v18    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@232
    .line 545
    :try_start_8
    move-object/from16 v0, p0

    #@234
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@236
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@239
    move-result v5

    #@23a
    if-lez v5, :cond_10

    #@23c
    .line 546
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    #@23f
    move-result v6

    #@240
    .line 547
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@243
    move-result-object v5

    #@244
    if-nez v5, :cond_f

    #@246
    const/4 v5, 0x0

    #@247
    .line 546
    :goto_4
    add-int/2addr v5, v6

    #@248
    .line 548
    move-object/from16 v0, p0

    #@24a
    iget-object v6, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@24c
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@24f
    move-result v6

    #@250
    .line 546
    if-le v5, v6, :cond_10

    #@252
    .line 550
    move-object/from16 v0, p0

    #@254
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@256
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@259
    move-result v5

    #@25a
    if-eqz v5, :cond_d

    #@25c
    .line 551
    move-object/from16 v0, p0

    #@25e
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@260
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@263
    move-result-object v5

    #@264
    const-string/jumbo v6, "Message size exceeded"

    #@267
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@26a
    .line 552
    :cond_d
    return-void

    #@26b
    .line 535
    :catch_1
    move-exception v12

    #@26c
    .line 536
    .restart local v12    # "ex":Ljava/text/ParseException;
    move-object/from16 v0, p0

    #@26e
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@270
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@273
    move-result v5

    #@274
    if-eqz v5, :cond_e

    #@276
    .line 537
    move-object/from16 v0, p0

    #@278
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27a
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@27d
    move-result-object v5

    #@27e
    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    #@280
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@283
    const-string/jumbo v7, "Dropping Badly formatted response message >>> "

    #@286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v6

    #@28a
    move-object/from16 v0, v18

    #@28c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v6

    #@290
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@293
    move-result-object v6

    #@294
    .line 537
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@297
    .line 540
    :cond_e
    return-void

    #@298
    .line 547
    .end local v12    # "ex":Ljava/text/ParseException;
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@29b
    move-result-object v5

    #@29c
    invoke-interface {v5}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    #@29f
    move-result v5

    #@2a0
    goto :goto_4

    #@2a1
    .line 555
    :cond_10
    move-object/from16 v0, p0

    #@2a3
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2a5
    move-object/from16 v0, v18

    #@2a7
    move-object/from16 v1, p0

    #@2a9
    invoke-virtual {v5, v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@2ac
    move-result-object v20

    #@2ad
    .line 557
    .local v20, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v20, :cond_18

    #@2af
    .line 559
    :try_start_9
    move-object/from16 v0, v20

    #@2b1
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2b3
    if-eqz v5, :cond_11

    #@2b5
    .line 560
    move-object/from16 v0, v20

    #@2b7
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2b9
    move-object v5, v0

    #@2ba
    move-object/from16 v0, v18

    #@2bc
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    #@2bf
    move-result v5

    #@2c0
    if-eqz v5, :cond_12

    #@2c2
    .line 569
    :cond_11
    move-object/from16 v0, v20

    #@2c4
    move-object/from16 v1, v18

    #@2c6
    move-object/from16 v2, p0

    #@2c8
    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@2cb
    .line 571
    :try_start_a
    move-object/from16 v0, v20

    #@2cd
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2cf
    if-eqz v5, :cond_9

    #@2d1
    .line 572
    move-object/from16 v0, v20

    #@2d3
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2d5
    move-object v5, v0

    #@2d6
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@2d9
    move-result v5

    #@2da
    if-nez v5, :cond_9

    #@2dc
    .line 573
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2de
    .end local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@2e1
    goto/16 :goto_3

    #@2e3
    .line 562
    .restart local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    #@2e5
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2e7
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2ea
    move-result v5

    #@2eb
    if-eqz v5, :cond_13

    #@2ed
    .line 563
    move-object/from16 v0, p0

    #@2ef
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f1
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2f4
    move-result-object v5

    #@2f5
    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2fa
    const-string/jumbo v7, "Dropping response message with invalid tag >>> "

    #@2fd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v6

    #@301
    move-object/from16 v0, v18

    #@303
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v6

    #@307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v6

    #@30b
    .line 563
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@30e
    .line 571
    :cond_13
    :try_start_c
    move-object/from16 v0, v20

    #@310
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@312
    if-eqz v5, :cond_14

    #@314
    .line 572
    move-object/from16 v0, v20

    #@316
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@318
    move-object v5, v0

    #@319
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@31c
    move-result v5

    #@31d
    if-eqz v5, :cond_15

    #@31f
    .line 566
    .end local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_14
    :goto_5
    return-void

    #@320
    .line 573
    .restart local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_15
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@322
    .end local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@325
    goto :goto_5

    #@326
    .line 570
    .restart local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :catchall_2
    move-exception v5

    #@327
    move-object v6, v5

    #@328
    .line 571
    move-object/from16 v0, v20

    #@32a
    instance-of v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@32c
    if-eqz v5, :cond_16

    #@32e
    .line 572
    move-object/from16 v0, v20

    #@330
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@332
    move-object v5, v0

    #@333
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@336
    move-result v5

    #@337
    if-eqz v5, :cond_17

    #@339
    .line 570
    .end local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_16
    :goto_6
    throw v6

    #@33a
    .line 573
    .restart local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_17
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@33c
    .end local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@33f
    goto :goto_6

    #@340
    .line 576
    .restart local v20    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_18
    move-object/from16 v0, p0

    #@342
    iget-object v5, v0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@344
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@347
    move-result-object v5

    #@348
    .line 579
    const-string/jumbo v6, "Application is blocked -- could not acquire semaphore -- dropping response"

    #@34b
    .line 576
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@34e
    goto/16 :goto_3
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 592
    const/4 v5, 0x0

    #@3
    .line 594
    .local v5, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v5, Lgov/nist/javax/sip/parser/Pipeline;

    #@5
    .end local v5    # "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@7
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    iget v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    #@b
    .line 595
    iget-object v11, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@10
    move-result-object v11

    #@11
    .line 594
    invoke-direct {v5, v9, v10, v11}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    #@14
    .line 598
    .local v5, "hispipe":Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v9, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@16
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    #@1b
    move-result v10

    #@1c
    invoke-direct {v9, p0, v5, v10}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    #@1f
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@21
    .line 600
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@23
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    #@26
    .line 602
    const/16 v0, 0x1000

    #@28
    .line 603
    .local v0, "bufferSize":I
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@2a
    iget v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@2c
    add-int/lit8 v10, v10, 0x1

    #@2e
    iput v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@30
    .line 604
    const/4 v9, 0x1

    #@31
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    #@33
    .line 608
    :goto_0
    :try_start_0
    new-array v7, v0, [B

    #@35
    .line 609
    .local v7, "msg":[B
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@37
    const/4 v10, 0x0

    #@38
    invoke-virtual {v9, v7, v10, v0}, Ljava/io/InputStream;->read([BII)I

    #@3b
    move-result v8

    #@3c
    .line 611
    .local v8, "nbytes":I
    if-ne v8, v13, :cond_1

    #@3e
    .line 612
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
    .line 614
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@4f
    if-eq v9, v13, :cond_0

    #@51
    .line 615
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@53
    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@54
    .line 616
    :try_start_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@56
    iget v11, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@58
    add-int/lit8 v11, v11, -0x1

    #@5a
    iput v11, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@5c
    .line 617
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@5e
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    :try_start_3
    monitor-exit v10

    #@62
    .line 620
    :cond_0
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    #@65
    .line 621
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@67
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 660
    :goto_1
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    #@6c
    .line 661
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@6e
    invoke-virtual {v9, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@71
    .line 662
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@73
    iget v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@75
    add-int/lit8 v10, v10, -0x1

    #@77
    iput v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@79
    .line 663
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@7b
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@7e
    .line 624
    return-void

    #@7f
    .line 615
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
    .line 622
    :catch_0
    move-exception v6

    #@83
    .local v6, "ioex":Ljava/io/IOException;
    goto :goto_1

    #@84
    .line 626
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
    .line 628
    .end local v7    # "msg":[B
    .end local v8    # "nbytes":I
    :catch_1
    move-exception v2

    #@8a
    .line 631
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
    .line 637
    :goto_2
    :try_start_7
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@99
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@9c
    move-result v9

    #@9d
    if-eqz v9, :cond_2

    #@9f
    .line 638
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

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
    .line 640
    :cond_2
    :try_start_8
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@be
    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@c0
    if-eq v9, v13, :cond_3

    #@c2
    .line 641
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@c4
    monitor-enter v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@c5
    .line 642
    :try_start_9
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@c7
    iget v11, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@c9
    add-int/lit8 v11, v11, -0x1

    #@cb
    iput v11, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->nConnections:I

    #@cd
    .line 644
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@cf
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@d2
    :try_start_a
    monitor-exit v10

    #@d3
    .line 647
    :cond_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@d5
    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    #@d8
    .line 648
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@db
    .line 660
    :goto_3
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    #@dd
    .line 661
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@df
    invoke-virtual {v9, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@e2
    .line 662
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@e4
    iget v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@e6
    add-int/lit8 v10, v10, -0x1

    #@e8
    iput v10, v9, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@ea
    .line 663
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@ec
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@ef
    .line 654
    return-void

    #@f0
    .line 655
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@f1
    .line 656
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_b
    iget-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f3
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f6
    move-result-object v9

    #@f7
    invoke-static {v3, v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;Lgov/nist/core/StackLogger;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@fa
    goto/16 :goto_0

    #@fc
    .line 659
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    #@fd
    .line 660
    iput-boolean v12, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    #@ff
    .line 661
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@101
    invoke-virtual {v10, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@104
    .line 662
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@106
    iget v11, v10, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@108
    add-int/lit8 v11, v11, -0x1

    #@10a
    iput v11, v10, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->useCount:I

    #@10c
    .line 663
    iget-object v10, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@10e
    invoke-virtual {v10}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    #@111
    .line 659
    throw v9

    #@112
    .line 641
    .restart local v2    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v9

    #@113
    :try_start_c
    monitor-exit v10

    #@114
    throw v9
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@115
    .line 649
    :catch_3
    move-exception v6

    #@116
    .restart local v6    # "ioex":Ljava/io/IOException;
    goto :goto_3

    #@117
    .line 651
    .end local v6    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v4

    #@118
    .local v4, "ex1":Ljava/lang/Exception;
    goto :goto_3

    #@119
    .line 632
    .end local v4    # "ex1":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    #@11a
    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_2
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
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->getTransport()Ljava/lang/String;

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
    .line 292
    .local v4, "time":J
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v6, v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BZ)V

    #@10
    .line 294
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@12
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v0

    #@16
    const/16 v1, 0x10

    #@18
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 295
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    #@20
    iget v3, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->peerPort:I

    #@22
    move-object v0, p0

    #@23
    move-object v1, p1

    #@24
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    #@27
    .line 285
    :cond_0
    return-void
.end method

.method public sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 10
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
    .line 308
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Null argument"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 310
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@11
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@13
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@16
    move-result-object v1

    #@17
    .line 311
    const-string/jumbo v4, "TCP"

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
    .line 310
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    #@22
    move-result-object v9

    #@23
    .line 312
    .local v9, "sock":Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@25
    if-eq v9, v0, :cond_3

    #@27
    if-eqz v9, :cond_3

    #@29
    .line 313
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 317
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@32
    move-result-object v0

    #@33
    new-instance v1, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;

    #@35
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;-><init>(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@38
    .line 337
    const-wide/16 v2, 0x1f40

    #@3a
    .line 317
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@3d
    .line 340
    :cond_2
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@3f
    .line 341
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@41
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    #@47
    .line 342
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    #@49
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@4c
    move-result-object v0

    #@4d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->myClientOutputStream:Ljava/io/OutputStream;

    #@4f
    .line 344
    new-instance v8, Ljava/lang/Thread;

    #@51
    invoke-direct {v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@54
    .line 345
    .local v8, "mythread":Ljava/lang/Thread;
    const/4 v0, 0x1

    #@55
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    #@58
    .line 346
    const-string/jumbo v0, "TCPMessageChannelThread"

    #@5b
    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@5e
    .line 347
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    #@61
    .line 307
    .end local v8    # "mythread":Ljava/lang/Thread;
    :cond_3
    return-void
.end method

.method protected uncache()V
    .locals 1

    #@0
    .prologue
    .line 669
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isCached:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->isRunning:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 668
    :cond_0
    :goto_0
    return-void

    #@9
    .line 670
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel;->tcpMessageProcessor:Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@b
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V

    #@e
    goto :goto_0
.end method
