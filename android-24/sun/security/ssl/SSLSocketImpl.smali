.class public final Lsun/security/ssl/SSLSocketImpl;
.super Lsun/security/ssl/BaseSSLSocketImpl;
.source "SSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final cs_APP_CLOSED:I = 0x7

.field private static final cs_CLOSED:I = 0x6

.field private static final cs_DATA:I = 0x2

.field private static final cs_ERROR:I = 0x4

.field private static final cs_HANDSHAKE:I = 0x1

.field private static final cs_RENEGOTIATE:I = 0x3

.field private static final cs_SENT_CLOSE:I = 0x5

.field private static final cs_START:I

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private acc:Ljava/security/AccessControlContext;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private autoClose:Z

.field private clientVerifyData:[B

.field private closeReason:Ljavax/net/ssl/SSLException;

.field private connectionState:I

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private expectingFinished:Z

.field private handshakeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeLock:Ljava/lang/Object;

.field private volatile handshakeSession:Lsun/security/ssl/SSLSessionImpl;

.field private handshaker:Lsun/security/ssl/Handshaker;

.field private heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

.field private host:Ljava/lang/String;

.field private identificationProtocol:Ljava/lang/String;

.field private input:Lsun/security/ssl/AppInputStream;

.field private inrec:Lsun/security/ssl/InputRecord;

.field private isFirstAppOutputRecord:Z

.field private output:Lsun/security/ssl/AppOutputStream;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private rawHostname:Ljava/lang/String;

.field private readCipher:Lsun/security/ssl/CipherBox;

.field private final readLock:Ljava/lang/Object;

.field private readMAC:Lsun/security/ssl/MAC;

.field private roleIsServer:Z

.field private secureRenegotiation:Z

.field private serverVerifyData:[B

.field private sess:Lsun/security/ssl/SSLSessionImpl;

.field private sockInput:Ljava/io/InputStream;

.field private sockOutput:Ljava/io/OutputStream;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private writeCipher:Lsun/security/ssl/CipherBox;

.field final writeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private writeMAC:Lsun/security/ssl/MAC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/SSLSocketImpl;

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
    sput-boolean v0, Lsun/security/ssl/SSLSocketImpl;->-assertionsDisabled:Z

    #@b
    .line 372
    const-string/jumbo v0, "ssl"

    #@e
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@14
    .line 65
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 511
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@5
    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@7
    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@9
    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@b
    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@d
    .line 291
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@14
    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@19
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    .line 293
    new-instance v0, Ljava/lang/Object;

    #@1d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@20
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@22
    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@24
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@26
    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@28
    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2a
    .line 512
    const/4 v0, 0x0

    #@2b
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@2e
    .line 510
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 400
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@6
    .line 198
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@8
    .line 200
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@a
    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 291
    new-instance v1, Ljava/lang/Object;

    #@10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@15
    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@1a
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1c
    .line 293
    new-instance v1, Ljava/lang/Object;

    #@1e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@23
    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@25
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@27
    .line 377
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@29
    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2b
    .line 401
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@2d
    .line 402
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    #@2f
    .line 403
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@32
    .line 405
    if-eqz p2, :cond_0

    #@34
    new-instance v0, Ljava/net/InetSocketAddress;

    #@36
    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@39
    .line 407
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@3c
    .line 399
    return-void

    #@3d
    .line 406
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@3f
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@46
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 443
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@6
    .line 198
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@8
    .line 200
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@a
    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 291
    new-instance v1, Ljava/lang/Object;

    #@10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@15
    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@1a
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1c
    .line 293
    new-instance v1, Ljava/lang/Object;

    #@1e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@23
    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@25
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@27
    .line 377
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@29
    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2b
    .line 444
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@2d
    .line 445
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    #@2f
    .line 446
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@32
    .line 447
    new-instance v1, Ljava/net/InetSocketAddress;

    #@34
    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@37
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    #@3a
    .line 449
    if-eqz p2, :cond_0

    #@3c
    new-instance v0, Ljava/net/InetSocketAddress;

    #@3e
    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@41
    .line 451
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@44
    .line 442
    return-void

    #@45
    .line 450
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@47
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@4e
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 423
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@6
    .line 198
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@8
    .line 200
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@a
    .line 215
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 218
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 291
    new-instance v1, Ljava/lang/Object;

    #@10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@15
    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@1a
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1c
    .line 293
    new-instance v1, Ljava/lang/Object;

    #@1e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@23
    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@25
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@27
    .line 377
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@29
    .line 383
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2b
    .line 424
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@2e
    .line 425
    new-instance v0, Ljava/net/InetSocketAddress;

    #@30
    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@33
    .line 426
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@36
    .line 422
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 470
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@6
    .line 198
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@8
    .line 200
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@a
    .line 215
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@c
    .line 218
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@e
    .line 291
    new-instance v1, Ljava/lang/Object;

    #@10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@15
    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@1a
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1c
    .line 293
    new-instance v1, Ljava/lang/Object;

    #@1e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@23
    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@25
    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@27
    .line 377
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@29
    .line 383
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2b
    .line 471
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@2e
    .line 472
    new-instance v1, Ljava/net/InetSocketAddress;

    #@30
    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@33
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    #@36
    .line 473
    new-instance v0, Ljava/net/InetSocketAddress;

    #@38
    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@3b
    .line 474
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@3e
    .line 469
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 534
    invoke-direct {p0, p2}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>(Ljava/net/Socket;)V

    #@5
    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@7
    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@9
    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@b
    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@d
    .line 291
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@14
    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@19
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    .line 293
    new-instance v0, Ljava/lang/Object;

    #@1d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@20
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@22
    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@24
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@26
    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@28
    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2a
    .line 536
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 537
    new-instance v0, Ljava/net/SocketException;

    #@32
    const-string/jumbo v1, "Underlying socket is not connected"

    #@35
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 539
    :cond_0
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@3b
    .line 540
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    #@3d
    .line 541
    const/4 v0, 0x0

    #@3e
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@41
    .line 542
    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@43
    .line 543
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    #@46
    .line 533
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "serverMode"    # Z
    .param p3, "suites"    # Lsun/security/ssl/CipherSuiteList;
    .param p4, "clientAuth"    # B
    .param p5, "sessionCreation"    # Z
    .param p6, "protocols"    # Lsun/security/ssl/ProtocolList;
    .param p7, "identificationProtocol"    # Ljava/lang/String;
    .param p8, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 489
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    #@5
    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@7
    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@9
    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@b
    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@d
    .line 291
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@14
    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@19
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    .line 293
    new-instance v0, Ljava/lang/Object;

    #@1d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@20
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@22
    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@24
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@26
    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@28
    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@2a
    .line 490
    iput-byte p4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    #@2c
    .line 491
    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@2e
    .line 492
    iput-object p7, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@30
    .line 493
    iput-object p8, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@32
    .line 494
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    #@35
    .line 499
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@37
    .line 500
    iput-object p6, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@39
    .line 487
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
    .line 2032
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@2
    const/4 v3, 0x1

    #@3
    if-eq v2, v3, :cond_0

    #@5
    .line 2033
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@7
    const/4 v3, 0x3

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 2034
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@c
    .line 2035
    const-string/jumbo v3, "State error, change cipher specs"

    #@f
    .line 2034
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 2040
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@15
    .line 2043
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@17
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@1d
    .line 2044
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1f
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2059
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@28
    .line 2031
    return-void

    #@29
    .line 2045
    :catch_0
    move-exception v0

    #@2a
    .line 2047
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@2c
    .line 2048
    const-string/jumbo v3, "Algorithm missing:  "

    #@2f
    .line 2047
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

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)V
    .locals 3
    .param p1, "mac"    # Lsun/security/ssl/MAC;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ge v0, v1, :cond_0

    #@5
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@7
    if-ne p1, v0, :cond_1

    #@9
    .line 1157
    :cond_0
    return-void

    #@a
    .line 1164
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 1170
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@12
    if-eqz v0, :cond_2

    #@14
    const-string/jumbo v0, "ssl"

    #@17
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 1171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 1172
    const-string/jumbo v2, ", sequence number extremely close to overflow "

    #@2f
    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 1173
    const-string/jumbo v2, "(2^64-1 packets). Closing connection."

    #@36
    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 1177
    :cond_2
    const-string/jumbo v0, "sequence number overflow"

    #@44
    const/16 v1, 0x28

    #@46
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@49
    .line 1186
    :cond_3
    const/16 v0, 0x16

    #@4b
    if-eq p2, v0, :cond_5

    #@4d
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_5

    #@53
    .line 1187
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@55
    if-eqz v0, :cond_4

    #@57
    const-string/jumbo v0, "ssl"

    #@5a
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_4

    #@60
    .line 1188
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@62
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    const-string/jumbo v2, ", request renegotiation "

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 1189
    const-string/jumbo v2, "to avoid sequence number overflow"

    #@79
    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@84
    .line 1192
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake()V

    #@87
    .line 1150
    :cond_5
    return-void
.end method

.method private closeInternal(Z)V
    .locals 12
    .param p1, "selfInitiated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x5

    #@2
    const/4 v7, 0x6

    #@3
    const/4 v6, 0x7

    #@4
    .line 1553
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@6
    if-eqz v5, :cond_0

    #@8
    const-string/jumbo v5, "ssl"

    #@b
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 1554
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    const-string/jumbo v9, ", called closeInternal("

    #@23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    .line 1555
    const-string/jumbo v9, ")"

    #@2e
    .line 1554
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 1558
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@3c
    move-result v3

    #@3d
    .line 1559
    .local v3, "state":I
    const/4 v1, 0x0

    #@3e
    .line 1560
    .local v1, "closeSocketCalled":Z
    const/4 v0, 0x0

    #@3f
    .line 1562
    .local v0, "cachedThrowable":Ljava/lang/Throwable;
    packed-switch v3, :pswitch_data_0

    #@42
    .line 1593
    :pswitch_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 1594
    :try_start_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@46
    move-result v3

    #@47
    if-eq v3, v7, :cond_1

    #@49
    .line 1595
    if-ne v3, v11, :cond_6

    #@4b
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 1655
    monitor-enter p0

    #@4d
    .line 1657
    :try_start_3
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@4f
    if-ne v5, v6, :cond_a

    #@51
    :goto_0
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@53
    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@56
    monitor-exit p0

    #@57
    .line 1662
    if-eqz v1, :cond_2

    #@59
    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    #@5c
    .line 1596
    :cond_2
    return-void

    #@5d
    .line 1565
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    .line 1655
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    :pswitch_2
    monitor-enter p0

    #@61
    .line 1657
    :try_start_5
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@63
    if-ne v5, v6, :cond_16

    #@65
    :goto_2
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@67
    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    #@6a
    monitor-exit p0

    #@6b
    .line 1662
    if-eqz v1, :cond_4

    #@6d
    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    #@70
    .line 1666
    :cond_4
    if-eqz v0, :cond_1b

    #@72
    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    #@74
    if-eqz v5, :cond_17

    #@76
    .line 1672
    nop

    #@77
    nop

    #@78
    throw v0

    #@79
    .line 1575
    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :pswitch_3
    :try_start_6
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@7c
    goto :goto_1

    #@7d
    .line 1654
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    #@7e
    .line 1655
    monitor-enter p0

    #@7f
    .line 1657
    :try_start_7
    iget v8, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@81
    if-ne v8, v6, :cond_18

    #@83
    :goto_3
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@85
    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    #@88
    monitor-exit p0

    #@89
    .line 1662
    if-eqz v1, :cond_5

    #@8b
    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    #@8e
    .line 1666
    :cond_5
    if-eqz v0, :cond_1a

    #@90
    .line 1671
    instance-of v6, v0, Ljava/lang/Error;

    #@92
    if-eqz v6, :cond_19

    #@94
    .line 1672
    nop

    #@95
    nop

    #@96
    throw v0

    #@97
    .line 1595
    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_6
    if-eq v3, v6, :cond_1

    #@99
    .line 1598
    if-eq v3, v10, :cond_7

    #@9b
    .line 1600
    const/4 v5, 0x0

    #@9c
    :try_start_8
    invoke-virtual {p0, v5}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    #@9f
    .line 1601
    const/4 v5, 0x5

    #@a0
    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@a2
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    :try_start_9
    monitor-exit p0

    #@a3
    .line 1615
    if-ne v3, v10, :cond_15

    #@a5
    .line 1616
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@a7
    if-eqz v5, :cond_8

    #@a9
    const-string/jumbo v5, "ssl"

    #@ac
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@af
    move-result v5

    #@b0
    if-eqz v5, :cond_8

    #@b2
    .line 1617
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b4
    new-instance v8, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    .line 1618
    const-string/jumbo v9, ", close invoked again; state = "

    #@c4
    .line 1617
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    .line 1619
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@cb
    move-result v9

    #@cc
    .line 1617
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v8

    #@d4
    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@d7
    .line 1621
    :cond_8
    if-nez p1, :cond_e

    #@d9
    .line 1655
    monitor-enter p0

    #@da
    .line 1657
    :try_start_a
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@dc
    if-ne v5, v6, :cond_b

    #@de
    :goto_5
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@e0
    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@e3
    monitor-exit p0

    #@e4
    .line 1662
    if-eqz v1, :cond_9

    #@e6
    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    #@e9
    .line 1666
    :cond_9
    if-eqz v0, :cond_d

    #@eb
    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    #@ed
    if-eqz v5, :cond_c

    #@ef
    .line 1672
    nop

    #@f0
    nop

    #@f1
    throw v0

    #@f2
    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_a
    move v6, v7

    #@f3
    .line 1658
    goto/16 :goto_0

    #@f5
    .line 1655
    :catchall_1
    move-exception v5

    #@f6
    monitor-exit p0

    #@f7
    throw v5

    #@f8
    .line 1602
    :catch_0
    move-exception v4

    #@f9
    .line 1605
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v5, 0x4

    #@fa
    :try_start_b
    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@fc
    .line 1607
    move-object v0, v4

    #@fd
    .line 1608
    .local v0, "cachedThrowable":Ljava/lang/Throwable;
    const/4 v1, 0x1

    #@fe
    .line 1609
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@101
    goto :goto_4

    #@102
    .line 1593
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_2
    move-exception v5

    #@103
    :try_start_c
    monitor-exit p0

    #@104
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@105
    :cond_b
    move v6, v7

    #@106
    .line 1658
    goto :goto_5

    #@107
    .line 1655
    :catchall_3
    move-exception v5

    #@108
    monitor-exit p0

    #@109
    throw v5

    #@10a
    .line 1673
    :cond_c
    instance-of v5, v0, Ljava/lang/RuntimeException;

    #@10c
    if-eqz v5, :cond_d

    #@10e
    .line 1674
    nop

    #@10f
    nop

    #@110
    throw v0

    #@111
    .line 1626
    :cond_d
    return-void

    #@112
    .line 1630
    :cond_e
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@113
    .line 1631
    :goto_6
    :try_start_e
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@115
    if-ge v5, v7, :cond_f

    #@117
    .line 1633
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    #@11a
    goto :goto_6

    #@11b
    .line 1634
    :catch_1
    move-exception v2

    #@11c
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_6

    #@11d
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_f
    :try_start_10
    monitor-exit p0

    #@11e
    .line 1639
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@120
    if-eqz v5, :cond_10

    #@122
    const-string/jumbo v5, "ssl"

    #@125
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@128
    move-result v5

    #@129
    if-eqz v5, :cond_10

    #@12b
    .line 1640
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12d
    new-instance v8, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@135
    move-result-object v9

    #@136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v8

    #@13a
    .line 1641
    const-string/jumbo v9, ", after primary close; state = "

    #@13d
    .line 1640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v8

    #@141
    .line 1642
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@144
    move-result v9

    #@145
    .line 1640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v8

    #@149
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v8

    #@14d
    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@150
    .line 1655
    :cond_10
    monitor-enter p0

    #@151
    .line 1657
    :try_start_11
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@153
    if-ne v5, v6, :cond_12

    #@155
    :goto_7
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@157
    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    #@15a
    monitor-exit p0

    #@15b
    .line 1662
    if-eqz v1, :cond_11

    #@15d
    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    #@160
    .line 1666
    :cond_11
    if-eqz v0, :cond_14

    #@162
    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    #@164
    if-eqz v5, :cond_13

    #@166
    .line 1672
    nop

    #@167
    nop

    #@168
    throw v0

    #@169
    .line 1630
    :catchall_4
    move-exception v5

    #@16a
    :try_start_12
    monitor-exit p0

    #@16b
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@16c
    :cond_12
    move v6, v7

    #@16d
    .line 1658
    goto :goto_7

    #@16e
    .line 1655
    :catchall_5
    move-exception v5

    #@16f
    monitor-exit p0

    #@170
    throw v5

    #@171
    .line 1673
    :cond_13
    instance-of v5, v0, Ljava/lang/RuntimeException;

    #@173
    if-eqz v5, :cond_14

    #@175
    .line 1674
    nop

    #@176
    nop

    #@177
    throw v0

    #@178
    .line 1644
    :cond_14
    return-void

    #@179
    .line 1647
    :cond_15
    if-nez v1, :cond_3

    #@17b
    .line 1648
    const/4 v1, 0x1

    #@17c
    .line 1649
    :try_start_13
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@17f
    goto/16 :goto_1

    #@181
    :cond_16
    move v6, v7

    #@182
    .line 1658
    goto/16 :goto_2

    #@184
    .line 1655
    :catchall_6
    move-exception v5

    #@185
    monitor-exit p0

    #@186
    throw v5

    #@187
    .line 1673
    :cond_17
    instance-of v5, v0, Ljava/lang/RuntimeException;

    #@189
    if-eqz v5, :cond_1b

    #@18b
    .line 1674
    nop

    #@18c
    nop

    #@18d
    throw v0

    #@18e
    :cond_18
    move v6, v7

    #@18f
    .line 1658
    goto/16 :goto_3

    #@191
    .line 1655
    :catchall_7
    move-exception v5

    #@192
    monitor-exit p0

    #@193
    throw v5

    #@194
    .line 1673
    :cond_19
    instance-of v6, v0, Ljava/lang/RuntimeException;

    #@196
    if-eqz v6, :cond_1a

    #@198
    .line 1674
    nop

    #@199
    nop

    #@19a
    throw v0

    #@19b
    .line 1654
    :cond_1a
    throw v5

    #@19c
    .line 1552
    :cond_1b
    return-void

    #@19d
    .line 1562
    nop

    #@19e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private closeSocket(Z)V
    .locals 3
    .param p1, "selfInitiated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1507
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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
    .line 1508
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ", called closeSocket(selfInitiated)"

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
    .line 1510
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2c
    if-ne v0, p0, :cond_2

    #@2e
    .line 1511
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    #@31
    .line 1506
    :cond_1
    :goto_0
    return-void

    #@32
    .line 1512
    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 1513
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@38
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@3b
    goto :goto_0

    #@3c
    .line 1514
    :cond_3
    if-eqz p1, :cond_1

    #@3e
    .line 1517
    const/4 v0, 0x0

    #@3f
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    #@42
    goto :goto_0
.end method

.method private disposeCiphers()V
    .locals 2

    #@0
    .prologue
    .line 1728
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1729
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@5
    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1732
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@e
    .line 1734
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@10
    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@13
    .line 1736
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 1726
    return-void

    #@19
    .line 1728
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0

    #@1c
    .line 1735
    :catchall_1
    move-exception v0

    #@1d
    .line 1736
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 1735
    throw v0
.end method

.method private declared-synchronized getConnectionState()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 649
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
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

.method private declared-synchronized handleException(Ljava/lang/Exception;Z)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1774
    :try_start_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@3
    if-eqz v3, :cond_0

    #@5
    const-string/jumbo v3, "ssl"

    #@8
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1775
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    .line 1776
    const-string/jumbo v5, ", handling exception: "

    #@20
    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 1776
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 1781
    :cond_0
    instance-of v3, p1, Ljava/io/InterruptedIOException;

    #@35
    if-eqz v3, :cond_1

    #@37
    if-eqz p2, :cond_1

    #@39
    .line 1782
    nop

    #@3a
    nop

    #@3b
    .end local p1    # "e":Ljava/lang/Exception;
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit p0

    #@3e
    throw v3

    #@3f
    .line 1787
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 1788
    instance-of v3, p1, Ljava/io/IOException;

    #@45
    if-eqz v3, :cond_2

    #@47
    .line 1789
    nop

    #@48
    nop

    #@49
    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    #@4a
    .line 1795
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "Unexpected exception"

    #@4d
    .line 1794
    const/16 v4, 0x50

    #@4f
    invoke-static {v4, p1, v3}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    #@52
    move-result-object v3

    #@53
    throw v3

    #@54
    .line 1800
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    #@56
    .line 1801
    .local v2, "isSSLException":Z
    if-nez v2, :cond_4

    #@58
    instance-of v3, p1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    if-eqz v3, :cond_4

    #@5c
    .line 1806
    const/16 v3, 0xa

    #@5e
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    .line 1811
    :goto_0
    :try_start_3
    nop

    #@62
    nop

    #@63
    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    #@64
    .line 1807
    .restart local p1    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    #@65
    .local v1, "ee":Ljava/io/IOException;
    goto :goto_0

    #@66
    .line 1816
    .end local v1    # "ee":Ljava/io/IOException;
    :cond_4
    if-eqz v2, :cond_6

    #@68
    .line 1817
    instance-of v3, p1, Ljavax/net/ssl/SSLHandshakeException;

    #@6a
    if-eqz v3, :cond_5

    #@6c
    .line 1818
    const/16 v0, 0x28

    #@6e
    .line 1825
    .local v0, "alertType":B
    :goto_1
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    monitor-exit p0

    #@72
    .line 1773
    return-void

    #@73
    .line 1820
    .end local v0    # "alertType":B
    :cond_5
    const/16 v0, 0xa

    #@75
    .restart local v0    # "alertType":B
    goto :goto_1

    #@76
    .line 1823
    .end local v0    # "alertType":B
    :cond_6
    const/16 v0, 0x50

    #@78
    .restart local v0    # "alertType":B
    goto :goto_1
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Z)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "isServer"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 550
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4
    .line 551
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@8
    .line 552
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@a
    .line 558
    iput-boolean p2, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@c
    .line 559
    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@e
    .line 566
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@10
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@12
    .line 567
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@14
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    #@16
    .line 568
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    #@18
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@1a
    .line 569
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    #@1c
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@1e
    .line 572
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@20
    .line 573
    new-array v0, v1, [B

    #@22
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    #@24
    .line 574
    new-array v0, v1, [B

    #@26
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    #@28
    .line 577
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2a
    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@2c
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    #@2f
    move-result-object v0

    #@30
    .line 576
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@32
    .line 579
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@34
    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@36
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@39
    move-result-object v0

    #@3a
    .line 578
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@3c
    .line 581
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@3e
    .line 584
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    #@44
    .line 586
    new-instance v0, Lsun/security/ssl/AppInputStream;

    #@46
    invoke-direct {v0, p0}, Lsun/security/ssl/AppInputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    #@49
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@4b
    .line 587
    new-instance v0, Lsun/security/ssl/AppOutputStream;

    #@4d
    invoke-direct {v0, p0}, Lsun/security/ssl/AppOutputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    #@50
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    #@52
    .line 549
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
    .line 1231
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1252
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Internal error"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1245
    :pswitch_0
    return-void

    #@11
    .line 1256
    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1257
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@17
    .line 1261
    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1262
    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    #@1d
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@1f
    .line 1263
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@21
    iget-byte v4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    #@23
    .line 1264
    iget-object v5, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@25
    iget v7, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@27
    if-ne v7, v6, :cond_1

    #@29
    .line 1265
    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@2b
    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    #@2d
    iget-object v9, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    #@2f
    move-object v1, p0

    #@30
    .line 1262
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@33
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@35
    .line 1272
    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@37
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@39
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    #@3c
    .line 1273
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@3e
    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@40
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    #@43
    .line 1230
    return-void

    #@44
    .line 1259
    :cond_0
    const/4 v0, 0x3

    #@45
    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@47
    goto :goto_0

    #@48
    :cond_1
    move v6, v1

    #@49
    .line 1264
    goto :goto_1

    #@4a
    .line 1267
    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    #@4c
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4e
    .line 1268
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@50
    .line 1269
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@52
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@54
    if-ne v5, v6, :cond_3

    #@56
    move v5, v6

    #@57
    .line 1270
    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@59
    iget-object v7, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    #@5b
    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    #@5d
    move-object v1, p0

    #@5e
    .line 1267
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    #@61
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@63
    goto :goto_2

    #@64
    :cond_3
    move v5, v1

    #@65
    .line 1269
    goto :goto_3

    #@66
    .line 1231
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
    .line 1366
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 1402
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "connection is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

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
    .line 1373
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@14
    if-nez v0, :cond_0

    #@16
    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 1378
    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 1379
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@20
    if-eqz v0, :cond_1

    #@22
    const-string/jumbo v0, "handshake"

    #@25
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2d
    .line 1381
    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    #@30
    .line 1380
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 1386
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    #@36
    .line 1412
    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@38
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_2

    #@3e
    .line 1414
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@40
    const/4 v1, 0x3

    #@41
    if-ne v0, v1, :cond_4

    #@43
    .line 1416
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@45
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@47
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@4a
    .line 1421
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@4c
    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    #@4e
    if-eqz v0, :cond_5

    #@50
    .line 1423
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@52
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    :cond_2
    :goto_1
    monitor-exit p0

    #@56
    .line 1364
    return-void

    #@57
    .line 1374
    :cond_3
    :try_start_2
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@59
    .line 1375
    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    #@5c
    .line 1374
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    :pswitch_2
    monitor-exit p0

    #@61
    .line 1391
    return-void

    #@62
    .line 1398
    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/net/SocketException;

    #@64
    .line 1399
    const-string/jumbo v1, "handshaking attempted on unconnected socket"

    #@67
    .line 1398
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v0

    #@6b
    .line 1418
    :cond_4
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@6d
    const/4 v1, 0x0

    #@6e
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@71
    goto :goto_0

    #@72
    .line 1425
    :cond_5
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@74
    const/4 v1, 0x1

    #@75
    if-eq v0, v1, :cond_2

    #@77
    .line 1429
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@79
    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    #@7c
    .line 1432
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@7e
    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@80
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@83
    goto :goto_1

    #@84
    .line 1366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private performInitialHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1286
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1287
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@6
    move-result v0

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v0, v2, :cond_1

    #@a
    .line 1288
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V

    #@d
    .line 1299
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 1300
    new-instance v0, Lsun/security/ssl/InputRecord;

    #@13
    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    #@16
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@18
    .line 1307
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@1a
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@1c
    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@1e
    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHandshakeHash()Lsun/security/ssl/HandshakeHash;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    #@25
    .line 1308
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@27
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@29
    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@2b
    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHelloVersion()Lsun/security/ssl/ProtocolVersion;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@32
    .line 1309
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@34
    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    #@37
    .line 1312
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@39
    const/4 v2, 0x0

    #@3a
    invoke-direct {p0, v0, v2}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    #@3d
    .line 1313
    const/4 v0, 0x0

    #@3e
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :cond_1
    monitor-exit v1

    #@41
    .line 1283
    return-void

    #@42
    .line 1286
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0
.end method

.method private readRecord(Lsun/security/ssl/InputRecord;Z)V
    .locals 16
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .param p2, "needAppData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 912
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    #@4
    monitor-enter v13

    #@5
    .line 918
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v9

    #@9
    .local v9, "state":I
    const/4 v12, 0x6

    #@a
    if-eq v9, v12, :cond_15

    #@c
    .line 919
    const/4 v12, 0x4

    #@d
    if-eq v9, v12, :cond_15

    #@f
    const/4 v12, 0x7

    #@10
    if-eq v9, v12, :cond_15

    #@12
    .line 926
    const/4 v12, 0x0

    #@13
    :try_start_1
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

    #@18
    .line 927
    move-object/from16 v0, p0

    #@1a
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    #@20
    move-object/from16 v0, p1

    #@22
    invoke-virtual {v0, v12, v14}, Lsun/security/ssl/InputRecord;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 969
    :try_start_2
    move-object/from16 v0, p0

    #@27
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v0, v12, v14}, Lsun/security/ssl/InputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    .line 984
    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    .line 985
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    #@36
    move-result v12

    #@37
    packed-switch v12, :pswitch_data_0

    #@3a
    .line 1106
    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@3c
    if-eqz v12, :cond_0

    #@3e
    const-string/jumbo v12, "ssl"

    #@41
    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@44
    move-result v12

    #@45
    if-eqz v12, :cond_0

    #@47
    .line 1107
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@49
    new-instance v14, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@51
    move-result-object v15

    #@52
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v14

    #@56
    .line 1108
    const-string/jumbo v15, ", Received record type: "

    #@59
    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    .line 1109
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    #@60
    move-result v15

    #@61
    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v14

    #@65
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v14

    #@69
    invoke-virtual {v12, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6c
    :cond_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 912
    .end local v9    # "state":I
    :catchall_0
    move-exception v12

    #@6f
    monitor-exit v13

    #@70
    throw v12

    #@71
    .line 935
    .restart local v9    # "state":I
    :catch_0
    move-exception v5

    #@72
    .line 936
    .local v5, "eof":Ljava/io/EOFException;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@75
    move-result v12

    #@76
    const/4 v14, 0x1

    #@77
    if-gt v12, v14, :cond_2

    #@79
    const/4 v7, 0x1

    #@7a
    .line 937
    .local v7, "handshaking":Z
    :goto_2
    sget-boolean v12, Lsun/security/ssl/SSLSocketImpl;->requireCloseNotify:Z

    #@7c
    if-nez v12, :cond_3

    #@7e
    move v8, v7

    #@7f
    .line 938
    :goto_3
    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@81
    if-eqz v12, :cond_1

    #@83
    const-string/jumbo v12, "ssl"

    #@86
    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@89
    move-result v12

    #@8a
    if-eqz v12, :cond_1

    #@8c
    .line 939
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8e
    new-instance v12, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@96
    move-result-object v15

    #@97
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v12

    #@9b
    .line 940
    const-string/jumbo v15, ", received EOFException: "

    #@9e
    .line 939
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v15

    #@a2
    .line 941
    if-eqz v8, :cond_4

    #@a4
    const-string/jumbo v12, "error"

    #@a7
    .line 939
    :goto_4
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v12

    #@ab
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v12

    #@af
    invoke-virtual {v14, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b2
    .line 943
    :cond_1
    if-eqz v8, :cond_6

    #@b4
    .line 945
    if-eqz v7, :cond_5

    #@b6
    .line 946
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    #@b8
    .line 947
    const-string/jumbo v12, "Remote host closed connection during handshake"

    #@bb
    .line 946
    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@be
    .line 952
    .local v3, "e":Ljavax/net/ssl/SSLException;
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@c1
    .line 953
    throw v3

    #@c2
    .line 936
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    .end local v7    # "handshaking":Z
    :cond_2
    const/4 v7, 0x0

    #@c3
    .restart local v7    # "handshaking":Z
    goto :goto_2

    #@c4
    .line 937
    :cond_3
    const/4 v8, 0x1

    #@c5
    .local v8, "rethrow":Z
    goto :goto_3

    #@c6
    .line 941
    .end local v8    # "rethrow":Z
    :cond_4
    const-string/jumbo v12, "ignored"

    #@c9
    goto :goto_4

    #@ca
    .line 949
    :cond_5
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    #@cc
    .line 950
    const-string/jumbo v12, "Remote host closed connection incorrectly"

    #@cf
    .line 949
    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@d2
    .restart local v3    # "e":Ljavax/net/ssl/SSLException;
    goto :goto_5

    #@d3
    .line 956
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :cond_6
    const/4 v12, 0x0

    #@d4
    move-object/from16 v0, p0

    #@d6
    invoke-direct {v0, v12}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d9
    goto/16 :goto_0

    #@db
    .line 928
    .end local v5    # "eof":Ljava/io/EOFException;
    .end local v7    # "handshaking":Z
    :catch_1
    move-exception v4

    #@dc
    .line 930
    .local v4, "e":Ljavax/net/ssl/SSLProtocolException;
    const/16 v12, 0xa

    #@de
    :try_start_7
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v12, v4}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e3
    .line 934
    :goto_6
    :try_start_8
    throw v4

    #@e4
    .line 931
    :catch_2
    move-exception v11

    #@e5
    .local v11, "x":Ljava/io/IOException;
    goto :goto_6

    #@e6
    .line 970
    .end local v4    # "e":Ljavax/net/ssl/SSLProtocolException;
    .end local v11    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v2

    #@e7
    .line 971
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    #@ea
    move-result v12

    #@eb
    const/16 v14, 0x16

    #@ed
    if-ne v12, v14, :cond_7

    #@ef
    .line 972
    const/16 v1, 0x28

    #@f1
    .line 974
    .local v1, "alertType":B
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@f4
    move-result-object v12

    #@f5
    move-object/from16 v0, p0

    #@f7
    invoke-virtual {v0, v1, v12, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@fa
    goto/16 :goto_1

    #@fc
    .line 973
    .end local v1    # "alertType":B
    :cond_7
    const/16 v1, 0x14

    #@fe
    .restart local v1    # "alertType":B
    goto :goto_7

    #@ff
    .line 998
    .end local v1    # "alertType":B
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :pswitch_0
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    #@102
    .line 999
    move-object/from16 v0, p0

    #@104
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@106
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->activated()Z

    #@109
    move-result v12

    #@10a
    if-nez v12, :cond_8

    #@10c
    .line 1001
    move-object/from16 v0, p0

    #@10e
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@110
    const/4 v14, 0x3

    #@111
    if-ne v12, v14, :cond_b

    #@113
    .line 1003
    move-object/from16 v0, p0

    #@115
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@117
    move-object/from16 v0, p0

    #@119
    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@11b
    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    #@11e
    .line 1016
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    #@120
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@122
    move-object/from16 v0, p0

    #@124
    iget-boolean v14, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v12, v0, v14}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    #@12b
    .line 1017
    const/4 v12, 0x0

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    #@130
    .line 1019
    move-object/from16 v0, p0

    #@132
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@134
    iget-boolean v12, v12, Lsun/security/ssl/Handshaker;->invalidated:Z

    #@136
    if-eqz v12, :cond_c

    #@138
    .line 1020
    const/4 v12, 0x0

    #@139
    move-object/from16 v0, p0

    #@13b
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@13d
    .line 1022
    move-object/from16 v0, p0

    #@13f
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@141
    const/4 v14, 0x3

    #@142
    if-ne v12, v14, :cond_9

    #@144
    .line 1023
    const/4 v12, 0x2

    #@145
    move-object/from16 v0, p0

    #@147
    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@149
    .line 1051
    :cond_9
    :goto_9
    if-nez p2, :cond_a

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@14f
    const/4 v14, 0x2

    #@150
    if-eq v12, v14, :cond_10

    #@152
    :cond_a
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@153
    goto/16 :goto_0

    #@155
    .line 1005
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    #@157
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@159
    const/4 v14, 0x0

    #@15a
    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@15d
    goto :goto_8

    #@15e
    .line 984
    :catchall_1
    move-exception v12

    #@15f
    :try_start_c
    monitor-exit p0

    #@160
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@161
    .line 1025
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    #@163
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@165
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isDone()Z

    #@168
    move-result v12

    #@169
    if-eqz v12, :cond_9

    #@16b
    .line 1028
    move-object/from16 v0, p0

    #@16d
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@16f
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    #@172
    move-result v12

    #@173
    .line 1027
    move-object/from16 v0, p0

    #@175
    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    #@177
    .line 1029
    move-object/from16 v0, p0

    #@179
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@17b
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    #@17e
    move-result-object v12

    #@17f
    move-object/from16 v0, p0

    #@181
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    #@183
    .line 1030
    move-object/from16 v0, p0

    #@185
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@187
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    #@18a
    move-result-object v12

    #@18b
    move-object/from16 v0, p0

    #@18d
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    #@18f
    .line 1032
    move-object/from16 v0, p0

    #@191
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@193
    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    #@196
    move-result-object v12

    #@197
    move-object/from16 v0, p0

    #@199
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@19b
    .line 1033
    const/4 v12, 0x0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@1a0
    .line 1034
    const/4 v12, 0x0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1a5
    .line 1035
    const/4 v12, 0x2

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1aa
    .line 1041
    move-object/from16 v0, p0

    #@1ac
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@1ae
    if-eqz v12, :cond_9

    #@1b0
    .line 1043
    new-instance v6, Ljavax/net/ssl/HandshakeCompletedEvent;

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    invoke-direct {v6, v0, v12}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    #@1bb
    .line 1045
    .local v6, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    new-instance v10, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    #@1bd
    .line 1046
    move-object/from16 v0, p0

    #@1bf
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@1c1
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1c4
    move-result-object v12

    #@1c5
    .line 1045
    invoke-direct {v10, v12, v6}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;-><init>(Ljava/util/Set;Ljavax/net/ssl/HandshakeCompletedEvent;)V

    #@1c8
    .line 1047
    .local v10, "t":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    #@1cb
    goto/16 :goto_9

    #@1cd
    .line 1058
    .end local v6    # "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v10    # "t":Ljava/lang/Thread;
    :pswitch_1
    move-object/from16 v0, p0

    #@1cf
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1d1
    const/4 v14, 0x2

    #@1d2
    if-eq v12, v14, :cond_d

    #@1d4
    .line 1059
    move-object/from16 v0, p0

    #@1d6
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1d8
    const/4 v14, 0x3

    #@1d9
    if-eq v12, v14, :cond_d

    #@1db
    .line 1060
    move-object/from16 v0, p0

    #@1dd
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1df
    const/4 v14, 0x5

    #@1e0
    if-eq v12, v14, :cond_d

    #@1e2
    .line 1061
    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    #@1e4
    .line 1062
    new-instance v14, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v15, "Data received in non-data state: "

    #@1ec
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v14

    #@1f0
    .line 1063
    move-object/from16 v0, p0

    #@1f2
    iget v15, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1f4
    .line 1062
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v14

    #@1f8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v14

    #@1fc
    .line 1061
    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@1ff
    throw v12

    #@200
    .line 1065
    :cond_d
    move-object/from16 v0, p0

    #@202
    iget-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    #@204
    if-eqz v12, :cond_e

    #@206
    .line 1066
    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    #@208
    .line 1067
    const-string/jumbo v14, "Expecting finished message, received data"

    #@20b
    .line 1066
    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@20e
    throw v12

    #@20f
    .line 1069
    :cond_e
    if-nez p2, :cond_f

    #@211
    .line 1070
    new-instance v12, Ljavax/net/ssl/SSLException;

    #@213
    const-string/jumbo v14, "Discarding app data"

    #@216
    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@219
    throw v12

    #@21a
    .line 1073
    :cond_f
    const/4 v12, 0x1

    #@21b
    move-object/from16 v0, p1

    #@21d
    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

    #@220
    .line 1125
    :cond_10
    move-object/from16 v0, p0

    #@222
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@224
    const/4 v14, 0x4

    #@225
    if-ge v12, v14, :cond_11

    #@227
    .line 1126
    move-object/from16 v0, p0

    #@229
    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    #@22b
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    #@22e
    move-result v14

    #@22f
    move-object/from16 v0, p0

    #@231
    invoke-direct {v0, v12, v14}, Lsun/security/ssl/SSLSocketImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@234
    :cond_11
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@235
    monitor-exit v13

    #@236
    .line 1129
    return-void

    #@237
    .line 1077
    :pswitch_2
    :try_start_f
    invoke-direct/range {p0 .. p1}, Lsun/security/ssl/SSLSocketImpl;->recvAlert(Lsun/security/ssl/InputRecord;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@23a
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@23b
    goto/16 :goto_0

    #@23d
    .line 1081
    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    #@23f
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@241
    const/4 v14, 0x1

    #@242
    if-eq v12, v14, :cond_14

    #@244
    .line 1082
    move-object/from16 v0, p0

    #@246
    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@248
    const/4 v14, 0x3

    #@249
    if-eq v12, v14, :cond_14

    #@24b
    .line 1086
    :cond_12
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    #@24d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@250
    const-string/jumbo v14, "illegal change cipher spec msg, state = "

    #@253
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v12

    #@257
    .line 1087
    move-object/from16 v0, p0

    #@259
    iget v14, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@25b
    .line 1086
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v12

    #@25f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@262
    move-result-object v12

    #@263
    .line 1085
    const/16 v14, 0xa

    #@265
    move-object/from16 v0, p0

    #@267
    invoke-virtual {v0, v14, v12}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@26a
    .line 1097
    :cond_13
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->changeReadCiphers()V

    #@26d
    .line 1099
    const/4 v12, 0x1

    #@26e
    move-object/from16 v0, p0

    #@270
    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@272
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@273
    goto/16 :goto_0

    #@275
    .line 1083
    :cond_14
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@278
    move-result v12

    #@279
    const/4 v14, 0x1

    #@27a
    if-ne v12, v14, :cond_12

    #@27c
    .line 1084
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@27f
    move-result v12

    #@280
    const/4 v14, 0x1

    #@281
    if-eq v12, v14, :cond_13

    #@283
    goto :goto_a

    #@284
    .line 1136
    :cond_15
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@287
    monitor-exit v13

    #@288
    .line 1137
    return-void

    #@289
    .line 985
    nop

    #@28a
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recvAlert(Lsun/security/ssl/InputRecord;)V
    .locals 10
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 1913
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    #@7
    move-result v3

    #@8
    int-to-byte v1, v3

    #@9
    .line 1914
    .local v1, "level":B
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    #@c
    move-result v3

    #@d
    int-to-byte v0, v3

    #@e
    .line 1915
    .local v0, "description":B
    const/4 v3, -0x1

    #@f
    if-ne v0, v3, :cond_0

    #@11
    .line 1916
    const-string/jumbo v3, "Short alert message"

    #@14
    const/16 v4, 0x2f

    #@16
    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@19
    .line 1919
    :cond_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@1b
    if-eqz v3, :cond_2

    #@1d
    const-string/jumbo v3, "record"

    #@20
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_1

    #@26
    .line 1920
    const-string/jumbo v3, "handshake"

    #@29
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    .line 1919
    if-eqz v3, :cond_2

    #@2f
    .line 1921
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@31
    monitor-enter v4

    #@32
    .line 1922
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3b
    .line 1923
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, ", RECV "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    const-string/jumbo v6, " ALERT:  "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5d
    .line 1924
    const/4 v3, 0x2

    #@5e
    if-ne v1, v3, :cond_4

    #@60
    .line 1925
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v5, "fatal, "

    #@65
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@68
    .line 1931
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6a
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    monitor-exit v4

    #@72
    .line 1935
    :cond_2
    if-ne v1, v7, :cond_8

    #@74
    .line 1936
    if-nez v0, :cond_7

    #@76
    .line 1937
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@78
    if-ne v3, v7, :cond_6

    #@7a
    .line 1939
    const-string/jumbo v3, "Received close_notify during handshake"

    #@7d
    .line 1938
    invoke-virtual {p0, v9, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@80
    .line 1912
    :cond_3
    :goto_1
    return-void

    #@81
    .line 1926
    :cond_4
    if-ne v1, v7, :cond_5

    #@83
    .line 1927
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@85
    const-string/jumbo v5, "warning, "

    #@88
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8b
    goto :goto_0

    #@8c
    .line 1921
    :catchall_0
    move-exception v3

    #@8d
    monitor-exit v4

    #@8e
    throw v3

    #@8f
    .line 1929
    :cond_5
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    new-instance v5, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v6, "<level "

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    and-int/lit16 v6, v1, 0xff

    #@9f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    const-string/jumbo v6, ">, "

    #@a6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b1
    goto :goto_0

    #@b2
    .line 1941
    :cond_6
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    #@b5
    goto :goto_1

    #@b6
    .line 1951
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@b8
    if-eqz v3, :cond_3

    #@ba
    .line 1952
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@bc
    invoke-virtual {v3, v0}, Lsun/security/ssl/Handshaker;->handshakeAlert(B)V

    #@bf
    goto :goto_1

    #@c0
    .line 1956
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v4, "Received fatal alert: "

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    .line 1957
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    .line 1956
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    .line 1958
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@da
    if-nez v3, :cond_9

    #@dc
    .line 1959
    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    #@df
    move-result-object v3

    #@e0
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@e2
    .line 1961
    :cond_9
    invoke-virtual {p0, v9, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@e5
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
    .line 1971
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@3
    const/4 v4, 0x5

    #@4
    if-lt v3, v4, :cond_0

    #@6
    .line 1972
    return-void

    #@7
    .line 1977
    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@9
    if-ne v3, v7, :cond_1

    #@b
    .line 1978
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@d
    if-eqz v3, :cond_4

    #@f
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@11
    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_4

    #@17
    .line 1982
    :cond_1
    new-instance v1, Lsun/security/ssl/OutputRecord;

    #@19
    const/16 v3, 0x15

    #@1b
    invoke-direct {v1, v3}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    #@1e
    .line 1983
    .local v1, "r":Lsun/security/ssl/OutputRecord;
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@20
    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    #@23
    .line 1985
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@25
    if-eqz v3, :cond_5

    #@27
    const-string/jumbo v3, "ssl"

    #@2a
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    .line 1986
    .local v2, "useDebug":Z
    :goto_0
    if-eqz v2, :cond_2

    #@30
    .line 1987
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    monitor-enter v4

    #@33
    .line 1988
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3c
    .line 1989
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
    iget-object v6, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

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
    .line 1990
    const/4 v3, 0x2

    #@5f
    if-ne p1, v3, :cond_6

    #@61
    .line 1991
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    const-string/jumbo v5, "fatal, "

    #@66
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@69
    .line 1997
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
    .line 1998
    invoke-static {p2}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 1997
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
    .line 2002
    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8a
    .line 2003
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8d
    .line 2005
    :try_start_1
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@90
    .line 1969
    :cond_3
    :goto_2
    return-void

    #@91
    .line 1979
    .end local v1    # "r":Lsun/security/ssl/OutputRecord;
    .end local v2    # "useDebug":Z
    :cond_4
    return-void

    #@92
    .line 1985
    .restart local v1    # "r":Lsun/security/ssl/OutputRecord;
    :cond_5
    const/4 v2, 0x0

    #@93
    goto :goto_0

    #@94
    .line 1992
    .restart local v2    # "useDebug":Z
    :cond_6
    if-ne p1, v7, :cond_7

    #@96
    .line 1993
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
    .line 1987
    :catchall_0
    move-exception v3

    #@a0
    monitor-exit v4

    #@a1
    throw v3

    #@a2
    .line 1995
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
    .line 2006
    :catch_0
    move-exception v0

    #@c6
    .line 2007
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    #@c8
    .line 2008
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ca
    new-instance v4, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    .line 2009
    const-string/jumbo v5, ", Exception sending alert: "

    #@da
    .line 2008
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
    .line 653
    :try_start_0
    iput p1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 652
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private startHandshake(Z)V
    .locals 3
    .param p1, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1335
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V

    #@3
    .line 1337
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 1339
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    #@d
    .line 1334
    :goto_0
    return-void

    #@e
    .line 1342
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    goto :goto_0

    #@12
    .line 1344
    :catch_0
    move-exception v0

    #@13
    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    #@16
    goto :goto_0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2522
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

.method private writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    .locals 2
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .param p2, "holdRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->addMAC(Lsun/security/ssl/MAC;)V

    #@5
    .line 813
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@7
    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->encrypt(Lsun/security/ssl/CipherBox;)V

    #@a
    .line 815
    if-eqz p2, :cond_0

    #@c
    .line 819
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getTcpNoDelay()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 820
    const/4 p2, 0x0

    #@13
    .line 830
    .end local p2    # "holdRecord":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    #@15
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@17
    invoke-virtual {p1, v0, p2, v1}, Lsun/security/ssl/OutputRecord;->write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V

    #@1a
    .line 843
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@1c
    const/4 v1, 0x4

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    .line 844
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    #@21
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@24
    move-result v1

    #@25
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLSocketImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)V

    #@28
    .line 848
    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 849
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@2f
    move-result v0

    #@30
    const/16 v1, 0x17

    #@32
    if-ne v0, v1, :cond_2

    #@34
    .line 850
    const/4 v0, 0x0

    #@35
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@37
    .line 810
    :cond_2
    return-void

    #@38
    .line 824
    .restart local p2    # "holdRecord":Z
    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@3a
    if-nez v0, :cond_0

    #@3c
    .line 826
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3e
    const/16 v1, 0x28

    #@40
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@43
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    #@45
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2426
    if-nez p1, :cond_0

    #@3
    .line 2427
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "listener is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 2429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2430
    new-instance v0, Ljava/util/HashMap;

    #@15
    .line 2431
    const/4 v1, 0x4

    #@16
    .line 2430
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@19
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@1b
    .line 2433
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@1d
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 2425
    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    #@3
    return-void
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
    .line 2064
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@3
    if-eq v2, v4, :cond_0

    #@5
    .line 2065
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@7
    const/4 v3, 0x3

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 2066
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@c
    .line 2067
    const-string/jumbo v3, "State error, change cipher specs"

    #@f
    .line 2066
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 2072
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@15
    .line 2075
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@17
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@1d
    .line 2076
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1f
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2084
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@28
    .line 2087
    iput-boolean v4, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    #@2a
    .line 2063
    return-void

    #@2b
    .line 2077
    :catch_0
    move-exception v0

    #@2c
    .line 2079
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@2e
    .line 2080
    const-string/jumbo v3, "Algorithm missing:  "

    #@31
    .line 2079
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

.method checkEOF()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1456
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1473
    :pswitch_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1474
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 1458
    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    #@f
    const-string/jumbo v2, "Socket is not connected"

    #@12
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1464
    :pswitch_2
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 1467
    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    #@1a
    const-string/jumbo v2, "Socket is closed"

    #@1d
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1476
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@23
    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Connection has been shutdown: "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1476
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@3c
    .line 1478
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@41
    .line 1479
    throw v0

    #@42
    .line 1456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method checkWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1488
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x5

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 1490
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    #@f
    const-string/jumbo v1, "Connection closed by remote host"

    #@12
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1487
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1535
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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
    .line 1536
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ", called close()"

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
    .line 1538
    :cond_0
    const/4 v0, 0x1

    #@2b
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    #@2e
    .line 1539
    const/4 v0, 0x7

    #@2f
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->setConnectionState(I)V

    #@32
    .line 1534
    return-void
.end method

.method protected closeSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1496
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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
    .line 1497
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, ", called closeSocket()"

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
    .line 1499
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2c
    if-ne v0, p0, :cond_1

    #@2e
    .line 1500
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    #@31
    .line 1494
    :goto_0
    return-void

    #@32
    .line 1502
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@34
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@37
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 610
    new-instance v0, Ljava/net/SocketException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 613
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 614
    new-instance v0, Ljava/net/SocketException;

    #@13
    .line 615
    const-string/jumbo v1, "Cannot handle non-Inet socket addresses."

    #@16
    .line 614
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 618
    :cond_1
    invoke-super {p0, p1, p2}, Lsun/security/ssl/BaseSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@1d
    .line 619
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    #@20
    .line 607
    return-void
.end method

.method doneConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 634
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    #@a
    .line 635
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    #@10
    .line 645
    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    #@13
    .line 627
    return-void

    #@14
    .line 637
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@16
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    #@1c
    .line 638
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@1e
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    #@24
    goto :goto_0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1837
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 1836
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
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    const/4 v2, 0x6

    #@2
    const/4 v4, 0x4

    #@3
    monitor-enter p0

    #@4
    .line 1851
    :try_start_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@a
    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1852
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@10
    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@12
    invoke-virtual {v3}, Lsun/security/ssl/InputRecord;->close()V

    #@15
    .line 1854
    :cond_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@17
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@1a
    .line 1855
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 1856
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    #@20
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@23
    .line 1859
    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@25
    .line 1860
    .local v0, "oldState":I
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@27
    if-ge v3, v4, :cond_2

    #@29
    .line 1861
    const/4 v3, 0x4

    #@2a
    iput v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@2c
    .line 1869
    :cond_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@2e
    if-nez v3, :cond_5

    #@30
    .line 1873
    const/4 v3, 0x1

    #@31
    if-ne v0, v3, :cond_3

    #@33
    .line 1874
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    #@35
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    #@37
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    #@3a
    move-result v4

    #@3b
    int-to-long v4, v4

    #@3c
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@3f
    .line 1878
    :cond_3
    const/4 v3, -0x1

    #@40
    if-eq p1, v3, :cond_4

    #@42
    .line 1879
    const/4 v3, 0x2

    #@43
    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    #@46
    .line 1881
    :cond_4
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    #@48
    if-eqz v3, :cond_7

    #@4a
    .line 1882
    nop

    #@4b
    nop

    #@4c
    .end local p3    # "cause":Ljava/lang/Throwable;
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@4e
    .line 1892
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V

    #@51
    .line 1894
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@53
    if-ge v3, v2, :cond_6

    #@55
    .line 1895
    if-ne v0, v1, :cond_8

    #@57
    :goto_1
    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@59
    .line 1900
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    #@5b
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@5e
    .line 1901
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@60
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    #@63
    .line 1904
    :cond_6
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@65
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .end local v0    # "oldState":I
    :catchall_0
    move-exception v1

    #@67
    monitor-exit p0

    #@68
    throw v1

    #@69
    .line 1885
    .restart local v0    # "oldState":I
    .restart local p3    # "cause":Ljava/lang/Throwable;
    :cond_7
    :try_start_1
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    #@6c
    move-result-object v3

    #@6d
    .line 1884
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    goto :goto_0

    #@70
    .end local p3    # "cause":Ljava/lang/Throwable;
    :cond_8
    move v1, v2

    #@71
    .line 1896
    goto :goto_1
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1842
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 1841
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
    .line 657
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    #@2
    return-object v0
.end method

.method getAppInputStream()Lsun/security/ssl/AppInputStream;
    .locals 1

    #@0
    .prologue
    .line 1204
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    #@2
    return-object v0
.end method

.method getAppOutputStream()Lsun/security/ssl/AppOutputStream;
    .locals 1

    #@0
    .prologue
    .line 1211
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    #@2
    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2215
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z
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
    .line 2371
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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
    .line 2401
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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
    .line 2187
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
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

.method declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2101
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 2102
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@17
    .line 2104
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    return-object v0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
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
    .line 2123
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2124
    new-instance v0, Ljava/net/SocketException;

    #@9
    const-string/jumbo v1, "Socket is closed"

    #@c
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 2131
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@15
    if-nez v0, :cond_1

    #@17
    .line 2132
    new-instance v0, Ljava/net/SocketException;

    #@19
    const-string/jumbo v1, "Socket is not connected"

    #@1c
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 2135
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalSocketAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2239
    :try_start_0
    iget-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B
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

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
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
    .line 2144
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2145
    new-instance v0, Ljava/net/SocketException;

    #@9
    const-string/jumbo v1, "Socket is closed"

    #@c
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 2152
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@15
    if-nez v0, :cond_1

    #@17
    .line 2153
    new-instance v0, Ljava/net/SocketException;

    #@19
    const-string/jumbo v1, "Socket is not connected"

    #@1c
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 2156
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return-object v0
.end method

.method declared-synchronized getRawHostname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2108
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;
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

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2457
    :try_start_0
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@4
    move-result-object v0

    #@5
    .line 2460
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@a
    .line 2461
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@c
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 2463
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

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    #@0
    .prologue
    .line 2168
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 2171
    const/4 v1, 0x0

    #@8
    :try_start_0
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2180
    :cond_0
    :goto_0
    monitor-enter p0

    #@c
    .line 2181
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v1

    #@10
    .line 2172
    :catch_0
    move-exception v0

    #@11
    .line 2174
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@13
    if-eqz v1, :cond_0

    #@15
    const-string/jumbo v1, "handshake"

    #@18
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 2175
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 2176
    const-string/jumbo v3, ", IOException in getSession():  "

    #@30
    .line 2175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 2180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit p0

    #@42
    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2341
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

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
    .line 2381
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

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
    .line 2326
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z
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
    .line 2262
    :try_start_0
    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B
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

.method handleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1751
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    #@4
    .line 1750
    return-void
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 1446
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x7

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method needToSplitPayload()Z
    .locals 2

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 868
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@9
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@d
    if-gt v0, v1, :cond_0

    #@f
    .line 869
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    #@11
    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    #@14
    move-result v0

    #@15
    .line 868
    if-eqz v0, :cond_0

    #@17
    .line 869
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 868
    :cond_0
    const/4 v0, 0x0

    #@1c
    .line 872
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@21
    .line 868
    return v0

    #@22
    .line 870
    :cond_1
    :try_start_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 871
    :catchall_0
    move-exception v0

    #@26
    .line 872
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 871
    throw v0
.end method

.method readDataRecord(Lsun/security/ssl/InputRecord;)V
    .locals 2
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 881
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@4
    move-result v0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 882
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    #@a
    .line 884
    :cond_0
    invoke-direct {p0, p1, v1}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    #@d
    .line 880
    return-void
.end method

.method public declared-synchronized removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2442
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "no listeners"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 2445
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 2446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "listener not registered"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 2448
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    #@24
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 2449
    const/4 v0, 0x0

    #@2b
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    :cond_2
    monitor-exit p0

    #@2e
    .line 2441
    return-void
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2203
    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    #@3
    .line 2205
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2202
    return-void

    #@11
    .line 2206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@13
    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

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
    .line 2354
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@8
    .line 2355
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2353
    return-void

    #@16
    .line 2356
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@18
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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
    .line 2394
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@8
    .line 2395
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2393
    return-void

    #@16
    .line 2396
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@18
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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
    .line 2191
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 2190
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2113
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    #@3
    .line 2114
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 2112
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2228
    if-eqz p1, :cond_1

    #@3
    .line 2229
    const/4 v0, 0x2

    #@4
    .line 2228
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    #@6
    .line 2231
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2232
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c
    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    #@e
    .line 2231
    if-eqz v0, :cond_0

    #@10
    .line 2233
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2227
    return-void

    #@1a
    .line 2229
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 2234
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1e
    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    #@20
    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

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

.method public bridge synthetic setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lsun/security/ssl/BaseSSLSocketImpl;->setPerformancePreferences(III)V

    #@3
    return-void
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2470
    :try_start_0
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    #@4
    .line 2473
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@a
    .line 2474
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@10
    .line 2475
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@12
    if-eqz v0, :cond_0

    #@14
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2469
    return-void

    #@1e
    .line 2476
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@20
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

    #@25
    .line 2477
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@27
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

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

.method public setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 2409
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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
    .line 2410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 2411
    const-string/jumbo v2, ", setSoTimeout("

    #@1f
    .line 2410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 2411
    const-string/jumbo v2, ") called"

    #@2a
    .line 2410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 2413
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@37
    if-ne v0, p0, :cond_1

    #@39
    .line 2414
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSoTimeout(I)V

    #@3c
    .line 2408
    :goto_0
    return-void

    #@3d
    .line 2416
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@3f
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@42
    goto :goto_0
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
    .line 2272
    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 2315
    :cond_0
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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
    .line 2316
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 2317
    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    #@27
    .line 2316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 2318
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@2d
    .line 2316
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
    .line 2320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3a
    .line 2321
    const-string/jumbo v1, "Cannot change mode after SSL traffic has started"

    #@3d
    .line 2320
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
    .line 2280
    :pswitch_0
    :try_start_1
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@46
    if-eqz p1, :cond_3

    #@48
    move v2, v0

    #@49
    :goto_0
    if-eq v3, v2, :cond_2

    #@4b
    .line 2281
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4d
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@4f
    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    #@52
    move-result v2

    #@53
    .line 2280
    if-eqz v2, :cond_2

    #@55
    .line 2282
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

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
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@60
    .line 2284
    :cond_2
    if-eqz p1, :cond_5

    #@62
    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    :goto_3
    monitor-exit p0

    #@65
    .line 2271
    return-void

    #@66
    :cond_3
    move v2, v1

    #@67
    .line 2280
    goto :goto_0

    #@68
    :cond_4
    move v2, v1

    #@69
    .line 2282
    goto :goto_1

    #@6a
    :cond_5
    move v0, v1

    #@6b
    .line 2284
    goto :goto_2

    #@6c
    .line 2295
    :pswitch_1
    :try_start_2
    sget-boolean v2, Lsun/security/ssl/SSLSocketImpl;->-assertionsDisabled:Z

    #@6e
    if-nez v2, :cond_7

    #@70
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@72
    if-eqz v2, :cond_6

    #@74
    move v2, v1

    #@75
    :goto_4
    if-nez v2, :cond_7

    #@77
    new-instance v0, Ljava/lang/AssertionError;

    #@79
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@7c
    throw v0

    #@7d
    :cond_6
    move v2, v0

    #@7e
    goto :goto_4

    #@7f
    .line 2296
    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@81
    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    #@84
    move-result v2

    #@85
    if-nez v2, :cond_0

    #@87
    .line 2302
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@89
    if-eqz p1, :cond_9

    #@8b
    move v2, v0

    #@8c
    :goto_5
    if-eq v3, v2, :cond_8

    #@8e
    .line 2303
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@90
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@92
    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    #@95
    move-result v2

    #@96
    .line 2302
    if-eqz v2, :cond_8

    #@98
    .line 2304
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@9a
    if-eqz p1, :cond_a

    #@9c
    move v2, v0

    #@9d
    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@a0
    move-result-object v2

    #@a1
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@a3
    .line 2306
    :cond_8
    if-eqz p1, :cond_b

    #@a5
    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    #@a7
    .line 2307
    const/4 v0, 0x0

    #@a8
    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    #@aa
    .line 2308
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    goto :goto_3

    #@ae
    :cond_9
    move v2, v1

    #@af
    .line 2302
    goto :goto_5

    #@b0
    :cond_a
    move v2, v1

    #@b1
    .line 2304
    goto :goto_6

    #@b2
    :cond_b
    move v0, v1

    #@b3
    .line 2306
    goto :goto_7

    #@b4
    .line 2272
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
    .line 2095
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@3
    .line 2096
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    #@5
    iget-object v0, v0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@7
    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 2094
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2251
    if-eqz p1, :cond_1

    #@3
    .line 2252
    const/4 v0, 0x1

    #@4
    .line 2251
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    #@6
    .line 2254
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2255
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@c
    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    #@e
    .line 2254
    if-eqz v0, :cond_0

    #@10
    .line 2256
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    .line 2250
    return-void

    #@1a
    .line 2252
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 2257
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    #@1e
    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    #@20
    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

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

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1323
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V

    #@4
    .line 1321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2529
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x50

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 2531
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 2532
    const-string/jumbo v1, "["

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 2533
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@1a
    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 2534
    const-string/jumbo v1, ": "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 2536
    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@29
    if-ne v1, p0, :cond_0

    #@2b
    .line 2537
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 2541
    :goto_0
    const-string/jumbo v1, "]"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 2543
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 2539
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@3f
    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    goto :goto_0
.end method

.method waitForClose(Z)V
    .locals 6
    .param p1, "rethrow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1687
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "ssl"

    #@7
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1688
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 1689
    const-string/jumbo v5, ", waiting for close_notify or alert: state "

    #@1f
    .line 1688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 1690
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@26
    move-result v5

    #@27
    .line 1688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 1696
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@35
    move-result v2

    #@36
    .local v2, "state":I
    const/4 v3, 0x6

    #@37
    if-eq v2, v3, :cond_2

    #@39
    .line 1697
    const/4 v3, 0x4

    #@3a
    if-eq v2, v3, :cond_2

    #@3c
    const/4 v3, 0x7

    #@3d
    if-eq v2, v3, :cond_2

    #@3f
    .line 1699
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@41
    if-nez v3, :cond_1

    #@43
    .line 1700
    new-instance v3, Lsun/security/ssl/InputRecord;

    #@45
    invoke-direct {v3}, Lsun/security/ssl/InputRecord;-><init>()V

    #@48
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@4a
    .line 1705
    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    #@4c
    const/4 v4, 0x1

    #@4d
    invoke-direct {p0, v3, v4}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@50
    goto :goto_0

    #@51
    .line 1706
    :catch_0
    move-exception v1

    #@52
    .local v1, "e":Ljava/net/SocketTimeoutException;
    goto :goto_0

    #@53
    .line 1710
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :cond_2
    const/4 v3, 0x0

    #@54
    :try_start_2
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@56
    .line 1686
    .end local v2    # "state":I
    :cond_3
    return-void

    #@57
    .line 1711
    :catch_1
    move-exception v0

    #@58
    .line 1712
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@5a
    if-eqz v3, :cond_4

    #@5c
    const-string/jumbo v3, "ssl"

    #@5f
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_4

    #@65
    .line 1713
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 1714
    const-string/jumbo v5, ", Exception while waiting for close "

    #@77
    .line 1713
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@86
    .line 1716
    :cond_4
    if-eqz p1, :cond_3

    #@88
    .line 1717
    throw v0
.end method

.method warning(B)V
    .locals 1
    .param p1, "description"    # B

    #@0
    .prologue
    .line 1832
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    #@4
    .line 1831
    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;)V
    .locals 1
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 672
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;Z)V

    #@4
    .line 671
    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;Z)V
    .locals 7
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .param p2, "holdRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 687
    :goto_0
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@4
    move-result v3

    #@5
    const/16 v4, 0x17

    #@7
    if-ne v3, v4, :cond_1

    #@9
    .line 693
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    #@c
    move-result v3

    #@d
    packed-switch v3, :pswitch_data_0

    #@10
    .line 729
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    #@12
    const-string/jumbo v4, "State error, send app data"

    #@15
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 702
    :pswitch_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    #@1c
    goto :goto_0

    #@1d
    .line 711
    :pswitch_1
    const-string/jumbo v3, "error while writing to socket"

    #@20
    .line 710
    invoke-virtual {p0, v5, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 719
    :pswitch_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 720
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    #@2a
    throw v3

    #@2b
    .line 722
    :cond_0
    new-instance v3, Ljava/net/SocketException;

    #@2d
    const-string/jumbo v4, "Socket closed"

    #@30
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 741
    :cond_1
    :pswitch_3
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->isEmpty()Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_2

    #@3a
    .line 746
    invoke-virtual {p1, v5}, Lsun/security/ssl/OutputRecord;->isAlert(B)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_7

    #@40
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSoLinger()I

    #@43
    move-result v3

    #@44
    if-ltz v3, :cond_7

    #@46
    .line 749
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@49
    move-result v1

    #@4a
    .line 751
    .local v1, "interrupted":Z
    :try_start_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4c
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSoLinger()I

    #@4f
    move-result v4

    #@50
    int-to-long v4, v4

    #@51
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@53
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_3

    #@59
    .line 753
    :try_start_1
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 755
    :try_start_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5e
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@61
    .line 795
    .end local v1    # "interrupted":Z
    :goto_1
    if-eqz v1, :cond_2

    #@63
    .line 796
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@6a
    .line 682
    :cond_2
    :goto_2
    return-void

    #@6b
    .line 754
    .restart local v1    # "interrupted":Z
    :catchall_0
    move-exception v3

    #@6c
    .line 755
    :try_start_3
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6e
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@71
    .line 754
    throw v3

    #@72
    .line 789
    :catch_0
    move-exception v0

    #@73
    .line 791
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    #@74
    .local v1, "interrupted":Z
    goto :goto_1

    #@75
    .line 758
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    .local v1, "interrupted":Z
    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@77
    .line 759
    const-string/jumbo v3, "SO_LINGER timeout, close_notify message cannot be sent."

    #@7a
    .line 758
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@7d
    .line 766
    .local v2, "ssle":Ljavax/net/ssl/SSLException;
    iget-object v3, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@7f
    if-eq v3, p0, :cond_4

    #@81
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    #@83
    if-eqz v3, :cond_6

    #@85
    .line 771
    :cond_4
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    #@87
    if-eqz v3, :cond_5

    #@89
    const-string/jumbo v3, "ssl"

    #@8c
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_5

    #@92
    .line 772
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@94
    new-instance v4, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    .line 773
    const-string/jumbo v5, ", received Exception: "

    #@a4
    .line 772
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b3
    .line 787
    :cond_5
    :goto_3
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    #@b5
    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    #@b8
    goto :goto_1

    #@b9
    .line 770
    :cond_6
    const/4 v3, -0x1

    #@ba
    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    #@bd
    goto :goto_3

    #@be
    .line 799
    .end local v1    # "interrupted":Z
    .end local v2    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@c3
    .line 801
    :try_start_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c6
    .line 803
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@c8
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@cb
    goto :goto_2

    #@cc
    .line 802
    :catchall_1
    move-exception v3

    #@cd
    .line 803
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@cf
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@d2
    .line 802
    throw v3

    #@d3
    .line 693
    nop

    #@d4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
