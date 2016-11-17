.class public final Lsun/security/ssl/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final clauth_none:B = 0x0t

.field static final clauth_requested:B = 0x1t

.field static final clauth_required:B = 0x2t

.field private static final cs_CLOSED:I = 0x6

.field private static final cs_DATA:I = 0x2

.field private static final cs_ERROR:I = 0x4

.field private static final cs_HANDSHAKE:I = 0x1

.field private static final cs_RENEGOTIATE:I = 0x3

.field private static final cs_START:I

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private acc:Ljava/security/AccessControlContext;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private clientVerifyData:[B

.field private closeReason:Ljavax/net/ssl/SSLException;

.field private connectionState:I

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private expectingFinished:Z

.field private volatile handshakeSession:Lsun/security/ssl/SSLSessionImpl;

.field private handshaker:Lsun/security/ssl/Handshaker;

.field private identificationProtocol:Ljava/lang/String;

.field private inboundDone:Z

.field inputRecord:Lsun/security/ssl/EngineInputRecord;

.field private isFirstAppOutputRecord:Z

.field outputRecord:Lsun/security/ssl/EngineOutputRecord;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private readCipher:Lsun/security/ssl/CipherBox;

.field private readMAC:Lsun/security/ssl/MAC;

.field private recvCN:Z

.field private roleIsServer:Z

.field private secureRenegotiation:Z

.field private serverModeSet:Z

.field private serverVerifyData:[B

.field private sess:Lsun/security/ssl/SSLSessionImpl;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private unwrapLock:Ljava/lang/Object;

.field private wrapLock:Ljava/lang/Object;

.field private writeCipher:Lsun/security/ssl/CipherBox;

.field writeLock:Ljava/lang/Object;

.field private writeMAC:Lsun/security/ssl/MAC;

.field writer:Lsun/security/ssl/EngineWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/SSLEngineImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/security/ssl/SSLEngineImpl;->-assertionsDisabled:Z

    #@b
    .line 322
    const-string/jumbo v0, "ssl"

    #@e
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@14
    .line 113
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 334
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    #@6
    .line 183
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@8
    .line 245
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    #@a
    .line 254
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 257
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 260
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    #@10
    .line 275
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@12
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@14
    .line 317
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@16
    .line 335
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    #@19
    .line 333
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 342
    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    #@6
    .line 183
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@8
    .line 245
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    #@a
    .line 254
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 257
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 260
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    #@10
    .line 275
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@12
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@14
    .line 317
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@16
    .line 343
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    #@19
    .line 341
    return-void
.end method

.method private changeReadCiphers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@2
    const/4 v3, 0x1

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 568
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@7
    const/4 v3, 0x3

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 569
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@c
    .line 570
    const-string/jumbo v3, "State error, change cipher specs"

    #@f
    .line 569
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 575
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@15
    .line 578
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@17
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@1d
    .line 579
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1f
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 594
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@28
    .line 566
    return-void

    #@29
    .line 580
    :catch_0
    move-exception v0

    #@2a
    .line 582
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@2c
    .line 583
    const-string/jumbo v3, "Algorithm missing:  "

    #@2f
    .line 582
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Ljavax/net/ssl/SSLException;

    #@38
    throw v2
.end method

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)Z
    .locals 4
    .param p1, "mac"    # Lsun/security/ssl/MAC;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1359
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@4
    const/4 v1, 0x4

    #@5
    if-ge v0, v1, :cond_0

    #@7
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@9
    if-ne p1, v0, :cond_1

    #@b
    .line 1360
    :cond_0
    return v2

    #@c
    .line 1367
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1373
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@14
    if-eqz v0, :cond_2

    #@16
    const-string/jumbo v0, "ssl"

    #@19
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 1374
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 1375
    const-string/jumbo v2, ", sequence number extremely close to overflow "

    #@31
    .line 1374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 1376
    const-string/jumbo v2, "(2^64-1 packets). Closing connection."

    #@38
    .line 1374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 1379
    :cond_2
    const-string/jumbo v0, "sequence number overflow"

    #@46
    const/16 v1, 0x28

    #@48
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    #@4b
    .line 1381
    return v3

    #@4c
    .line 1390
    :cond_3
    const/16 v0, 0x16

    #@4e
    if-eq p2, v0, :cond_5

    #@50
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_5

    #@56
    .line 1391
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@58
    if-eqz v0, :cond_4

    #@5a
    const-string/jumbo v0, "ssl"

    #@5d
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_4

    #@63
    .line 1392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    const-string/jumbo v2, ", request renegotiation "

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 1393
    const-string/jumbo v2, "to avoid sequence number overflow"

    #@7c
    .line 1392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 1396
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->beginHandshake()V

    #@8a
    .line 1397
    return v3

    #@8b
    .line 1400
    :cond_5
    return v2
.end method

.method private declared-synchronized checkTaskThrown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 512
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 513
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@7
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->checkThrown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 511
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method private closeInboundInternal()V
    .locals 3

    #@0
    .prologue
    .line 1476
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ssl"

    #@7
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1477
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ", closeInboundInternal()"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1483
    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 1484
    return-void

    #@2f
    .line 1487
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V

    #@32
    .line 1488
    const/4 v0, 0x1

    #@33
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@35
    .line 1491
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@37
    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    #@3a
    .line 1493
    const/4 v0, 0x6

    #@3b
    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@3d
    .line 1474
    return-void
.end method

.method private closeOutboundInternal()V
    .locals 3

    #@0
    .prologue
    .line 1409
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ssl"

    #@7
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ", closeOutboundInternal()"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1416
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@2c
    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 1417
    return-void

    #@33
    .line 1420
    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@35
    sparse-switch v0, :sswitch_data_0

    #@38
    .line 1441
    const/4 v0, 0x0

    #@39
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    #@3c
    .line 1442
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@3e
    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    #@41
    .line 1447
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@43
    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    #@46
    .line 1449
    const/4 v0, 0x6

    #@47
    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@49
    .line 1407
    return-void

    #@4a
    .line 1426
    :sswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@4c
    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    #@4f
    .line 1427
    const/4 v0, 0x1

    #@50
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@52
    goto :goto_0

    #@53
    .line 1420
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized getConnectionState()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 526
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "hss"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@0
    .prologue
    .line 480
    if-eqz p1, :cond_0

    #@2
    .line 481
    return-object p1

    #@3
    .line 484
    :cond_0
    monitor-enter p0

    #@4
    .line 485
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 486
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .line 487
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@12
    if-eqz v0, :cond_3

    #@14
    .line 488
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@16
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 489
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    return-object v0

    #@20
    .line 491
    :cond_2
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return-object v0

    #@24
    .line 493
    :cond_3
    :try_start_3
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@26
    const/4 v1, 0x6

    #@27
    if-ne v0, v1, :cond_4

    #@29
    .line 502
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_4

    #@2f
    .line 503
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    monitor-exit p0

    #@32
    return-object v0

    #@33
    .line 507
    :cond_4
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@35
    monitor-exit p0

    #@36
    return-object v0

    #@37
    .line 484
    :catchall_0
    move-exception v0

    #@38
    monitor-exit p0

    #@39
    throw v0
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;)V
    .locals 4
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 350
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "ssl"

    #@9
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v1, "Using SSLEngineImpl."

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17
    .line 354
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@19
    .line 355
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    #@1b
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@1d
    .line 356
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@1f
    .line 364
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@22
    .line 365
    iput v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@24
    .line 372
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@26
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@28
    .line 373
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@2a
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    #@2c
    .line 374
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@2e
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@30
    .line 375
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@32
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@34
    .line 378
    iput-boolean v2, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@36
    .line 379
    new-array v0, v2, [B

    #@38
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    #@3a
    .line 380
    new-array v0, v2, [B

    #@3c
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    #@3e
    .line 383
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@40
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@42
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    #@45
    move-result-object v0

    #@46
    .line 382
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@48
    .line 385
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4a
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@4c
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@4f
    move-result-object v0

    #@50
    .line 384
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@52
    .line 387
    new-instance v0, Ljava/lang/Object;

    #@54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@57
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    #@59
    .line 388
    new-instance v0, Ljava/lang/Object;

    #@5b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5e
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    #@60
    .line 389
    new-instance v0, Ljava/lang/Object;

    #@62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@65
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    #@67
    .line 397
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    #@6d
    .line 406
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    #@6f
    const/16 v1, 0x17

    #@71
    invoke-direct {v0, v1, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    #@74
    .line 405
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    #@76
    .line 407
    new-instance v0, Lsun/security/ssl/EngineInputRecord;

    #@78
    invoke-direct {v0, p0}, Lsun/security/ssl/EngineInputRecord;-><init>(Lsun/security/ssl/SSLEngineImpl;)V

    #@7b
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@7d
    .line 408
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@7f
    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    #@82
    .line 410
    new-instance v0, Lsun/security/ssl/EngineWriter;

    #@84
    invoke-direct {v0}, Lsun/security/ssl/EngineWriter;-><init>()V

    #@87
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@89
    .line 349
    return-void
.end method

.method private initHandshaker()V
    .locals 10

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 430
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Internal error"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 444
    :pswitch_0
    return-void

    #@11
    .line 455
    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@13
    if-nez v0, :cond_0

    #@15
    .line 456
    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@17
    .line 460
    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 461
    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    #@1d
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1f
    .line 462
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@21
    iget-byte v4, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    #@23
    .line 463
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@25
    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@27
    if-ne v7, v6, :cond_1

    #@29
    .line 464
    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@2b
    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    #@2d
    iget-object v9, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    #@2f
    move-object v1, p0

    #@30
    .line 461
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@33
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@35
    .line 471
    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@37
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@39
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    #@3c
    .line 472
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@3e
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    #@40
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    #@43
    .line 429
    return-void

    #@44
    .line 458
    :cond_0
    const/4 v0, 0x3

    #@45
    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@47
    goto :goto_0

    #@48
    :cond_1
    move v6, v1

    #@49
    .line 463
    goto :goto_1

    #@4a
    .line 466
    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    #@4c
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4e
    .line 467
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@50
    .line 468
    iget-object v4, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@52
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@54
    if-ne v5, v6, :cond_3

    #@56
    move v5, v6

    #@57
    .line 469
    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@59
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    #@5b
    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    #@5d
    move-object v1, p0

    #@5e
    .line 466
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@61
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@63
    goto :goto_2

    #@64
    :cond_3
    move v5, v1

    #@65
    .line 468
    goto :goto_3

    #@66
    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized kickstartHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 655
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 692
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@8
    const-string/jumbo v1, "SSLEngine is closing/closed"

    #@b
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    .line 658
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    #@14
    if-nez v0, :cond_0

    #@16
    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    .line 660
    const-string/jumbo v1, "Client/Server mode not yet set."

    #@1b
    .line 659
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 662
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    #@22
    .line 702
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@24
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 704
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@2c
    const/4 v1, 0x3

    #@2d
    if-ne v0, v1, :cond_5

    #@2f
    .line 706
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@31
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@33
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@36
    .line 711
    :goto_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@38
    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    #@3a
    if-eqz v0, :cond_6

    #@3c
    .line 713
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@3e
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_1
    :goto_2
    monitor-exit p0

    #@42
    .line 654
    return-void

    #@43
    .line 670
    :pswitch_2
    :try_start_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@45
    if-nez v0, :cond_2

    #@47
    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    #@49
    if-eqz v0, :cond_4

    #@4b
    .line 675
    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@4d
    if-nez v0, :cond_3

    #@4f
    .line 676
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@51
    if-eqz v0, :cond_3

    #@53
    const-string/jumbo v0, "handshake"

    #@56
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_3

    #@5c
    .line 677
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5e
    .line 678
    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    #@61
    .line 677
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@64
    .line 683
    :cond_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    #@67
    goto :goto_0

    #@68
    .line 671
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@6a
    .line 672
    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    #@6d
    .line 671
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    :pswitch_3
    monitor-exit p0

    #@72
    .line 688
    return-void

    #@73
    .line 708
    :cond_5
    :try_start_3
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@75
    const/4 v1, 0x0

    #@76
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@79
    goto :goto_1

    #@7a
    .line 715
    :cond_6
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@7c
    const/4 v1, 0x1

    #@7d
    if-eq v0, v1, :cond_1

    #@7f
    .line 719
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@81
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    #@84
    .line 723
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@86
    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@88
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    goto :goto_2

    #@8c
    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readNetRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    .locals 10
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 784
    const/4 v5, 0x0

    #@3
    .line 785
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const/4 v3, 0x0

    #@4
    .line 790
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    #@7
    .line 795
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 796
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@f
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@11
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@14
    move-result-object v8

    #@15
    invoke-direct {v6, v7, v8, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@18
    return-object v6

    #@19
    .line 803
    :cond_0
    monitor-enter p0

    #@1a
    .line 804
    :try_start_0
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@1c
    const/4 v7, 0x1

    #@1d
    if-eq v6, v7, :cond_1

    #@1f
    .line 805
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@21
    if-nez v6, :cond_2

    #@23
    .line 806
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    #@26
    .line 812
    const/4 v6, 0x0

    #@27
    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2a
    move-result-object v3

    #@2b
    .line 814
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2d
    if-ne v3, v6, :cond_2

    #@2f
    .line 815
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@31
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@33
    const/4 v8, 0x0

    #@34
    const/4 v9, 0x0

    #@35
    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit p0

    #@39
    return-object v6

    #@3a
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    monitor-exit p0

    #@3b
    .line 826
    if-nez v3, :cond_3

    #@3d
    .line 827
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@40
    move-result-object v3

    #@41
    .line 836
    :cond_3
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@43
    if-ne v3, v6, :cond_4

    #@45
    .line 837
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@47
    .line 838
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@49
    .line 837
    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@4c
    return-object v6

    #@4d
    .line 803
    :catchall_0
    move-exception v6

    #@4e
    monitor-exit p0

    #@4f
    throw v6

    #@50
    .line 845
    :cond_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@52
    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@54
    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    #@57
    move-result v4

    #@58
    .line 848
    .local v4, "packetLen":I
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@5a
    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    #@5d
    move-result v6

    #@5e
    if-le v4, v6, :cond_6

    #@60
    .line 849
    const v6, 0x8219

    #@63
    if-le v4, v6, :cond_5

    #@65
    .line 850
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    #@67
    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "Input SSL/TLS record too big: max = 33305 len = "

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    .line 850
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v6

    #@7f
    .line 857
    :cond_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@81
    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->expandBufferSizes()V

    #@84
    .line 867
    :cond_6
    add-int/lit8 v6, v4, -0x5

    #@86
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    #@89
    move-result v7

    #@8a
    if-le v6, v7, :cond_7

    #@8c
    .line 868
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@8e
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@90
    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@93
    return-object v6

    #@94
    .line 872
    :cond_7
    const/4 v6, -0x1

    #@95
    if-eq v4, v6, :cond_8

    #@97
    iget-object v6, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@99
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    #@9c
    move-result v6

    #@9d
    if-ge v6, v4, :cond_9

    #@9f
    .line 873
    :cond_8
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@a1
    .line 874
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@a3
    .line 873
    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@a6
    return-object v6

    #@a7
    .line 884
    :cond_9
    :try_start_1
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@aa
    move-result-object v3

    #@ab
    .line 903
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    #@ae
    move-result v6

    #@af
    if-eqz v6, :cond_a

    #@b1
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@b3
    .line 904
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@b6
    move-result-object v3

    #@b7
    .line 906
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    #@b9
    .line 907
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    #@bc
    move-result v7

    #@bd
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    #@c0
    move-result v8

    #@c1
    .line 906
    invoke-direct {v6, v5, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@c4
    return-object v6

    #@c5
    .line 887
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :catch_0
    move-exception v0

    #@c6
    .line 888
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@c8
    const-string/jumbo v6, "readRecord"

    #@cb
    invoke-direct {v2, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@ce
    .line 889
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d1
    .line 890
    throw v2

    #@d2
    .line 885
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v1

    #@d3
    .line 886
    .local v1, "e":Ljavax/net/ssl/SSLException;
    throw v1

    #@d4
    .line 903
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_a
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@d6
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    goto :goto_0
.end method

.method private readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 13
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x2

    #@2
    const/4 v10, 0x3

    #@3
    const/4 v9, 0x1

    #@4
    .line 923
    const/4 v4, 0x0

    #@5
    .line 930
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v5, 0x0

    #@6
    .line 931
    .local v5, "readBB":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    #@7
    .line 933
    .local v1, "decryptedBB":Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->getConnectionState()I

    #@a
    move-result v6

    #@b
    if-eq v6, v12, :cond_2

    #@d
    .line 941
    :try_start_0
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@f
    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    .line 953
    .end local v5    # "readBB":Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@17
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    #@19
    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@1b
    invoke-virtual {v6, v7, v8, v5}, Lsun/security/ssl/EngineInputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    #@1e
    move-result-object v1

    #@1f
    .line 972
    .end local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-enter p0

    #@20
    .line 973
    :try_start_2
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@22
    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@25
    move-result v6

    #@26
    packed-switch v6, :pswitch_data_0

    #@29
    .line 1089
    sget-object v6, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@2b
    if-eqz v6, :cond_0

    #@2d
    const-string/jumbo v6, "ssl"

    #@30
    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_0

    #@36
    .line 1090
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    new-instance v7, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 1091
    const-string/jumbo v8, ", Received record type: "

    #@48
    .line 1090
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    .line 1092
    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@4e
    invoke-virtual {v8}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@51
    move-result v8

    #@52
    .line 1090
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 1109
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    :goto_2
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@5f
    if-ge v6, v12, :cond_1

    #@61
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_e

    #@67
    :cond_1
    :goto_3
    monitor-exit p0

    #@68
    .line 1119
    :cond_2
    return-object v4

    #@69
    .line 942
    .restart local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v5    # "readBB":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@6a
    .line 943
    .local v2, "e":Ljava/io/IOException;
    const/16 v6, 0xa

    #@6c
    invoke-virtual {p0, v6, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/Throwable;)V

    #@6f
    goto :goto_0

    #@70
    .line 954
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "readBB":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    #@71
    .line 955
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@73
    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@76
    move-result v6

    #@77
    .line 956
    const/16 v7, 0x16

    #@79
    .line 955
    if-ne v6, v7, :cond_3

    #@7b
    .line 957
    const/16 v0, 0x28

    #@7d
    .line 959
    .local v0, "alertType":B
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {p0, v0, v6, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@84
    goto :goto_1

    #@85
    .line 958
    .end local v0    # "alertType":B
    :cond_3
    const/16 v0, 0x14

    #@87
    .restart local v0    # "alertType":B
    goto :goto_4

    #@88
    .line 986
    .end local v0    # "alertType":B
    .end local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :pswitch_0
    :try_start_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    #@8b
    .line 987
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8d
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->activated()Z

    #@90
    move-result v6

    #@91
    if-nez v6, :cond_4

    #@93
    .line 989
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@95
    if-ne v6, v10, :cond_5

    #@97
    .line 991
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@99
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@9b
    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@9e
    .line 1004
    :cond_4
    :goto_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@a0
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@a2
    iget-boolean v8, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    #@a4
    invoke-virtual {v6, v7, v8}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    #@a7
    .line 1005
    const/4 v6, 0x0

    #@a8
    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    #@aa
    .line 1007
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@ac
    iget-boolean v6, v6, Lsun/security/ssl/Handshaker;->invalidated:Z

    #@ae
    if-eqz v6, :cond_6

    #@b0
    .line 1008
    const/4 v6, 0x0

    #@b1
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@b3
    .line 1010
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@b5
    if-ne v6, v10, :cond_0

    #@b7
    .line 1011
    const/4 v6, 0x2

    #@b8
    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ba
    goto :goto_2

    #@bb
    .line 972
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_0
    move-exception v6

    #@bc
    monitor-exit p0

    #@bd
    throw v6

    #@be
    .line 993
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_5
    :try_start_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c0
    const/4 v7, 0x0

    #@c1
    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@c4
    goto :goto_5

    #@c5
    .line 1013
    :cond_6
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c7
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isDone()Z

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_8

    #@cd
    .line 1016
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@cf
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    #@d2
    move-result v6

    #@d3
    .line 1015
    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    #@d5
    .line 1017
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@d7
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    #@da
    move-result-object v6

    #@db
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    #@dd
    .line 1018
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@df
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    #@e2
    move-result-object v6

    #@e3
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    #@e5
    .line 1020
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@e7
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    #@ea
    move-result-object v6

    #@eb
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@ed
    .line 1021
    const/4 v6, 0x0

    #@ee
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@f0
    .line 1022
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@f2
    invoke-virtual {v6}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    #@f5
    move-result v6

    #@f6
    if-nez v6, :cond_7

    #@f8
    .line 1023
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@fa
    .line 1025
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_7
    const/4 v6, 0x0

    #@fb
    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@fd
    .line 1026
    const/4 v6, 0x2

    #@fe
    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@100
    goto/16 :goto_2

    #@102
    .line 1030
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_8
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@104
    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    #@107
    move-result v6

    #@108
    if-eqz v6, :cond_0

    #@10a
    .line 1031
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@10c
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto/16 :goto_2

    #@10e
    .line 1037
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_1
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@110
    if-eq v6, v11, :cond_9

    #@112
    .line 1038
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@114
    if-eq v6, v10, :cond_9

    #@116
    .line 1039
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@118
    const/4 v7, 0x6

    #@119
    if-eq v6, v7, :cond_9

    #@11b
    .line 1040
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    #@11d
    .line 1041
    new-instance v7, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v8, "Data received in non-data state: "

    #@125
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v7

    #@129
    .line 1042
    iget v8, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@12b
    .line 1041
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v7

    #@12f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v7

    #@133
    .line 1040
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@136
    throw v6

    #@137
    .line 1045
    :cond_9
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    #@139
    if-eqz v6, :cond_a

    #@13b
    .line 1046
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    #@13d
    .line 1047
    const-string/jumbo v7, "Expecting finished message, received data"

    #@140
    .line 1046
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@143
    throw v6

    #@144
    .line 1054
    :cond_a
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@146
    if-nez v6, :cond_0

    #@148
    .line 1055
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {p1, v6}, Lsun/security/ssl/EngineArgs;->scatter(Ljava/nio/ByteBuffer;)V

    #@14f
    goto/16 :goto_2

    #@151
    .line 1060
    :pswitch_2
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->recvAlert()V

    #@154
    goto/16 :goto_2

    #@156
    .line 1064
    :pswitch_3
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@158
    if-eq v6, v9, :cond_d

    #@15a
    .line 1065
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@15c
    if-eq v6, v10, :cond_d

    #@15e
    .line 1069
    :cond_b
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v7, "illegal change cipher spec msg, state = "

    #@166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v6

    #@16a
    .line 1070
    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@16c
    .line 1069
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v6

    #@170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v6

    #@174
    .line 1068
    const/16 v7, 0xa

    #@176
    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    #@179
    .line 1080
    :cond_c
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->changeReadCiphers()V

    #@17c
    .line 1082
    const/4 v6, 0x1

    #@17d
    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    #@17f
    goto/16 :goto_2

    #@181
    .line 1066
    :cond_d
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@183
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    #@186
    move-result v6

    #@187
    if-ne v6, v9, :cond_b

    #@189
    .line 1067
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@18b
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    #@18e
    move-result v6

    #@18f
    if-eq v6, v9, :cond_c

    #@191
    goto :goto_6

    #@192
    .line 1110
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_e
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@194
    if-ne v4, v6, :cond_1

    #@196
    .line 1111
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    #@198
    .line 1112
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@19a
    invoke-virtual {v7}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    #@19d
    move-result v7

    #@19e
    .line 1111
    invoke-direct {p0, v6, v7}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    #@1a1
    move-result v6

    #@1a2
    if-eqz v6, :cond_1

    #@1a4
    .line 1113
    const/4 v6, 0x0

    #@1a5
    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1a8
    move-result-object v4

    #@1a9
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto/16 :goto_3

    #@1ab
    .line 973
    nop

    #@1ac
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recvAlert()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x1

    #@3
    .line 1707
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    #@8
    move-result v3

    #@9
    int-to-byte v1, v3

    #@a
    .line 1708
    .local v1, "level":B
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    #@c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    #@f
    move-result v3

    #@10
    int-to-byte v0, v3

    #@11
    .line 1709
    .local v0, "description":B
    const/4 v3, -0x1

    #@12
    if-ne v0, v3, :cond_0

    #@14
    .line 1710
    const-string/jumbo v3, "Short alert message"

    #@17
    const/16 v4, 0x2f

    #@19
    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    #@1c
    .line 1713
    :cond_0
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@1e
    if-eqz v3, :cond_2

    #@20
    const-string/jumbo v3, "record"

    #@23
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 1714
    const-string/jumbo v3, "handshake"

    #@2c
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    .line 1713
    if-eqz v3, :cond_2

    #@32
    .line 1715
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    monitor-enter v4

    #@35
    .line 1716
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@37
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3e
    .line 1717
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, ", RECV "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, " ALERT:  "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@60
    .line 1718
    const/4 v3, 0x2

    #@61
    if-ne v1, v3, :cond_4

    #@63
    .line 1719
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@65
    const-string/jumbo v5, "fatal, "

    #@68
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6b
    .line 1725
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    monitor-exit v4

    #@75
    .line 1729
    :cond_2
    if-ne v1, v7, :cond_8

    #@77
    .line 1730
    if-nez v0, :cond_7

    #@79
    .line 1731
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@7b
    if-ne v3, v7, :cond_6

    #@7d
    .line 1733
    const-string/jumbo v3, "Received close_notify during handshake"

    #@80
    .line 1732
    invoke-virtual {p0, v8, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    #@83
    .line 1706
    :cond_3
    :goto_1
    return-void

    #@84
    .line 1720
    :cond_4
    if-ne v1, v7, :cond_5

    #@86
    .line 1721
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@88
    const-string/jumbo v5, "warning, "

    #@8b
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    .line 1715
    :catchall_0
    move-exception v3

    #@90
    monitor-exit v4

    #@91
    throw v3

    #@92
    .line 1723
    :cond_5
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@94
    new-instance v5, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v6, "<level "

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    and-int/lit16 v6, v1, 0xff

    #@a2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v5

    #@a6
    const-string/jumbo v6, ">, "

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b4
    goto :goto_0

    #@b5
    .line 1735
    :cond_6
    iput-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    #@b7
    .line 1736
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V

    #@ba
    goto :goto_1

    #@bb
    .line 1746
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@bd
    if-eqz v3, :cond_3

    #@bf
    .line 1747
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c1
    invoke-virtual {v3, v0}, Lsun/security/ssl/Handshaker;->handshakeAlert(B)V

    #@c4
    goto :goto_1

    #@c5
    .line 1751
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v4, "Received fatal alert: "

    #@cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    .line 1752
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    .line 1751
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    .line 1753
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@df
    if-nez v3, :cond_9

    #@e1
    .line 1754
    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    #@e4
    move-result-object v3

    #@e5
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@e7
    .line 1756
    :cond_9
    invoke-virtual {p0, v8, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    #@ea
    goto :goto_1
.end method

.method private sendAlert(BB)V
    .locals 8
    .param p1, "level"    # B
    .param p2, "description"    # B

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1766
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@3
    const/4 v4, 0x6

    #@4
    if-lt v3, v4, :cond_0

    #@6
    .line 1767
    return-void

    #@7
    .line 1772
    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@9
    if-ne v3, v7, :cond_1

    #@b
    .line 1773
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@d
    if-eqz v3, :cond_4

    #@f
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@11
    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_4

    #@17
    .line 1777
    :cond_1
    new-instance v1, Lsun/security/ssl/EngineOutputRecord;

    #@19
    const/16 v3, 0x15

    #@1b
    invoke-direct {v1, v3, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    #@1e
    .line 1778
    .local v1, "r":Lsun/security/ssl/EngineOutputRecord;
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@20
    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@23
    .line 1780
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@25
    if-eqz v3, :cond_5

    #@27
    const-string/jumbo v3, "ssl"

    #@2a
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    .line 1781
    .local v2, "useDebug":Z
    :goto_0
    if-eqz v2, :cond_2

    #@30
    .line 1782
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    monitor-enter v4

    #@33
    .line 1783
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3c
    .line 1784
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, ", SEND "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v6, " ALERT:  "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5e
    .line 1785
    const/4 v3, 0x2

    #@5f
    if-ne p1, v3, :cond_6

    #@61
    .line 1786
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    const-string/jumbo v5, "fatal, "

    #@66
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@69
    .line 1792
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6b
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "description = "

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    .line 1793
    invoke-static {p2}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 1792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    monitor-exit v4

    #@87
    .line 1797
    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8a
    .line 1798
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8d
    .line 1800
    :try_start_1
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@90
    .line 1764
    :cond_3
    :goto_2
    return-void

    #@91
    .line 1774
    .end local v1    # "r":Lsun/security/ssl/EngineOutputRecord;
    .end local v2    # "useDebug":Z
    :cond_4
    return-void

    #@92
    .line 1780
    .restart local v1    # "r":Lsun/security/ssl/EngineOutputRecord;
    :cond_5
    const/4 v2, 0x0

    #@93
    goto :goto_0

    #@94
    .line 1787
    .restart local v2    # "useDebug":Z
    :cond_6
    if-ne p1, v7, :cond_7

    #@96
    .line 1788
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@98
    const-string/jumbo v5, "warning, "

    #@9b
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    goto :goto_1

    #@9f
    .line 1782
    :catchall_0
    move-exception v3

    #@a0
    monitor-exit v4

    #@a1
    throw v3

    #@a2
    .line 1790
    :cond_7
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a4
    new-instance v5, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v6, "<level = "

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    and-int/lit16 v6, p1, 0xff

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    const-string/jumbo v6, ">, "

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c4
    goto :goto_1

    #@c5
    .line 1801
    :catch_0
    move-exception v0

    #@c6
    .line 1802
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    #@c8
    .line 1803
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ca
    new-instance v4, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    .line 1804
    const-string/jumbo v5, ", Exception sending alert: "

    #@da
    .line 1803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v4

    #@e6
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e9
    goto :goto_2
.end method

.method private declared-synchronized setConnectionState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 530
    :try_start_0
    iput p1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 529
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2065
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private writeAppRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    .locals 9
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1171
    const/4 v4, 0x0

    #@3
    .line 1172
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const/4 v3, 0x0

    #@4
    .line 1177
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    #@7
    .line 1182
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@9
    invoke-virtual {v5}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 1183
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@11
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@13
    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@16
    move-result-object v7

    #@17
    invoke-direct {v5, v6, v7, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@1a
    return-object v5

    #@1b
    .line 1190
    :cond_0
    monitor-enter p0

    #@1c
    .line 1191
    :try_start_0
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@1e
    const/4 v6, 0x1

    #@1f
    if-eq v5, v6, :cond_1

    #@21
    .line 1192
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@23
    if-nez v5, :cond_2

    #@25
    .line 1193
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    #@28
    .line 1199
    const/4 v5, 0x0

    #@29
    invoke-direct {p0, v5}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2c
    move-result-object v3

    #@2d
    .line 1201
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2f
    if-ne v3, v5, :cond_2

    #@31
    .line 1202
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@33
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@35
    const/4 v7, 0x0

    #@36
    const/4 v8, 0x0

    #@37
    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit p0

    #@3b
    return-object v5

    #@3c
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    monitor-exit p0

    #@3d
    .line 1213
    if-nez v3, :cond_3

    #@3f
    .line 1214
    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@42
    move-result-object v3

    #@43
    .line 1223
    :cond_3
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@45
    if-ne v3, v5, :cond_4

    #@47
    .line 1224
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@49
    .line 1225
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@4b
    .line 1224
    invoke-direct {v5, v6, v3, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@4e
    return-object v5

    #@4f
    .line 1190
    :catchall_0
    move-exception v5

    #@50
    monitor-exit p0

    #@51
    throw v5

    #@52
    .line 1233
    :cond_4
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    #@54
    monitor-enter v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    .line 1234
    :try_start_2
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    #@57
    invoke-direct {p0, v5, p1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5a
    move-result-object v3

    #@5b
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@5c
    .line 1250
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_5

    #@62
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@64
    .line 1251
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@67
    move-result-object v3

    #@68
    .line 1253
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@6a
    .line 1254
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    #@6d
    move-result v6

    #@6e
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    #@71
    move-result v7

    #@72
    .line 1253
    invoke-direct {v5, v4, v3, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@75
    return-object v5

    #@76
    .line 1233
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :catchall_1
    move-exception v5

    #@77
    :try_start_4
    monitor-exit v6

    #@78
    throw v5
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@79
    .line 1236
    :catch_0
    move-exception v1

    #@7a
    .line 1237
    .local v1, "e":Ljavax/net/ssl/SSLException;
    throw v1

    #@7b
    .line 1238
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v0

    #@7c
    .line 1239
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@7e
    const-string/jumbo v5, "Write problems"

    #@81
    invoke-direct {v2, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@84
    .line 1240
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@87
    .line 1241
    throw v2

    #@88
    .line 1250
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_5
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@8a
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    goto :goto_0
.end method

.method private writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 5
    .param p1, "eor"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1265
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@3
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@5
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@7
    invoke-virtual {v1, p1, p2, v2, v3}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@a
    move-result-object v0

    #@b
    .line 1279
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@d
    const/4 v2, 0x4

    #@e
    if-ge v1, v2, :cond_0

    #@10
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 1290
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@18
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {p2}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    #@1d
    move-result v1

    #@1e
    if-lez v1, :cond_1

    #@20
    .line 1291
    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@22
    .line 1294
    :cond_1
    return-object v0

    #@23
    .line 1280
    :cond_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@25
    if-ne v0, v1, :cond_0

    #@27
    .line 1281
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@29
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@2c
    move-result v2

    #@2d
    invoke-direct {p0, v1, v2}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 1282
    const/4 v1, 0x0

    #@34
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@37
    move-result-object v0

    #@38
    goto :goto_0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 734
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 732
    :goto_0
    return-void

    #@4
    .line 735
    :catch_0
    move-exception v0

    #@5
    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Couldn\'t kickstart handshaking"

    #@8
    .line 736
    const/16 v2, 0x28

    #@a
    invoke-virtual {p0, v2, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    #@d
    goto :goto_0
.end method

.method changeWriteCiphers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 604
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@3
    if-eq v2, v4, :cond_0

    #@5
    .line 605
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@7
    const/4 v3, 0x3

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 606
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@c
    .line 607
    const-string/jumbo v3, "State error, change cipher specs"

    #@f
    .line 606
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 612
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@15
    .line 615
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@17
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@1d
    .line 616
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1f
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 624
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@28
    .line 627
    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@2a
    .line 603
    return-void

    #@2b
    .line 617
    :catch_0
    move-exception v0

    #@2c
    .line 619
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@2e
    .line 620
    const-string/jumbo v3, "Algorithm missing:  "

    #@31
    .line 619
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljavax/net/ssl/SSLException;

    #@3a
    throw v2
.end method

.method public declared-synchronized closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1508
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "ssl"

    #@8
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1509
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ", called closeInbound()"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1515
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@2d
    if-eqz v0, :cond_1

    #@2f
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 1525
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :goto_0
    monitor-exit p0

    #@37
    .line 1501
    return-void

    #@38
    .line 1516
    :cond_2
    const/4 v0, 0x1

    #@39
    :try_start_1
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    #@3b
    .line 1518
    const-string/jumbo v0, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    #@3e
    .line 1517
    const/16 v1, 0x50

    #@40
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    :catchall_0
    move-exception v0

    #@45
    monitor-exit p0

    #@46
    throw v0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1456
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "ssl"

    #@8
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1457
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ", called closeOutbound()"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1460
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 1452
    return-void

    #@30
    :catchall_0
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1587
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 1586
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1615
    if-nez p2, :cond_0

    #@3
    .line 1616
    :try_start_0
    const-string/jumbo p2, "General SSLEngine problem"

    #@6
    .line 1618
    :cond_0
    if-nez p3, :cond_1

    #@8
    .line 1619
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    #@b
    move-result-object p3

    #@c
    .line 1630
    :cond_1
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@e
    if-eqz v3, :cond_5

    #@10
    .line 1631
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@12
    if-eqz v3, :cond_2

    #@14
    const-string/jumbo v3, "ssl"

    #@17
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 1632
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 1633
    const-string/jumbo v5, ", fatal: engine already closed.  Rethrowing "

    #@2f
    .line 1632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 1634
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 1632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@42
    .line 1636
    :cond_2
    instance-of v3, p3, Ljava/lang/RuntimeException;

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 1637
    move-object v0, p3

    #@47
    nop

    #@48
    nop

    #@49
    move-object v3, v0

    #@4a
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit p0

    #@4d
    throw v3

    #@4e
    .line 1638
    :cond_3
    :try_start_1
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    #@50
    if-eqz v3, :cond_4

    #@52
    .line 1639
    move-object v0, p3

    #@53
    nop

    #@54
    nop

    #@55
    move-object v3, v0

    #@56
    throw v3

    #@57
    .line 1640
    :cond_4
    instance-of v3, p3, Ljava/lang/Exception;

    #@59
    if-eqz v3, :cond_5

    #@5b
    .line 1641
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@5d
    .line 1642
    const-string/jumbo v3, "fatal SSLEngine condition"

    #@60
    .line 1641
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@63
    .line 1643
    .local v2, "ssle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@66
    .line 1644
    throw v2

    #@67
    .line 1648
    .end local v2    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_5
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@69
    if-eqz v3, :cond_6

    #@6b
    const-string/jumbo v3, "ssl"

    #@6e
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_6

    #@74
    .line 1649
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@76
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 1650
    const-string/jumbo v5, ", fatal error: "

    #@86
    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    .line 1651
    const-string/jumbo v5, ": "

    #@91
    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    .line 1651
    const-string/jumbo v5, "\n"

    #@9c
    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 1651
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@af
    .line 1657
    :cond_6
    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@b1
    .line 1658
    .local v1, "oldState":I
    const/4 v3, 0x4

    #@b2
    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@b4
    .line 1660
    const/4 v3, 0x1

    #@b5
    iput-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    #@b7
    .line 1662
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@b9
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@bc
    .line 1663
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@be
    if-eqz v3, :cond_7

    #@c0
    .line 1664
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@c2
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@c5
    .line 1671
    :cond_7
    if-eqz v1, :cond_8

    #@c7
    .line 1672
    const/4 v3, 0x2

    #@c8
    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    #@cb
    .line 1675
    :cond_8
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    #@cd
    if-eqz v3, :cond_9

    #@cf
    .line 1676
    move-object v0, p3

    #@d0
    nop

    #@d1
    nop

    #@d2
    move-object v3, v0

    #@d3
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@d5
    .line 1687
    :goto_0
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@d7
    invoke-virtual {v3}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    #@da
    .line 1689
    const/4 v3, 0x6

    #@db
    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@dd
    .line 1692
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@df
    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    #@e2
    .line 1693
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@e4
    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    #@e7
    .line 1695
    instance-of v3, p3, Ljava/lang/RuntimeException;

    #@e9
    if-eqz v3, :cond_a

    #@eb
    .line 1696
    move-object v0, p3

    #@ec
    check-cast v0, Ljava/lang/RuntimeException;

    #@ee
    move-object v3, v0

    #@ef
    throw v3

    #@f0
    .line 1684
    :cond_9
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    #@f3
    move-result-object v3

    #@f4
    .line 1683
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@f6
    goto :goto_0

    #@f7
    .line 1698
    :cond_a
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@f9
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1592
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 1591
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method getAcc()Ljava/security/AccessControlContext;
    .locals 1

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    #@2
    return-object v0
.end method

.method public declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1567
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1568
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    monitor-exit p0

    #@d
    return-object v0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 1570
    return-object v1

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1836
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2000
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2030
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@3
    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1555
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    #@0
    .prologue
    .line 548
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1860
    :try_start_0
    iget-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2037
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@4
    move-result-object v0

    #@5
    .line 2040
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@a
    .line 2041
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@c
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 2043
    return-object v0

    #@11
    .end local v0    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public declared-synchronized getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1550
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1970
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2010
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1955
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized getWantClientAuth()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 1883
    :try_start_0
    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-ne v1, v0, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1533
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isOutboundDone()Z
    .locals 1

    #@0
    .prologue
    .line 1467
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method needToSplitPayload(Lsun/security/ssl/CipherBox;Lsun/security/ssl/ProtocolVersion;)Z
    .locals 2
    .param p1, "cipher"    # Lsun/security/ssl/CipherBox;
    .param p2, "protocol"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 1310
    iget v0, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@4
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 1311
    invoke-virtual {p1}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    #@b
    move-result v0

    #@c
    .line 1310
    if-eqz v0, :cond_0

    #@e
    .line 1311
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1310
    :cond_0
    const/4 v0, 0x0

    #@13
    :goto_0
    return v0

    #@14
    .line 1312
    :cond_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z

    #@16
    goto :goto_0
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1824
    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    #@3
    .line 1826
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@9
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    :cond_0
    :goto_0
    monitor-exit p0

    #@10
    .line 1823
    return-void

    #@11
    .line 1827
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@13
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    #@15
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    goto :goto_0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 2
    .param p1, "suites"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1983
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@8
    .line 1984
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@e
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    :cond_0
    :goto_0
    monitor-exit p0

    #@15
    .line 1982
    return-void

    #@16
    .line 1985
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@18
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2023
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@8
    .line 2024
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@e
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    :cond_0
    :goto_0
    monitor-exit p0

    #@15
    .line 2022
    return-void

    #@16
    .line 2025
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@18
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method declared-synchronized setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lsun/security/ssl/SSLSessionImpl;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1559
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 1558
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1849
    if-eqz p1, :cond_1

    #@3
    .line 1850
    const/4 v0, 0x2

    #@4
    .line 1849
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    #@6
    .line 1852
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1853
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c
    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    #@e
    .line 1852
    if-eqz v0, :cond_0

    #@10
    .line 1854
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@12
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    :cond_0
    :goto_1
    monitor-exit p0

    #@19
    .line 1848
    return-void

    #@1a
    .line 1850
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 1855
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1e
    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    #@20
    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    #@22
    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_1

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2050
    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    #@4
    .line 2053
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    #@a
    .line 2054
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@10
    .line 2055
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@12
    if-eqz v0, :cond_0

    #@14
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@16
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->started()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    :cond_0
    :goto_0
    monitor-exit p0

    #@1d
    .line 2049
    return-void

    #@1e
    .line 2056
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@20
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

    #@25
    .line 2057
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@27
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@29
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit p0

    #@2f
    throw v0
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 1893
    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 1939
    :cond_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    #@a
    if-eqz v0, :cond_1

    #@c
    const-string/jumbo v0, "ssl"

    #@f
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1940
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 1941
    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    #@27
    .line 1940
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1942
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@2d
    .line 1940
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1949
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3a
    .line 1950
    const-string/jumbo v1, "Cannot change mode after SSL traffic has started"

    #@3d
    .line 1949
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :catchall_0
    move-exception v0

    #@42
    monitor-exit p0

    #@43
    throw v0

    #@44
    .line 1901
    :pswitch_0
    :try_start_1
    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@46
    if-eqz p1, :cond_3

    #@48
    move v2, v0

    #@49
    :goto_0
    if-eq v3, v2, :cond_2

    #@4b
    .line 1902
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4d
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@4f
    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    #@52
    move-result v2

    #@53
    .line 1901
    if-eqz v2, :cond_2

    #@55
    .line 1903
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@57
    if-eqz p1, :cond_4

    #@59
    move v2, v0

    #@5a
    :goto_1
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@5d
    move-result-object v2

    #@5e
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@60
    .line 1906
    :cond_2
    if-eqz p1, :cond_5

    #@62
    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@64
    .line 1907
    const/4 v0, 0x1

    #@65
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    :goto_3
    monitor-exit p0

    #@68
    .line 1892
    return-void

    #@69
    :cond_3
    move v2, v1

    #@6a
    .line 1901
    goto :goto_0

    #@6b
    :cond_4
    move v2, v1

    #@6c
    .line 1903
    goto :goto_1

    #@6d
    :cond_5
    move v0, v1

    #@6e
    .line 1906
    goto :goto_2

    #@6f
    .line 1918
    :pswitch_1
    :try_start_2
    sget-boolean v2, Lsun/security/ssl/SSLEngineImpl;->-assertionsDisabled:Z

    #@71
    if-nez v2, :cond_7

    #@73
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@75
    if-eqz v2, :cond_6

    #@77
    move v2, v1

    #@78
    :goto_4
    if-nez v2, :cond_7

    #@7a
    new-instance v0, Ljava/lang/AssertionError;

    #@7c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@7f
    throw v0

    #@80
    :cond_6
    move v2, v0

    #@81
    goto :goto_4

    #@82
    .line 1919
    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@84
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    #@87
    move-result v2

    #@88
    if-nez v2, :cond_0

    #@8a
    .line 1925
    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@8c
    if-eqz p1, :cond_9

    #@8e
    move v2, v0

    #@8f
    :goto_5
    if-eq v3, v2, :cond_8

    #@91
    .line 1926
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@93
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@95
    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    #@98
    move-result v2

    #@99
    .line 1925
    if-eqz v2, :cond_8

    #@9b
    .line 1927
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@9d
    if-eqz p1, :cond_a

    #@9f
    move v2, v0

    #@a0
    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@a3
    move-result-object v2

    #@a4
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@a6
    .line 1930
    :cond_8
    if-eqz p1, :cond_b

    #@a8
    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    #@aa
    .line 1931
    const/4 v0, 0x0

    #@ab
    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@ad
    .line 1932
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b0
    goto :goto_3

    #@b1
    :cond_9
    move v2, v1

    #@b2
    .line 1925
    goto :goto_5

    #@b3
    :cond_a
    move v2, v1

    #@b4
    .line 1927
    goto :goto_6

    #@b5
    :cond_b
    move v0, v1

    #@b6
    .line 1930
    goto :goto_7

    #@b7
    .line 1893
    nop

    #@b8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 635
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3
    .line 636
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    #@5
    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 634
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1872
    if-eqz p1, :cond_1

    #@3
    .line 1873
    const/4 v0, 0x1

    #@4
    .line 1872
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    #@6
    .line 1875
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1876
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c
    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    #@e
    .line 1875
    if-eqz v0, :cond_0

    #@10
    .line 1877
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@12
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    :cond_0
    :goto_1
    monitor-exit p0

    #@19
    .line 1871
    return-void

    #@1a
    .line 1873
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 1878
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1e
    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    #@20
    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    #@22
    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_1

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x50

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2074
    .local v1, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 2075
    const-string/jumbo v2, "["

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 2076
    const-string/jumbo v2, "SSLEngine[hostname="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 2077
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 2078
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    #@24
    const-string/jumbo v0, "null"

    #@27
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2079
    const-string/jumbo v2, " port="

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 2080
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    #@33
    move-result v2

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 2081
    const-string/jumbo v2, "] "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 2082
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 2083
    const-string/jumbo v2, "]"

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 2085
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    return-object v2
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 4
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    new-instance v1, Lsun/security/ssl/EngineArgs;

    #@2
    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    #@5
    .line 757
    .local v1, "ea":Lsun/security/ssl/EngineArgs;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    #@7
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 758
    :try_start_1
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->readNetRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    move-result-object v3

    #@c
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d
    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@10
    .line 758
    return-object v3

    #@11
    .line 757
    :catchall_0
    move-exception v3

    #@12
    :try_start_3
    monitor-exit v2

    #@13
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@14
    .line 760
    :catch_0
    move-exception v0

    #@15
    .line 768
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "problem unwrapping net record"

    #@18
    .line 767
    const/16 v3, 0x50

    #@1a
    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d
    .line 769
    const/4 v2, 0x0

    #@1e
    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@21
    .line 769
    return-object v2

    #@22
    .line 770
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@23
    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@26
    .line 770
    throw v2
.end method

.method warning(B)V
    .locals 1
    .param p1, "description"    # B

    #@0
    .prologue
    .line 1582
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    #@4
    .line 1581
    return-void
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .param p1, "appData"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "netData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1135
    new-instance v1, Lsun/security/ssl/EngineArgs;

    #@4
    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    #@7
    .line 1142
    .local v1, "ea":Lsun/security/ssl/EngineArgs;
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    #@a
    move-result v2

    #@b
    const/16 v3, 0x4219

    #@d
    if-ge v2, v3, :cond_0

    #@f
    .line 1143
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@11
    .line 1144
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@13
    invoke-direct {p0, v4}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@16
    move-result-object v4

    #@17
    .line 1143
    invoke-direct {v2, v3, v4, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@1a
    return-object v2

    #@1b
    .line 1148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    #@1d
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 1149
    :try_start_1
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->writeAppRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v3

    #@22
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@26
    .line 1149
    return-object v3

    #@27
    .line 1148
    :catchall_0
    move-exception v3

    #@28
    :try_start_3
    monitor-exit v2

    #@29
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2a
    .line 1151
    :catch_0
    move-exception v0

    #@2b
    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetPos()V

    #@2e
    .line 1155
    const-string/jumbo v2, "problem wrapping app data"

    #@31
    .line 1154
    const/16 v3, 0x50

    #@33
    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@36
    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@39
    .line 1156
    return-object v4

    #@3a
    .line 1157
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@3b
    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    #@3e
    .line 1157
    throw v2
.end method

.method writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    .locals 3
    .param p1, "eor"    # Lsun/security/ssl/EngineOutputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1320
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@4
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@6
    invoke-virtual {v0, p1, v1, v2}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    #@9
    .line 1333
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    #@b
    const/4 v1, 0x4

    #@c
    if-ge v0, v1, :cond_0

    #@e
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1318
    :cond_0
    :goto_0
    return-void

    #@15
    .line 1334
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@17
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@1a
    move-result v1

    #@1b
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    #@1e
    goto :goto_0
.end method
