.class final Lcom/android/org/conscrypt/ConscryptEngine;
.super Lcom/android/org/conscrypt/AbstractConscryptEngine;
.source "ConscryptEngine.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final blacklist CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static blacklist defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;


# instance fields
.field private blacklist activeSession:Lcom/android/org/conscrypt/ActiveSession;

.field private blacklist bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

.field private blacklist channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

.field private final blacklist externalSession:Ljavax/net/ssl/SSLSession;

.field private blacklist handshakeFinished:Z

.field private blacklist handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

.field private blacklist lazyDirectBuffer:Ljava/nio/ByteBuffer;

.field private blacklist maxSealOverhead:I

.field private final blacklist networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

.field private blacklist peerHostname:Ljava/lang/String;

.field private final blacklist peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

.field private final blacklist singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final blacklist singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private final blacklist ssl:Lcom/android/org/conscrypt/NativeSsl;

.field private final blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist state:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mprovideHandshakeSession(Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideSession(Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 108
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 110
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 112
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 113
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 115
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 185
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 121
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 163
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 164
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 181
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 182
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 186
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 187
    invoke-static {}, Lcom/android/org/conscrypt/PeerInfoProvider;->nullProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 188
    invoke-static {p1, p0, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 190
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .registers 6
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "peerInfoProvider"    # Lcom/android/org/conscrypt/PeerInfoProvider;
    .param p3, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 200
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 121
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 163
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 164
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 181
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 182
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 201
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 202
    const-string v0, "peerInfoProvider"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/PeerInfoProvider;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 203
    invoke-static {p1, p0, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 204
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 205
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 192
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 121
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 163
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 164
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 181
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 182
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 193
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 194
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 195
    invoke-static {p3, p0, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 197
    return-void
.end method

.method private blacklist beginHandshakeInternal()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 410
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_6a

    .line 424
    :pswitch_5
    return-void

    .line 421
    :pswitch_6
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Engine has already been closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_e
    nop

    .line 427
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 429
    const/4 v0, 0x1

    .line 432
    .local v0, "releaseResources":Z
    :try_start_14
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2, v3}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 437
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    .line 438
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v3

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 437
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 439
    .local v1, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v1, :cond_3e

    .line 440
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 444
    .end local v1    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_3e
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getMaxSealOverhead()I

    move-result v1

    iput v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 445
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_49} :catch_52
    .catchall {:try_start_14 .. :try_end_49} :catchall_50

    .line 446
    const/4 v0, 0x0

    .line 451
    if-eqz v0, :cond_4f

    .line 452
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 455
    :cond_4f
    return-void

    .line 451
    :catchall_50
    move-exception v1

    goto :goto_5b

    .line 447
    :catch_52
    move-exception v1

    .line 448
    .local v1, "e":Ljava/io/IOException;
    :try_start_53
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 449
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v2

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v2
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_50

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_5b
    if-eqz v0, :cond_60

    .line 452
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 454
    :cond_60
    throw v1

    .line 412
    .end local v0    # "releaseResources":Z
    :pswitch_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/server mode must be set before handshake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p1, "dstsOffset"    # I
    .param p2, "dstsLength"    # I

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "capacity":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 940
    aget-object v2, p0, v1

    .line 941
    .local v2, "dst":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    const-string v4, "dsts[%d] is null"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 942
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_29

    .line 945
    if-lt v1, p1, :cond_26

    add-int v3, p1, p2

    if-ge v1, v3, :cond_26

    .line 946
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    .line 939
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 943
    .restart local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_29
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 949
    .end local v1    # "i":I
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_2f
    return v0
.end method

.method private static blacklist calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .registers 10
    .param p0, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p1, "srcsOffset"    # I
    .param p2, "srcsEndOffset"    # I

    .line 953
    const-wide/16 v0, 0x0

    .line 954
    .local v0, "len":J
    move v2, p1

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_31

    .line 955
    aget-object v3, p0, v2

    .line 956
    .local v3, "src":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_12

    .line 959
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 954
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 957
    .restart local v3    # "src":Ljava/nio/ByteBuffer;
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srcs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 961
    .end local v2    # "i":I
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    :cond_31
    return-wide v0
.end method

.method private blacklist clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist closeAll()V
    .registers 1

    .line 1344
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 1346
    return-void
.end method

.method private blacklist closeAndFreeResources()V
    .registers 2

    .line 1664
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1665
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_e

    .line 1666
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1668
    :cond_e
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    if-eqz v0, :cond_17

    .line 1669
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->close()V

    .line 1671
    :cond_17
    return-void
.end method

.method private blacklist convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1130
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    goto :goto_e

    .line 1133
    :cond_9
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_e
    :goto_e
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    return-object v0
.end method

.method private blacklist directByteBufferAddress(Ljava/nio/ByteBuffer;I)J
    .registers 7
    .param p1, "directBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I

    .line 1212
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist finishHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1002
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    if-eqz v0, :cond_c

    .line 1003
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HandshakeListener;->onHandshakeFinished()V

    .line 1005
    :cond_c
    return-void
.end method

.method private blacklist freeIfDone()V
    .registers 2

    .line 1349
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1350
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 1352
    :cond_f
    return-void
.end method

.method static blacklist getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;
    .registers 1

    .line 229
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-object v0
.end method

.method private blacklist getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .line 1333
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_c

    .line 1339
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1337
    :pswitch_8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "pending"    # I

    .line 1329
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_b
    return-object v0
.end method

.method private blacklist getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4

    .line 540
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_7

    .line 541
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 543
    :cond_7
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_36

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :pswitch_27
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 545
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_33
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33
        :pswitch_33
        :pswitch_2a
        :pswitch_27
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private blacklist getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 1203
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_13

    .line 1204
    nop

    .line 1205
    const/16 v0, 0x4000

    const/16 v1, 0x4145

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1204
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    .line 1207
    :cond_13
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1208
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private blacklist handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->doHandshake()I

    move-result v0

    .line 970
    .local v0, "ssl_error_code":I
    packed-switch v0, :pswitch_data_36

    .line 985
    .end local v0    # "ssl_error_code":I
    goto :goto_16

    .line 974
    .restart local v0    # "ssl_error_code":I
    :pswitch_a
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1

    .line 972
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_29

    return-object v1

    .line 990
    .end local v0    # "ssl_error_code":I
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V

    .line 992
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->finishHandshake()V

    .line 993
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 994
    :catch_29
    move-exception v0

    goto :goto_31

    .line 980
    :catch_2b
    move-exception v0

    .line 983
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 984
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_29

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_31
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist isHandshakeStarted()Z
    .registers 2

    .line 362
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_a

    .line 367
    const/4 v0, 0x1

    return v0

    .line 365
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1319
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_d

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_d

    .line 1322
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1324
    :cond_d
    return-object p1
.end method

.method private blacklist newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 7
    .param p1, "bytesConsumed"    # I
    .param p2, "bytesProduced"    # I
    .param p3, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1363
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1364
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_c

    move-object v2, p3

    goto :goto_10

    :cond_c
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    :goto_10
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1363
    return-object v0
.end method

.method private static blacklist newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 5
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .param p2, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 210
    :try_start_0
    invoke-static {p0, p1, p2, p1}, Lcom/android/org/conscrypt/NativeSsl;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 211
    :catch_5
    move-exception v0

    .line 212
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "err"    # Ljava/lang/String;

    .line 1355
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_a

    .line 1356
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1358
    :cond_a
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist pendingInboundCleartextBytes()I
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method private static blacklist pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2
    .param p0, "pendingOutboundBytes"    # I

    .line 572
    if-lez p0, :cond_5

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_7

    :cond_5
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_7
    return-object v0
.end method

.method private blacklist provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 3

    .line 626
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_e

    .line 627
    :cond_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    .line 626
    :goto_e
    return-object v0
.end method

.method private blacklist provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 618
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    goto :goto_f

    .line 619
    :cond_b
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_f
    monitor-exit v0

    .line 618
    return-object v1

    .line 620
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 605
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_16

    .line 606
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_14

    :cond_10
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_14
    monitor-exit v0

    return-object v1

    .line 608
    :cond_16
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_21

    .line 610
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 612
    :cond_21
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    monitor-exit v0

    return-object v1

    .line 613
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private blacklist readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pending"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, "bytesRead":I
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1261
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p2, :cond_2d

    .line 1262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1263
    .local v2, "limit":I
    sub-int v3, v2, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1264
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1265
    invoke-direct {p0, p1, v1, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4

    move v0, v4

    .line 1267
    if-lez v0, :cond_2d

    .line 1268
    add-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2d

    .line 1272
    :cond_28
    invoke-direct {p0, p1, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e

    move v0, v4

    .line 1276
    .end local v2    # "limit":I
    .end local v3    # "len":I
    :cond_2d
    :goto_2d
    return v0

    .line 1277
    .end local v0    # "bytesRead":I
    .end local v1    # "pos":I
    :catch_2e
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    const/4 v0, 0x0

    .line 1290
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1291
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1292
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1297
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1300
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1301
    .local v2, "bytesToRead":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1302
    .local v3, "bytesRead":I
    if-lez v3, :cond_2d

    .line 1303
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1304
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1305
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_34

    .line 1308
    :cond_2d
    nop

    .line 1310
    if-eqz v0, :cond_33

    .line 1312
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1308
    :cond_33
    return v3

    .line 1310
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3a

    .line 1312
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1314
    :cond_3a
    throw v1
.end method

.method private blacklist readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .param p4, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    .line 1220
    .local v0, "pendingNet":I
    if-lez v0, :cond_46

    .line 1222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1223
    .local v1, "capacity":I
    if-ge v1, v0, :cond_22

    .line 1224
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1226
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v4, :cond_16

    move-object v4, p4

    goto :goto_1a

    :cond_16
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 1225
    :goto_1a
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1224
    return-object v2

    .line 1231
    :cond_22
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 1233
    .local v2, "produced":I
    if-gtz v2, :cond_2c

    .line 1237
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V

    goto :goto_2e

    .line 1239
    :cond_2c
    add-int/2addr p3, v2

    .line 1240
    sub-int/2addr v0, v2

    .line 1243
    :goto_2e
    new-instance v3, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    .line 1245
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v5, :cond_3a

    move-object v5, p4

    goto :goto_3e

    :cond_3a
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 1244
    :goto_3e
    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-direct {v3, v4, v5, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_48

    .line 1243
    return-object v3

    .line 1248
    .end local v1    # "capacity":I
    .end local v2    # "produced":I
    :cond_46
    const/4 v1, 0x0

    return-object v1

    .line 1249
    .end local v0    # "pendingNet":I
    :catch_48
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readPlaintextData(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1073
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1074
    .local v1, "limit":I
    const/16 v2, 0x4145

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1075
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1076
    invoke-direct {p0, p1, v0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1077
    .local v3, "bytesRead":I
    if-lez v3, :cond_21

    .line 1078
    add-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1080
    :cond_21
    return v3

    .line 1084
    .end local v3    # "bytesRead":I
    :cond_22
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result v3
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_26} :catch_27

    return v3

    .line 1085
    .end local v0    # "pos":I
    .end local v1    # "limit":I
    .end local v2    # "len":I
    :catch_27
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1097
    const/4 v0, 0x0

    .line 1100
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1101
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1102
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1107
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1111
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1112
    .local v2, "bytesToRead":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1113
    .local v3, "bytesRead":I
    if-lez v3, :cond_2d

    .line 1115
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1117
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_34

    .line 1120
    :cond_2d
    nop

    .line 1122
    if-eqz v0, :cond_33

    .line 1124
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1120
    :cond_33
    return v3

    .line 1122
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3a

    .line 1124
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1126
    :cond_3a
    throw v1
.end method

.method private blacklist resetSingleDstBuffer()V
    .registers 4

    .line 1809
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1810
    return-void
.end method

.method private blacklist resetSingleSrcBuffer()V
    .registers 4

    .line 1800
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1801
    return-void
.end method

.method private blacklist sendSSLShutdown()V
    .registers 2

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1660
    goto :goto_7

    .line 1657
    :catch_6
    move-exception v0

    .line 1661
    :goto_7
    return-void
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1817
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method static blacklist setDefaultBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 1
    .param p0, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 221
    sput-object p0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 222
    return-void
.end method

.method private blacklist singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1804
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1805
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private blacklist singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1795
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1796
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private blacklist transitionTo(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 1821
    sparse-switch p1, :sswitch_data_38

    goto :goto_34

    .line 1828
    :sswitch_4
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_34

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_34

    .line 1829
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_34

    .line 1823
    :sswitch_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1824
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 1825
    nop

    .line 1839
    :cond_34
    :goto_34
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 1840
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x2 -> :sswitch_21
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method private blacklist writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1141
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1143
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1144
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "bytesWritten":I
    goto :goto_13

    .line 1146
    .end local v1    # "bytesWritten":I
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1149
    .restart local v1    # "bytesWritten":I
    :goto_13
    if-lez v1, :cond_1a

    .line 1150
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1153
    :cond_1a
    return v1

    .line 1154
    .end local v0    # "pos":I
    .end local v1    # "bytesWritten":I
    :catch_1b
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1156
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    const/4 v0, 0x0

    .line 1168
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1169
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1170
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1175
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1178
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1179
    .local v2, "limit":I
    sub-int v3, v2, p2

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1180
    .local v3, "bytesToCopy":I
    add-int v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1181
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1183
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1186
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1188
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 1191
    .local v4, "bytesWritten":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_44

    .line 1193
    nop

    .line 1195
    if-eqz v0, :cond_43

    .line 1197
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1193
    :cond_43
    return v4

    .line 1195
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToCopy":I
    .end local v4    # "bytesWritten":I
    :catchall_44
    move-exception v1

    if-eqz v0, :cond_4a

    .line 1197
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1199
    :cond_4a
    throw v1
.end method

.method private blacklist writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1014
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1016
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1017
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "sslWrote":I
    goto :goto_13

    .line 1019
    .end local v1    # "sslWrote":I
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1021
    .restart local v1    # "sslWrote":I
    :goto_13
    if-lez v1, :cond_1a

    .line 1022
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1024
    :cond_1a
    return v1

    .line 1025
    .end local v0    # "pos":I
    .end local v1    # "sslWrote":I
    :catch_1b
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    const/4 v0, 0x0

    .line 1038
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1039
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1040
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1045
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1049
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1050
    .local v2, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1051
    .local v3, "bytesToWrite":I
    add-int v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1052
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1053
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1055
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1056
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1058
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3d

    .line 1060
    if-eqz v0, :cond_3c

    .line 1062
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1058
    :cond_3c
    return v4

    .line 1060
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToWrite":I
    :catchall_3d
    move-exception v1

    if-eqz v0, :cond_43

    .line 1062
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1064
    :cond_43
    throw v1
.end method


# virtual methods
.method public whitelist test-api beginHandshake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 405
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 406
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 1702
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_c

    .line 1703
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1704
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1706
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1, p3, p2, v0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .line 1719
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1691
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1692
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1693
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v1, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1695
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_d
    invoke-interface {p1, p2, v1, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1713
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clientCertificateRequested([B[I[[B)V
    .registers 5
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1651
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 1652
    return-void
.end method

.method public blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 1550
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api closeInbound()V
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 460
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_f

    goto :goto_2a

    .line 463
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 464
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_1e

    .line 465
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_21

    .line 467
    :cond_1e
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 469
    :goto_21
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_28

    .line 472
    :cond_25
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 474
    :goto_28
    monitor-exit v0

    .line 475
    return-void

    .line 461
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 474
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist test-api closeOutbound()V
    .registers 6

    .line 479
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 480
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_f

    goto :goto_2d

    .line 483
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 484
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1e

    .line 485
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_21

    .line 487
    :cond_1e
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 489
    :goto_21
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 490
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_2b

    .line 493
    :cond_28
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 495
    :goto_2b
    monitor-exit v0

    .line 496
    return-void

    .line 481
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    .line 495
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1762
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    goto :goto_17

    .line 1765
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    .line 1766
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 1763
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1765
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1678
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_f

    .line 1680
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_14

    .line 1681
    :try_start_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 1682
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_14

    .line 1685
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :cond_f
    :goto_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1686
    nop

    .line 1687
    return-void

    .line 1685
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1686
    throw v0
.end method

.method public whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1784
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 290
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_17

    .line 294
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 291
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v1

    .line 287
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v1

    .line 295
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist test-api getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1789
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return-object v1

    .line 1791
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 535
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 536
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api getNeedClientAuth()Z
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public blacklist getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .line 1725
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 521
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 522
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 523
    return-object v0
.end method

.method public whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 632
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 637
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 1756
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseClientMode()Z
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getWantClientAuth()Z
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method blacklist handshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 585
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 586
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 587
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngine$2;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngine$2;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 594
    :cond_18
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 595
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api isInboundDone()Z
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 653
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 654
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownReceived()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 655
    :cond_16
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit v0

    .line 653
    return v1

    .line 656
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist test-api isOutboundDone()Z
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 662
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 663
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownSent()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 664
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit v0

    .line 662
    return v1

    .line 665
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist maxSealOverhead()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    return v0
.end method

.method public blacklist onNewSessionEstablished(J)V
    .registers 6
    .param p1, "sslSessionNativePtr"    # J

    .line 1594
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1599
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1601
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 1604
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 1605
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1608
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 1606
    :catch_16
    move-exception v0

    .line 1609
    :goto_17
    return-void
.end method

.method public blacklist onSSLStateChange(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 1560
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1561
    const/4 v1, 0x2

    sparse-switch p1, :sswitch_data_3c

    goto :goto_36

    .line 1569
    :sswitch_8
    :try_start_8
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eq v2, v1, :cond_2d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    goto :goto_2d

    .line 1571
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "type":I
    .end local p2    # "val":I
    throw v1

    .line 1574
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "type":I
    .restart local p2    # "val":I
    :cond_2d
    :goto_2d
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1575
    goto :goto_36

    .line 1565
    :sswitch_32
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1566
    nop

    .line 1580
    :goto_36
    monitor-exit v0

    .line 1581
    return-void

    .line 1580
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v1

    nop

    :sswitch_data_3c
    .sparse-switch
        0x10 -> :sswitch_32
        0x20 -> :sswitch_8
    .end sparse-switch
.end method

.method blacklist pendingOutboundEncryptedBytes()I
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->getPendingWrittenBytes()I

    move-result v0

    return v0
.end method

.method public blacklist selectApplicationProtocol([B)I
    .registers 4
    .param p1, "protocols"    # [B

    .line 1775
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1776
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1777
    const/4 v1, 0x3

    return v1

    .line 1779
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    move-result v1

    return v1
.end method

.method public blacklist serverCertificateRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1585
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1586
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 1587
    monitor-exit v0

    .line 1588
    return-void

    .line 1587
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 1555
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 1614
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1750
    nop

    .line 1751
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1750
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1752
    return-void
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1770
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1771
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 5
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 234
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 235
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 239
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 236
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not set buffer allocator after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "bufferAllocator":Lcom/android/org/conscrypt/BufferAllocator;
    throw v1

    .line 240
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "bufferAllocator":Lcom/android/org/conscrypt/BufferAllocator;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method blacklist setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 261
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 265
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 269
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 266
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "enabled":Z
    throw v1

    .line 263
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "enabled":Z
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "enabled":Z
    throw v1

    .line 270
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "enabled":Z
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method blacklist setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 312
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 316
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 317
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_45

    .line 322
    if-nez p1, :cond_1b

    .line 323
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 325
    monitor-exit v0

    return-void

    .line 328
    :cond_1b
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_4d

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_21
    instance-of v2, p1, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_2d

    .line 332
    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/ECKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    move-object v1, v2

    .line 334
    :cond_2d
    if-nez v1, :cond_3a

    .line 336
    const-string v2, "prime256v1"

    .line 337
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    move-object v1, v2

    .line 339
    :cond_3a
    nop

    .line 340
    invoke-static {p1, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_41
    .catch Ljava/security/InvalidKeyException; {:try_start_21 .. :try_end_41} :catch_42
    .catchall {:try_start_21 .. :try_end_41} :catchall_4d

    .line 343
    .end local v1    # "ecParams":Ljava/security/spec/ECParameterSpec;
    goto :goto_43

    .line 341
    :catch_42
    move-exception v1

    .line 344
    :goto_43
    :try_start_43
    monitor-exit v0

    .line 345
    return-void

    .line 318
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    throw v1

    .line 344
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_4d

    throw v1

    .line 313
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed in server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 680
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 681
    return-void
.end method

.method public whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method blacklist setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 5
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .line 352
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 353
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 357
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    .line 358
    monitor-exit v0

    .line 359
    return-void

    .line 354
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Handshake listener must be set before starting the handshake."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "handshakeListener":Lcom/android/org/conscrypt/HandshakeListener;
    throw v1

    .line 358
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "handshakeListener":Lcom/android/org/conscrypt/HandshakeListener;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method blacklist setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 379
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 685
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 686
    return-void
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .line 528
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 529
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 530
    return-void
.end method

.method public whitelist test-api setUseClientMode(Z)V
    .registers 6
    .param p1, "mode"    # Z

    .line 690
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 691
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_14

    .line 695
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 696
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 692
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not change mode after handshake: state == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "mode":Z
    throw v1

    .line 697
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "mode":Z
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method blacklist setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 1735
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 1736
    return-void
.end method

.method public whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 702
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 703
    return-void
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 709
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    .line 711
    :try_start_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 712
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    monitor-exit v0

    .line 709
    return-object v1

    .line 711
    :catchall_17
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 712
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    .line 713
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 714
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 721
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 723
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    .line 721
    return-object v1

    .line 723
    :catchall_10
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 724
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    throw v1

    .line 725
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dsts":[Ljava/nio/ByteBuffer;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 14
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 731
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v1

    .line 733
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p2

    move v7, p3

    move v8, p4

    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .local v6, "dsts":[Ljava/nio/ByteBuffer;
    .local v7, "offset":I
    .local v8, "length":I
    :try_start_d
    invoke-virtual/range {v2 .. v8}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_16

    .line 735
    :try_start_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v1

    .line 733
    return-object p2

    .line 735
    :catchall_16
    move-exception v0

    move-object p2, v0

    goto :goto_1e

    .end local v6    # "dsts":[Ljava/nio/ByteBuffer;
    .end local v7    # "offset":I
    .end local v8    # "length":I
    .restart local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    :catchall_19
    move-exception v0

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object p2, v0

    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .restart local v6    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local v7    # "offset":I
    .restart local v8    # "length":I
    :goto_1e
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 736
    nop

    .end local v6    # "dsts":[Ljava/nio/ByteBuffer;
    .end local v7    # "offset":I
    .end local v8    # "length":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw p2

    .line 737
    .restart local v6    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local v7    # "offset":I
    .restart local v8    # "length":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_23
    move-exception v0

    move-object p2, v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_23

    throw p2
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 26
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 751
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_10

    move v7, v0

    goto :goto_11

    :cond_10
    move v7, v6

    :goto_11
    const-string v8, "srcs is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 752
    if-eqz v4, :cond_1a

    move v7, v0

    goto :goto_1b

    :cond_1a
    move v7, v6

    :goto_1b
    const-string v8, "dsts is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 753
    add-int v7, v3, p3

    array-length v8, v2

    invoke-static {v3, v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 754
    add-int v7, v5, p6

    array-length v8, v4

    invoke-static {v5, v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 757
    invoke-static/range {p4 .. p6}, Lcom/android/org/conscrypt/ConscryptEngine;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v7

    .line 758
    .local v7, "dstLength":I
    add-int v8, v5, p6

    .line 760
    .local v8, "endOffset":I
    add-int v9, v3, p3

    .line 761
    .local v9, "srcsEndOffset":I
    invoke-static {v2, v3, v9}, Lcom/android/org/conscrypt/ConscryptEngine;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v10

    .line 763
    .local v10, "srcLength":J
    iget-object v12, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v12

    .line 764
    :try_start_3b
    iget v13, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    sparse-switch v13, :sswitch_data_1c4

    goto :goto_5d

    .line 771
    :sswitch_41
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 773
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    invoke-direct {v0, v13, v14, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    .line 767
    :sswitch_51
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 768
    goto :goto_5d

    .line 775
    :sswitch_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Client/server mode must be set before calling unwrap"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v10    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v0

    .line 781
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v10    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :goto_5d
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 782
    .local v13, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v14, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v14, :cond_7a

    .line 783
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    move-object v13, v14

    .line 784
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v14, :cond_70

    .line 785
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 787
    :cond_70
    iget v14, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7a

    .line 788
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 794
    :cond_7a
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v14

    if-gtz v14, :cond_81

    goto :goto_82

    :cond_81
    move v0, v6

    :goto_82
    move v14, v0

    .line 795
    .local v14, "noCleartextDataAvailable":Z
    const/4 v0, 0x0

    .line 796
    .local v0, "lenRemaining":I
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-lez v15, :cond_c8

    if-eqz v14, :cond_c8

    .line 797
    const-wide/16 v15, 0x5

    cmp-long v15, v10, v15

    if-gez v15, :cond_a2

    .line 799
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move/from16 v17, v0

    .end local v0    # "lenRemaining":I
    .local v17, "lenRemaining":I
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v15, v6, v0, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v15

    .line 802
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :cond_a2
    move/from16 v17, v0

    .end local v0    # "lenRemaining":I
    .restart local v17    # "lenRemaining":I
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 803
    .local v0, "packetLength":I
    if-ltz v0, :cond_c0

    .line 807
    int-to-long v4, v0

    cmp-long v2, v10, v4

    if-gez v2, :cond_bd

    .line 810
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v2

    .line 814
    :cond_bd
    nop

    .line 815
    .end local v17    # "lenRemaining":I
    .local v0, "lenRemaining":I
    const/4 v6, 0x0

    goto :goto_dd

    .line 804
    .local v0, "packetLength":I
    .restart local v17    # "lenRemaining":I
    :cond_c0
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "Unable to parse TLS packet header"

    invoke-direct {v2, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v10    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 796
    .end local v17    # "lenRemaining":I
    .local v0, "lenRemaining":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v10    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_c8
    move/from16 v17, v0

    .line 815
    .end local v0    # "lenRemaining":I
    .restart local v17    # "lenRemaining":I
    if-eqz v14, :cond_da

    .line 817
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v0, v2, v4, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12
    :try_end_d9
    .catchall {:try_start_3b .. :try_end_d9} :catchall_1bf

    return-object v0

    .line 815
    :cond_da
    const/4 v6, 0x0

    move/from16 v0, v17

    .line 821
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :goto_dd
    const/4 v2, 0x0

    .line 822
    .local v2, "bytesConsumed":I
    if-lez v0, :cond_10e

    if-ge v3, v9, :cond_10e

    .line 824
    .end local p2    # "srcsOffset":I
    .local v3, "srcsOffset":I
    :cond_e2
    :try_start_e2
    aget-object v4, p1, v3

    .line 825
    .local v4, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 826
    .local v5, "remaining":I
    if-nez v5, :cond_ed

    .line 829
    add-int/lit8 v3, v3, 0x1

    .line 830
    goto :goto_100

    .line 833
    :cond_ed
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-direct {v1, v4, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 834
    .local v15, "written":I
    if-lez v15, :cond_108

    .line 835
    add-int/2addr v2, v15

    .line 836
    sub-int/2addr v0, v15

    .line 837
    if-nez v0, :cond_fc

    .line 839
    goto :goto_105

    .line 842
    :cond_fc
    if-ne v15, v5, :cond_105

    .line 843
    add-int/lit8 v3, v3, 0x1

    .line 859
    .end local v4    # "src":Ljava/nio/ByteBuffer;
    .end local v5    # "remaining":I
    .end local v15    # "written":I
    :goto_100
    if-lt v3, v9, :cond_e2

    move v4, v2

    move v2, v0

    goto :goto_110

    .line 863
    :cond_105
    :goto_105
    move v4, v2

    move v2, v0

    goto :goto_110

    .line 856
    .restart local v4    # "src":Ljava/nio/ByteBuffer;
    .restart local v5    # "remaining":I
    .restart local v15    # "written":I
    :cond_108
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_10b
    .catchall {:try_start_e2 .. :try_end_10b} :catchall_1c2

    .line 857
    move v4, v2

    move v2, v0

    goto :goto_110

    .line 863
    .end local v3    # "srcsOffset":I
    .end local v4    # "src":Ljava/nio/ByteBuffer;
    .end local v5    # "remaining":I
    .end local v15    # "written":I
    .restart local p2    # "srcsOffset":I
    :cond_10e
    move v4, v2

    move v2, v0

    .end local v0    # "lenRemaining":I
    .end local p2    # "srcsOffset":I
    .local v2, "lenRemaining":I
    .restart local v3    # "srcsOffset":I
    .local v4, "bytesConsumed":I
    :goto_110
    const/4 v5, 0x0

    .line 865
    .local v5, "bytesProduced":I
    if-lez v7, :cond_180

    .line 867
    move/from16 v0, p5

    .local v0, "idx":I
    :goto_115
    if-ge v0, v8, :cond_17b

    .line 868
    :try_start_117
    aget-object v15, p4, v0

    .line 869
    .local v15, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-nez v16, :cond_120

    .line 870
    goto :goto_131

    .line 873
    :cond_120
    invoke-direct {v1, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v16
    :try_end_124
    .catch Ljava/io/InterruptedIOException; {:try_start_117 .. :try_end_124} :catch_177
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_124} :catch_173
    .catchall {:try_start_117 .. :try_end_124} :catchall_1c2

    .line 874
    .local v16, "bytesRead":I
    if-lez v16, :cond_13e

    .line 875
    add-int v5, v5, v16

    .line 876
    :try_start_128
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v17
    :try_end_12c
    .catch Ljava/io/InterruptedIOException; {:try_start_128 .. :try_end_12c} :catch_139
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12c} :catch_134
    .catchall {:try_start_128 .. :try_end_12c} :catchall_1c2

    if-eqz v17, :cond_131

    .line 879
    move/from16 p2, v2

    goto :goto_17f

    .line 867
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    .end local v16    # "bytesRead":I
    :cond_131
    :goto_131
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 912
    .end local v0    # "idx":I
    :catch_134
    move-exception v0

    move/from16 p2, v2

    goto/16 :goto_1b0

    .line 910
    :catch_139
    move-exception v0

    move/from16 p2, v2

    goto/16 :goto_1b9

    .line 882
    .restart local v0    # "idx":I
    .restart local v15    # "dst":Ljava/nio/ByteBuffer;
    .restart local v16    # "bytesRead":I
    :cond_13e
    packed-switch v16, :pswitch_data_1d6

    .line 898
    :pswitch_141
    move/from16 v17, v0

    move/from16 p2, v2

    .end local v0    # "idx":I
    .end local v2    # "lenRemaining":I
    .local v17, "idx":I
    .local p2, "lenRemaining":I
    :try_start_145
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V
    :try_end_148
    .catch Ljava/io/InterruptedIOException; {:try_start_145 .. :try_end_148} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_1af
    .catchall {:try_start_145 .. :try_end_148} :catchall_1c2

    goto :goto_16c

    .line 885
    .end local v17    # "idx":I
    .end local p2    # "lenRemaining":I
    .restart local v0    # "idx":I
    .restart local v2    # "lenRemaining":I
    :pswitch_149
    :try_start_149
    invoke-direct {v1, v4, v5, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6
    :try_end_14d
    .catch Ljava/io/InterruptedIOException; {:try_start_149 .. :try_end_14d} :catch_139
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14d} :catch_134
    .catchall {:try_start_149 .. :try_end_14d} :catchall_1c2

    :try_start_14d
    monitor-exit v12
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_1c2

    return-object v6

    .line 890
    :pswitch_14f
    :try_start_14f
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 891
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    move/from16 v17, v0

    .end local v0    # "idx":I
    .restart local v17    # "idx":I
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 892
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v18
    :try_end_15c
    .catch Ljava/io/InterruptedIOException; {:try_start_14f .. :try_end_15c} :catch_177
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_15c} :catch_173
    .catchall {:try_start_14f .. :try_end_15c} :catchall_1c2

    if-lez v18, :cond_161

    .line 893
    :try_start_15e
    sget-object v18, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_160
    .catch Ljava/io/InterruptedIOException; {:try_start_15e .. :try_end_160} :catch_139
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_160} :catch_134
    .catchall {:try_start_15e .. :try_end_160} :catchall_1c2

    goto :goto_163

    :cond_161
    :try_start_161
    sget-object v18, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_163
    .catch Ljava/io/InterruptedIOException; {:try_start_161 .. :try_end_163} :catch_177
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_163} :catch_173
    .catchall {:try_start_161 .. :try_end_163} :catchall_1c2

    :goto_163
    move/from16 p2, v2

    move-object/from16 v2, v18

    .end local v2    # "lenRemaining":I
    .restart local p2    # "lenRemaining":I
    :try_start_167
    invoke-direct {v6, v0, v2, v4, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_16a
    .catch Ljava/io/InterruptedIOException; {:try_start_167 .. :try_end_16a} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_1af
    .catchall {:try_start_167 .. :try_end_16a} :catchall_1c2

    :try_start_16a
    monitor-exit v12
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_1c2

    .line 891
    return-object v6

    .line 899
    :goto_16c
    :try_start_16c
    const-string v0, "SSL_read"

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local v3    # "srcsOffset":I
    .end local v4    # "bytesConsumed":I
    .end local v5    # "bytesProduced":I
    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v10    # "srcLength":J
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "lenRemaining":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v0

    .line 912
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    .end local v16    # "bytesRead":I
    .end local v17    # "idx":I
    .restart local v2    # "lenRemaining":I
    .restart local v3    # "srcsOffset":I
    .restart local v4    # "bytesConsumed":I
    .restart local v5    # "bytesProduced":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v10    # "srcLength":J
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "noCleartextDataAvailable":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catch_173
    move-exception v0

    move/from16 p2, v2

    .end local v2    # "lenRemaining":I
    .restart local p2    # "lenRemaining":I
    goto :goto_1b0

    .line 910
    .end local p2    # "lenRemaining":I
    .restart local v2    # "lenRemaining":I
    :catch_177
    move-exception v0

    move/from16 p2, v2

    .end local v2    # "lenRemaining":I
    .restart local p2    # "lenRemaining":I
    goto :goto_1b9

    .line 867
    .end local p2    # "lenRemaining":I
    .restart local v0    # "idx":I
    .restart local v2    # "lenRemaining":I
    :cond_17b
    move/from16 v17, v0

    move/from16 p2, v2

    .end local v0    # "idx":I
    .end local v2    # "lenRemaining":I
    .restart local p2    # "lenRemaining":I
    :goto_17f
    goto :goto_187

    .line 908
    .end local p2    # "lenRemaining":I
    .restart local v2    # "lenRemaining":I
    :cond_180
    move/from16 p2, v2

    .end local v2    # "lenRemaining":I
    .restart local p2    # "lenRemaining":I
    iget-object v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->forceRead()V
    :try_end_187
    .catch Ljava/io/InterruptedIOException; {:try_start_16c .. :try_end_187} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_187} :catch_1af
    .catchall {:try_start_16c .. :try_end_187} :catchall_1c2

    .line 917
    :goto_187
    nop

    .line 922
    :try_start_188
    iget-boolean v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_190

    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v6

    .line 923
    .local v6, "pendingCleartextBytes":I
    :cond_190
    if-lez v6, :cond_1a9

    .line 926
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 927
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v15, :cond_19c

    .line 928
    move-object v15, v13

    goto :goto_1a0

    .line 929
    :cond_19c
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    .line 927
    :goto_1a0
    invoke-direct {v1, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    invoke-direct {v0, v2, v15, v4, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    .line 926
    return-object v0

    .line 933
    :cond_1a9
    invoke-direct {v1, v4, v5, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit v12

    return-object v0

    .line 912
    .end local v6    # "pendingCleartextBytes":I
    :catch_1af
    move-exception v0

    .line 915
    .local v0, "e":Ljava/io/IOException;
    :goto_1b0
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 916
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v3    # "srcsOffset":I
    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v10    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 910
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "srcsOffset":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v10    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catch_1b8
    move-exception v0

    .line 911
    .local v0, "e":Ljava/io/InterruptedIOException;
    :goto_1b9
    invoke-direct {v1, v4, v5, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v12

    return-object v2

    .line 934
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "srcsOffset":I
    .end local v4    # "bytesConsumed":I
    .end local v5    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .local p2, "srcsOffset":I
    :catchall_1bf
    move-exception v0

    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    :goto_1c0
    monitor-exit v12
    :try_end_1c1
    .catchall {:try_start_188 .. :try_end_1c1} :catchall_1c2

    throw v0

    :catchall_1c2
    move-exception v0

    goto :goto_1c0

    :sswitch_data_1c4
    .sparse-switch
        0x0 -> :sswitch_55
        0x1 -> :sswitch_51
        0x6 -> :sswitch_41
        0x8 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch -0x6
        :pswitch_14f
        :pswitch_141
        :pswitch_141
        :pswitch_149
        :pswitch_149
    .end packed-switch
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 12
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 742
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "srcs is null"

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 743
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "dsts is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 744
    array-length v5, p1

    const/4 v7, 0x0

    array-length v8, p2

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .local v3, "srcs":[Ljava/nio/ByteBuffer;
    .local v6, "dsts":[Ljava/nio/ByteBuffer;
    invoke-virtual/range {v2 .. v8}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist verifyCertificateChain([[BLjava/lang/String;)V
    .registers 8
    .param p1, "certChain"    # [[B
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1621
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 1624
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1626
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 1627
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 1632
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 1634
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1635
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    goto :goto_36

    .line 1637
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1638
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 1644
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 1645
    return-void

    .line 1628
    .restart local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_38
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No X.509 TrustManager"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v2

    .line 1622
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v0
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_48} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_48

    .line 1642
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1640
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method

.method public whitelist test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1372
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 1374
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    .line 1372
    return-object v1

    .line 1374
    :catchall_10
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 1375
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 1376
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 21
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1382
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_10

    move v7, v5

    goto :goto_11

    :cond_10
    move v7, v6

    :goto_11
    const-string v8, "srcs is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1383
    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v5, v6

    :goto_1a
    const-string v7, "dst is null"

    invoke-static {v5, v7}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1384
    add-int v5, v2, v3

    array-length v7, v0

    invoke-static {v2, v5, v7}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1385
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_15c

    .line 1389
    if-nez v2, :cond_33

    array-length v5, v0

    if-eq v3, v5, :cond_31

    goto :goto_33

    :cond_31
    move-object v5, v0

    goto :goto_3d

    .line 1390
    :cond_33
    :goto_33
    add-int v5, v2, v3

    invoke-static {v0, v2, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/nio/ByteBuffer;

    move-object v5, v0

    .line 1392
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .local v5, "srcs":[Ljava/nio/ByteBuffer;
    :goto_3d
    invoke-static {v5}, Lcom/android/org/conscrypt/BufferUtils;->checkNotNull([Ljava/nio/ByteBuffer;)V

    .line 1394
    iget-object v7, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7

    .line 1395
    :try_start_43
    iget v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    sparse-switch v0, :sswitch_data_162

    goto :goto_6f

    .line 1404
    :sswitch_49
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1405
    invoke-direct {v1, v4, v6, v6, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1406
    .local v0, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v0, :cond_56

    .line 1407
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 1408
    monitor-exit v7

    return-object v0

    .line 1410
    :cond_56
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    sget-object v9, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v7

    return-object v8

    .line 1398
    .end local v0    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :sswitch_63
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 1399
    goto :goto_6f

    .line 1412
    :sswitch_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Client/server mode must be set before calling wrap"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v0

    .line 1419
    .restart local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_6f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1421
    .local v0, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v8, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v8, :cond_8c

    .line 1422
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    move-object v0, v8

    .line 1423
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v8, :cond_82

    .line 1424
    sget-object v6, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v7

    return-object v6

    .line 1427
    :cond_82
    iget v8, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8c

    .line 1428
    sget-object v6, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v7

    return-object v6

    .line 1433
    :cond_8c
    invoke-static {v5}, Lcom/android/org/conscrypt/BufferUtils;->remaining([Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    const-wide/16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1434
    .local v8, "dataLength":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-static {v8}, Lcom/android/org/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v10

    if-ge v9, v10, :cond_ae

    .line 1435
    new-instance v9, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1436
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v7

    .line 1435
    return-object v9

    .line 1439
    :cond_ae
    const/4 v9, 0x0

    .line 1440
    .local v9, "bytesProduced":I
    const/4 v10, 0x0

    .line 1441
    .local v10, "bytesConsumed":I
    if-lez v8, :cond_147

    .line 1446
    const/4 v11, 0x0

    .line 1447
    .local v11, "isCopy":Z
    nop

    .line 1448
    const/16 v12, 0x4000

    invoke-static {v5, v12}, Lcom/android/org/conscrypt/BufferUtils;->getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1449
    .local v13, "outputBuffer":Ljava/nio/ByteBuffer;
    if-nez v13, :cond_c7

    .line 1457
    nop

    .line 1458
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1457
    invoke-static {v5, v14, v12}, Lcom/android/org/conscrypt/BufferUtils;->copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v13, v14

    .line 1459
    const/4 v11, 0x1

    .line 1463
    :cond_c7
    nop

    .line 1464
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1463
    invoke-direct {v1, v13, v12}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 1465
    .local v12, "result":I
    if-lez v12, :cond_f2

    .line 1466
    move v10, v12

    .line 1467
    if-eqz v11, :cond_dc

    .line 1469
    invoke-static {v5, v10}, Lcom/android/org/conscrypt/BufferUtils;->consume([Ljava/nio/ByteBuffer;I)V

    .line 1472
    :cond_dc
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1474
    .local v14, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_147

    .line 1475
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v15

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v15, v6, :cond_ec

    .line 1476
    monitor-exit v7

    return-object v14

    .line 1478
    :cond_ec
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    move v9, v6

    goto :goto_147

    .line 1481
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_f2
    iget-object v6, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v6, v12}, Lcom/android/org/conscrypt/NativeSsl;->getError(I)I

    move-result v6

    .line 1482
    .local v6, "sslError":I
    packed-switch v6, :pswitch_data_174

    .line 1529
    :pswitch_fb
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    goto :goto_12f

    .line 1486
    :pswitch_ff
    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1487
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1489
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_10a

    move-object v15, v14

    goto :goto_10c

    .line 1490
    :cond_10a
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_10c
    monitor-exit v7

    .line 1489
    return-object v15

    .line 1524
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_10e
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1526
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_116

    move-object v15, v14

    goto :goto_118

    :cond_116
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    :goto_118
    monitor-exit v7

    return-object v15

    .line 1498
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_11a
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1500
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_122

    .line 1501
    move-object v15, v14

    goto :goto_12d

    .line 1502
    :cond_122
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v15, v2, v3, v10, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_12d
    monitor-exit v7

    .line 1500
    return-object v15

    .line 1530
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_12f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL_write: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 1537
    .end local v6    # "sslError":I
    .end local v11    # "isCopy":Z
    .end local v12    # "result":I
    .end local v13    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_147
    :goto_147
    if-nez v10, :cond_153

    .line 1538
    nop

    .line 1539
    const/4 v2, 0x0

    invoke-direct {v1, v4, v2, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 1540
    .local v2, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v2, :cond_153

    .line 1541
    monitor-exit v7

    return-object v2

    .line 1544
    .end local v2    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_153
    invoke-direct {v1, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 1545
    .end local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v8    # "dataLength":I
    .end local v9    # "bytesProduced":I
    .end local v10    # "bytesConsumed":I
    :catchall_159
    move-exception v0

    monitor-exit v7
    :try_end_15b
    .catchall {:try_start_43 .. :try_end_15b} :catchall_159

    throw v0

    .line 1386
    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    :cond_15c
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    :sswitch_data_162
    .sparse-switch
        0x0 -> :sswitch_67
        0x1 -> :sswitch_63
        0x7 -> :sswitch_49
        0x8 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_11a
        :pswitch_10e
        :pswitch_fb
        :pswitch_fb
        :pswitch_ff
    .end packed-switch
.end method
