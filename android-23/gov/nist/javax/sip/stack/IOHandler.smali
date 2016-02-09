.class Lgov/nist/javax/sip/stack/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# static fields
.field private static TCP:Ljava/lang/String;

.field private static TLS:Ljava/lang/String;


# instance fields
.field private ioSemaphore:Ljava/util/concurrent/Semaphore;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field private socketTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "tcp"

    #@3
    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    #@5
    .line 69
    const-string/jumbo v0, "tls"

    #@8
    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    #@a
    .line 60
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@b
    .line 81
    check-cast p1, Lgov/nist/javax/sip/SipStackImpl;

    #@d
    .end local p1    # "sipStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    iput-object p1, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f
    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    .line 80
    return-void
.end method

.method protected static makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ":"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private writeChunks(Ljava/io/OutputStream;[BI)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    monitor-enter p1

    #@1
    .line 111
    const/4 v1, 0x0

    #@2
    .local v1, "p":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@4
    .line 112
    add-int/lit16 v2, v1, 0x2000

    #@6
    if-ge v2, p3, :cond_0

    #@8
    .line 110
    const/16 v0, 0x2000

    #@a
    .line 113
    .local v0, "chunk":I
    :goto_1
    :try_start_0
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 111
    add-int/lit16 v1, v1, 0x2000

    #@f
    goto :goto_0

    #@10
    .line 112
    .end local v0    # "chunk":I
    :cond_0
    sub-int v0, p3, v1

    #@12
    .restart local v0    # "chunk":I
    goto :goto_1

    #@13
    .end local v0    # "chunk":I
    :cond_1
    monitor-exit p1

    #@14
    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@17
    .line 105
    return-void

    #@18
    .line 108
    .restart local v0    # "chunk":I
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p1

    #@1a
    throw v2
.end method


# virtual methods
.method public closeAll()V
    .locals 4

    #@0
    .prologue
    .line 330
    iget-object v3, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v2

    #@6
    .local v2, "values":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 331
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/net/Socket;

    #@12
    .line 333
    .local v1, "s":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 334
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    #@18
    .line 329
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "s":Ljava/net/Socket;
    :cond_0
    return-void
.end method

.method protected getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/Socket;

    #@8
    return-object v0
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .locals 3
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {p1, p2}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 137
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    #@7
    move-result-object v0

    #@8
    .line 139
    .local v0, "clientSock":Ljava/net/Socket;
    if-nez v0, :cond_0

    #@a
    .line 140
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2, p1, p2, p3, p4}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    #@13
    move-result-object v0

    #@14
    .line 142
    invoke-virtual {p0, v1, v0}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    #@17
    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method protected putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sock"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 86
    return-void
.end method

.method protected removeSocket(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 95
    return-void
.end method

.method public sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;
    .locals 22
    .param p1, "senderAddress"    # Ljava/net/InetAddress;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "contactPort"    # I
    .param p4, "transport"    # Ljava/lang/String;
    .param p5, "bytes"    # [B
    .param p6, "retry"    # Z
    .param p7, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    const/16 v19, 0x0

    #@2
    .line 163
    .local v19, "retry_count":I
    if-eqz p6, :cond_2

    #@4
    const/16 v17, 0x2

    #@6
    .line 165
    .local v17, "max_retry":I
    :goto_0
    move-object/from16 v0, p5

    #@8
    array-length v7, v0

    #@9
    .line 166
    .local v7, "length":I
    move-object/from16 v0, p0

    #@b
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@d
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 167
    move-object/from16 v0, p0

    #@15
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@17
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1a
    move-result-object v5

    #@1b
    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v8, "sendBytes "

    #@23
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    move-object/from16 v0, p4

    #@29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    const-string/jumbo v8, " inAddr "

    #@30
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    .line 169
    const-string/jumbo v8, " port = "

    #@3f
    .line 168
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    move/from16 v0, p3

    #@45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 169
    const-string/jumbo v8, " length = "

    #@4c
    .line 168
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 167
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5b
    .line 171
    :cond_0
    move-object/from16 v0, p0

    #@5d
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5f
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@62
    move-result v5

    #@63
    if-eqz v5, :cond_1

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@69
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLogStackTraceOnMessageSend()Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_1

    #@6f
    .line 172
    move-object/from16 v0, p0

    #@71
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@73
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@76
    move-result-object v5

    #@77
    const/16 v6, 0x10

    #@79
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    #@7c
    .line 174
    :cond_1
    sget-object v5, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    #@7e
    move-object/from16 v0, p4

    #@80
    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_a

    #@86
    .line 175
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@89
    move-result-object v15

    #@8a
    .line 180
    .local v15, "key":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@8c
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@8e
    const-wide/16 v8, 0x2710

    #@90
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@92
    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@95
    move-result v20

    #@96
    .line 181
    .local v20, "retval":Z
    if-nez v20, :cond_3

    #@98
    .line 182
    new-instance v5, Ljava/io/IOException;

    #@9a
    .line 183
    const-string/jumbo v6, "Could not acquire IO Semaphore after 10 seconds -- giving up "

    #@9d
    .line 182
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a1
    .line 185
    .end local v20    # "retval":Z
    :catch_0
    move-exception v14

    #@a2
    .line 186
    .local v14, "ex":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    #@a4
    const-string/jumbo v6, "exception in acquiring sem"

    #@a7
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v5

    #@ab
    .line 163
    .end local v7    # "length":I
    .end local v14    # "ex":Ljava/lang/InterruptedException;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "max_retry":I
    :cond_2
    const/16 v17, 0x1

    #@ad
    .restart local v17    # "max_retry":I
    goto/16 :goto_0

    #@af
    .line 188
    .restart local v7    # "length":I
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v20    # "retval":Z
    :cond_3
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    #@b4
    move-result-object v10

    #@b5
    .line 192
    :goto_1
    move/from16 v0, v19

    #@b7
    move/from16 v1, v17

    #@b9
    if-ge v0, v1, :cond_5

    #@bb
    .line 193
    if-nez v10, :cond_7

    #@bd
    .line 194
    :try_start_1
    move-object/from16 v0, p0

    #@bf
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c1
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@c4
    move-result v5

    #@c5
    if-eqz v5, :cond_4

    #@c7
    .line 195
    move-object/from16 v0, p0

    #@c9
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@cb
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ce
    move-result-object v5

    #@cf
    new-instance v6, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v8, "inaddr = "

    #@d7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v6

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v6

    #@e1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@e8
    .line 196
    move-object/from16 v0, p0

    #@ea
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ec
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ef
    move-result-object v5

    #@f0
    new-instance v6, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v8, "port = "

    #@f8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v6

    #@fc
    move/from16 v0, p3

    #@fe
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v6

    #@102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v6

    #@106
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@109
    .line 204
    :cond_4
    move-object/from16 v0, p0

    #@10b
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@10d
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@110
    move-result-object v5

    #@111
    move-object/from16 v0, p2

    #@113
    move/from16 v1, p3

    #@115
    move-object/from16 v2, p1

    #@117
    invoke-interface {v5, v0, v1, v2}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;

    #@11a
    move-result-object v10

    #@11b
    .line 206
    .local v10, "clientSock":Ljava/net/Socket;
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@11e
    move-result-object v18

    #@11f
    .line 207
    .local v18, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, v18

    #@123
    move-object/from16 v2, p5

    #@125
    invoke-direct {v0, v1, v2, v7}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    #@128
    .line 208
    move-object/from16 v0, p0

    #@12a
    invoke-virtual {v0, v15, v10}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12d
    .line 232
    .end local v10    # "clientSock":Ljava/net/Socket;
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    #@12f
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@131
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    #@134
    .line 235
    if-nez v10, :cond_9

    #@136
    .line 237
    move-object/from16 v0, p0

    #@138
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@13a
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@13d
    move-result v5

    #@13e
    if-eqz v5, :cond_6

    #@140
    .line 238
    move-object/from16 v0, p0

    #@142
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@144
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@147
    move-result-object v5

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v6, v0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@14c
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    #@14f
    move-result-object v6

    #@150
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@153
    .line 239
    move-object/from16 v0, p0

    #@155
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@157
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15a
    move-result-object v5

    #@15b
    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string/jumbo v8, "Could not connect to "

    #@163
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v6

    #@167
    move-object/from16 v0, p2

    #@169
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v6

    #@16d
    const-string/jumbo v8, ":"

    #@170
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v6

    #@174
    move/from16 v0, p3

    #@176
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@179
    move-result-object v6

    #@17a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v6

    #@17e
    .line 239
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@181
    .line 243
    :cond_6
    new-instance v5, Ljava/io/IOException;

    #@183
    new-instance v6, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v8, "Could not connect to "

    #@18b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v6

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v6

    #@195
    const-string/jumbo v8, ":"

    #@198
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v6

    #@19c
    move/from16 v0, p3

    #@19e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v6

    #@1a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v6

    #@1a6
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a9
    throw v5

    #@1aa
    .line 212
    :cond_7
    :try_start_2
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@1ad
    move-result-object v18

    #@1ae
    .line 213
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v18

    #@1b2
    move-object/from16 v2, p5

    #@1b4
    invoke-direct {v0, v1, v2, v7}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b7
    goto/16 :goto_2

    #@1b9
    .line 215
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v13

    #@1ba
    .line 216
    .local v13, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    #@1bc
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1be
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1c1
    move-result v5

    #@1c2
    if-eqz v5, :cond_8

    #@1c4
    .line 217
    move-object/from16 v0, p0

    #@1c6
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c8
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1cb
    move-result-object v5

    #@1cc
    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v8, "IOException occured retryCount "

    #@1d4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v6

    #@1d8
    move/from16 v0, v19

    #@1da
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v6

    #@1de
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v6

    #@1e2
    .line 217
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1e5
    .line 221
    :cond_8
    move-object/from16 v0, p0

    #@1e7
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1ea
    .line 223
    :try_start_4
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1ed
    .line 226
    :goto_3
    const/4 v10, 0x0

    #@1ee
    .line 227
    .local v10, "clientSock":Ljava/net/Socket;
    add-int/lit8 v19, v19, 0x1

    #@1f0
    goto/16 :goto_1

    #@1f2
    .line 224
    .end local v10    # "clientSock":Ljava/net/Socket;
    :catch_2
    move-exception v12

    #@1f3
    .local v12, "e":Ljava/lang/Exception;
    goto :goto_3

    #@1f4
    .line 231
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@1f5
    .line 232
    move-object/from16 v0, p0

    #@1f7
    iget-object v6, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@1f9
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    #@1fc
    .line 231
    throw v5

    #@1fd
    .line 246
    :cond_9
    return-object v10

    #@1fe
    .line 250
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "retval":Z
    :cond_a
    sget-object v5, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    #@200
    move-object/from16 v0, p4

    #@202
    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@205
    move-result v5

    #@206
    if-nez v5, :cond_11

    #@208
    .line 251
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@20b
    move-result-object v15

    #@20c
    .line 253
    .restart local v15    # "key":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    #@20e
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@210
    const-wide/16 v8, 0x2710

    #@212
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@214
    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@217
    move-result v20

    #@218
    .line 254
    .restart local v20    # "retval":Z
    if-nez v20, :cond_b

    #@21a
    .line 255
    new-instance v5, Ljava/io/IOException;

    #@21c
    const-string/jumbo v6, "Timeout acquiring IO SEM"

    #@21f
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@222
    throw v5
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    #@223
    .line 256
    .end local v20    # "retval":Z
    :catch_3
    move-exception v14

    #@224
    .line 257
    .restart local v14    # "ex":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    #@226
    const-string/jumbo v6, "exception in acquiring sem"

    #@229
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22c
    throw v5

    #@22d
    .line 259
    .end local v14    # "ex":Ljava/lang/InterruptedException;
    .restart local v20    # "retval":Z
    :cond_b
    move-object/from16 v0, p0

    #@22f
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    #@232
    move-result-object v10

    #@233
    .line 262
    :goto_4
    move/from16 v0, v19

    #@235
    move/from16 v1, v17

    #@237
    if-ge v0, v1, :cond_d

    #@239
    .line 263
    if-nez v10, :cond_e

    #@23b
    .line 264
    :try_start_6
    move-object/from16 v0, p0

    #@23d
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23f
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@242
    move-result v5

    #@243
    if-eqz v5, :cond_c

    #@245
    .line 265
    move-object/from16 v0, p0

    #@247
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@249
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@24c
    move-result-object v5

    #@24d
    new-instance v6, Ljava/lang/StringBuilder;

    #@24f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@252
    const-string/jumbo v8, "inaddr = "

    #@255
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v6

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v6

    #@25f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@262
    move-result-object v6

    #@263
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@266
    .line 266
    move-object/from16 v0, p0

    #@268
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@26a
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@26d
    move-result-object v5

    #@26e
    new-instance v6, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v8, "port = "

    #@276
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v6

    #@27a
    move/from16 v0, p3

    #@27c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v6

    #@280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@283
    move-result-object v6

    #@284
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@287
    .line 269
    :cond_c
    move-object/from16 v0, p0

    #@289
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@28b
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@28e
    move-result-object v5

    #@28f
    move-object/from16 v0, p2

    #@291
    move/from16 v1, p3

    #@293
    move-object/from16 v2, p1

    #@295
    invoke-interface {v5, v0, v1, v2}, Lgov/nist/core/net/NetworkLayer;->createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;

    #@298
    move-result-object v10

    #@299
    .line 271
    .local v10, "clientSock":Ljava/net/Socket;
    move-object v0, v10

    #@29a
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@29c
    move-object/from16 v21, v0

    #@29e
    .line 272
    .local v21, "sslsock":Ljavax/net/ssl/SSLSocket;
    new-instance v16, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@2a0
    .line 273
    move-object/from16 v0, p7

    #@2a2
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@2a4
    move-object v5, v0

    #@2a5
    .line 272
    move-object/from16 v0, v16

    #@2a7
    invoke-direct {v0, v5}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    #@2aa
    .line 274
    .local v16, "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    check-cast p7, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@2ac
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-object/from16 v0, p7

    #@2ae
    move-object/from16 v1, v16

    #@2b0
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    #@2b3
    .line 276
    move-object/from16 v0, v21

    #@2b5
    move-object/from16 v1, v16

    #@2b7
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    #@2ba
    .line 277
    move-object/from16 v0, p0

    #@2bc
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2be
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledProtocols()[Ljava/lang/String;

    #@2c1
    move-result-object v5

    #@2c2
    move-object/from16 v0, v21

    #@2c4
    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    #@2c7
    .line 278
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@2ca
    .line 280
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@2cd
    move-result-object v18

    #@2ce
    .line 281
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@2d0
    move-object/from16 v1, v18

    #@2d2
    move-object/from16 v2, p5

    #@2d4
    invoke-direct {v0, v1, v2, v7}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    #@2d7
    .line 282
    move-object/from16 v0, p0

    #@2d9
    invoke-virtual {v0, v15, v10}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2dc
    .line 305
    .end local v10    # "clientSock":Ljava/net/Socket;
    .end local v16    # "listner":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    .end local v21    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    #@2de
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@2e0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    #@2e3
    .line 307
    if-nez v10, :cond_10

    #@2e5
    .line 308
    new-instance v5, Ljava/io/IOException;

    #@2e7
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2ec
    const-string/jumbo v8, "Could not connect to "

    #@2ef
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v6

    #@2f3
    move-object/from16 v0, p2

    #@2f5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v6

    #@2f9
    const-string/jumbo v8, ":"

    #@2fc
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v6

    #@300
    move/from16 v0, p3

    #@302
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@305
    move-result-object v6

    #@306
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@309
    move-result-object v6

    #@30a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30d
    throw v5

    #@30e
    .line 286
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_e
    :try_start_7
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@311
    move-result-object v18

    #@312
    .line 287
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@314
    move-object/from16 v1, v18

    #@316
    move-object/from16 v2, p5

    #@318
    invoke-direct {v0, v1, v2, v7}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@31b
    goto :goto_5

    #@31c
    .line 289
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v13

    #@31d
    .line 290
    .restart local v13    # "ex":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    #@31f
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@321
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@324
    move-result v5

    #@325
    if-eqz v5, :cond_f

    #@327
    .line 291
    move-object/from16 v0, p0

    #@329
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@32b
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@32e
    move-result-object v5

    #@32f
    invoke-interface {v5, v13}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@332
    .line 294
    :cond_f
    move-object/from16 v0, p0

    #@334
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@337
    .line 296
    :try_start_9
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@33a
    .line 299
    :goto_6
    const/4 v10, 0x0

    #@33b
    .line 300
    .local v10, "clientSock":Ljava/net/Socket;
    add-int/lit8 v19, v19, 0x1

    #@33d
    goto/16 :goto_4

    #@33f
    .line 297
    .end local v10    # "clientSock":Ljava/net/Socket;
    :catch_5
    move-exception v12

    #@340
    .restart local v12    # "e":Ljava/lang/Exception;
    goto :goto_6

    #@341
    .line 304
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "ex":Ljava/io/IOException;
    .end local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catchall_1
    move-exception v5

    #@342
    .line 305
    move-object/from16 v0, p0

    #@344
    iget-object v6, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    #@346
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    #@349
    .line 304
    throw v5

    #@34a
    .line 311
    :cond_10
    return-object v10

    #@34b
    .line 315
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "retval":Z
    .restart local p7    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_11
    move-object/from16 v0, p0

    #@34d
    iget-object v5, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@34f
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    #@352
    move-result-object v5

    #@353
    invoke-interface {v5}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    #@356
    move-result-object v11

    #@357
    .line 316
    .local v11, "datagramSock":Ljava/net/DatagramSocket;
    move-object/from16 v0, p2

    #@359
    move/from16 v1, p3

    #@35b
    invoke-virtual {v11, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    #@35e
    .line 317
    new-instance v4, Ljava/net/DatagramPacket;

    #@360
    const/4 v6, 0x0

    #@361
    move-object/from16 v5, p5

    #@363
    move-object/from16 v8, p2

    #@365
    move/from16 v9, p3

    #@367
    invoke-direct/range {v4 .. v9}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    #@36a
    .line 319
    .local v4, "dgPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v11, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@36d
    .line 320
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    #@370
    .line 321
    const/4 v5, 0x0

    #@371
    return-object v5
.end method
