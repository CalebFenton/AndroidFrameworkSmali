.class public Lcom/android/org/conscrypt/OpenSSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSSLEngineImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    }
.end annotation


# static fields
.field private static synthetic -com_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues:[I

.field private static nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;


# instance fields
.field channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field private handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

.field private final localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getcom_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->values()[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@10
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@22
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@2b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@34
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@3d
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@46
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@4f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@59
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@63
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    #@6b
    :goto_9
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-com_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues:[I

    #@6d
    return-object v0

    #@6e
    :catch_0
    move-exception v1

    #@6f
    goto :goto_9

    #@70
    :catch_1
    move-exception v1

    #@71
    goto :goto_8

    #@72
    :catch_2
    move-exception v1

    #@73
    goto :goto_7

    #@74
    :catch_3
    move-exception v1

    #@75
    goto :goto_6

    #@76
    :catch_4
    move-exception v1

    #@77
    goto :goto_5

    #@78
    :catch_5
    move-exception v1

    #@79
    goto :goto_4

    #@7a
    :catch_6
    move-exception v1

    #@7b
    goto :goto_3

    #@7c
    :catch_7
    move-exception v1

    #@7d
    goto :goto_2

    #@7e
    :catch_8
    move-exception v1

    #@7f
    goto :goto_1

    #@80
    :catch_9
    move-exception v1

    #@81
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@b
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@a
    .line 91
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e
    .line 108
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@14
    .line 123
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@16
    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    #@3
    .line 48
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@a
    .line 91
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e
    .line 108
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@14
    .line 128
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@16
    .line 126
    return-void
.end method

.method private static checkIndex(III)V
    .locals 2
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 376
    if-gez p1, :cond_0

    #@2
    .line 377
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    const-string/jumbo v1, "offset < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 378
    :cond_0
    if-gez p2, :cond_1

    #@d
    .line 379
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    const-string/jumbo v1, "count < 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 380
    :cond_1
    if-le p1, p0, :cond_2

    #@18
    .line 381
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1a
    const-string/jumbo v1, "offset > length"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 382
    :cond_2
    sub-int v0, p0, p2

    #@23
    if-le p1, v0, :cond_3

    #@25
    .line 383
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@27
    const-string/jumbo v1, "offset + count > length"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 375
    :cond_3
    return-void
.end method

.method private free()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 709
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 710
    return-void

    #@9
    .line 712
    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    #@e
    .line 713
    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@10
    .line 708
    return-void
.end method

.method private getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 505
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@3
    .line 506
    aget-object v1, p1, v0

    #@5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    .line 507
    aget-object v1, p1, v0

    #@d
    return-object v1

    #@e
    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 510
    :cond_1
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method private shutdown()V
    .locals 8

    #@0
    .prologue
    .line 690
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@2
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@4
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    #@7
    move-result-wide v2

    #@8
    .line 691
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@a
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    #@d
    move-result-wide v4

    #@e
    move-object v6, p0

    #@f
    .line 690
    invoke-static/range {v0 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown_BIO(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 688
    :goto_0
    return-void

    #@13
    .line 692
    :catch_0
    move-exception v7

    #@14
    .local v7, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private shutdownAndFreeSslNative()V
    .locals 1

    #@0
    .prologue
    .line 702
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 704
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    #@6
    .line 700
    return-void

    #@7
    .line 703
    :catchall_0
    move-exception v0

    #@8
    .line 704
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V

    #@b
    .line 703
    throw v0
.end method

.method private static writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "sink"    # Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    .line 608
    .local v0, "toWrite":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->toByteArray()[B

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@17
    .line 609
    int-to-long v2, v0

    #@18
    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->skip(J)J

    #@1b
    .line 610
    return v0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7
    if-eq v1, v5, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@b
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@d
    if-ne v1, v5, :cond_1

    #@f
    .line 136
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v5, "Engine has already been closed"

    #@14
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 133
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v4

    #@1a
    throw v1

    #@1b
    .line 135
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@1d
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@1f
    if-eq v1, v5, :cond_0

    #@21
    .line 138
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@23
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@25
    if-ne v1, v5, :cond_2

    #@27
    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    #@29
    const-string/jumbo v5, "Handshake has already been started"

    #@2c
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@32
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@34
    if-eq v1, v5, :cond_3

    #@36
    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    #@38
    const-string/jumbo v5, "Client/server mode must be set before handshake"

    #@3b
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_5

    #@45
    .line 145
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@47
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    :goto_0
    monitor-exit v4

    #@4a
    .line 151
    const/4 v11, 0x1

    #@4b
    .line 153
    .local v11, "releaseResources":Z
    :try_start_2
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4d
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@50
    move-result-object v12

    #@51
    .line 154
    .local v12, "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    iget-wide v2, v12, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    #@53
    .line 155
    .local v2, "sslCtxNativePointer":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    #@56
    move-result-wide v4

    #@57
    iput-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@59
    .line 156
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@5b
    .line 157
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@5d
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    #@64
    move-result v7

    #@65
    .line 156
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@68
    move-result-object v1

    #@69
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@6b
    .line 158
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@6d
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@6f
    .line 159
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    move-object v6, p0

    #@74
    move-object v7, p0

    #@75
    .line 158
    invoke-virtual/range {v1 .. v8}, Lcom/android/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    #@78
    .line 160
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@7a
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@7c
    invoke-virtual {v1, v4, v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    #@7f
    .line 161
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@81
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@83
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    #@85
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V

    #@88
    .line 162
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_6

    #@8e
    .line 163
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@90
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    #@93
    .line 167
    :goto_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->create()Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@96
    move-result-object v1

    #@97
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@99
    .line 168
    const/4 v11, 0x0

    #@9a
    .line 179
    if-eqz v11, :cond_4

    #@9c
    .line 180
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@9e
    monitor-enter v4

    #@9f
    .line 181
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@a1
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@a3
    monitor-exit v4

    #@a4
    .line 183
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    #@a7
    .line 132
    :cond_4
    return-void

    #@a8
    .line 147
    .end local v2    # "sslCtxNativePointer":J
    .end local v11    # "releaseResources":Z
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_5
    :try_start_4
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@aa
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ac
    goto :goto_0

    #@ad
    .line 165
    .restart local v2    # "sslCtxNativePointer":J
    .restart local v11    # "releaseResources":Z
    .restart local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :cond_6
    :try_start_5
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@af
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b2
    goto :goto_1

    #@b3
    .line 169
    .end local v2    # "sslCtxNativePointer":J
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catch_0
    move-exception v0

    #@b4
    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@b7
    move-result-object v10

    #@b8
    .line 173
    .local v10, "message":Ljava/lang/String;
    const-string/jumbo v1, "unexpected CCS"

    #@bb
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@be
    move-result v1

    #@bf
    if-eqz v1, :cond_7

    #@c1
    .line 174
    const-string/jumbo v1, "ssl_unexpected_ccs: host=%s"

    #@c4
    const/4 v4, 0x1

    #@c5
    new-array v4, v4, [Ljava/lang/Object;

    #@c7
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    const/4 v6, 0x0

    #@cc
    aput-object v5, v4, v6

    #@ce
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d1
    move-result-object v9

    #@d2
    .line 175
    .local v9, "logMessage":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    #@d5
    .line 177
    .end local v9    # "logMessage":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljavax/net/ssl/SSLException;

    #@d7
    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    #@da
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@db
    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "message":Ljava/lang/String;
    :catchall_1
    move-exception v1

    #@dc
    .line 179
    if-eqz v11, :cond_8

    #@de
    .line 180
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@e0
    monitor-enter v4

    #@e1
    .line 181
    :try_start_7
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e3
    iput-object v5, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@e5
    monitor-exit v4

    #@e6
    .line 183
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    #@e9
    .line 178
    :cond_8
    throw v1

    #@ea
    .line 180
    .restart local v2    # "sslCtxNativePointer":J
    .restart local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_2
    move-exception v1

    #@eb
    monitor-exit v4

    #@ec
    throw v1

    #@ed
    .end local v2    # "sslCtxNativePointer":J
    .end local v12    # "sessionContext":Lcom/android/org/conscrypt/AbstractSessionContext;
    :catchall_3
    move-exception v1

    #@ee
    monitor-exit v4

    #@ef
    throw v1
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 738
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 739
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    #@7
    .line 740
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 742
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_0
    const/4 v1, 0x0

    #@d
    invoke-interface {p1, p3, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 753
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 727
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    move-object v0, p1

    #@6
    .line 728
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    #@8
    .line 729
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 731
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_0
    invoke-interface {p1, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    #@0
    .prologue
    .line 748
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    .line 685
    iget-wide v4, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v6, p0

    #@7
    .line 684
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    #@a
    .line 683
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v0, v2, :cond_0

    #@9
    monitor-exit v1

    #@a
    .line 192
    return-void

    #@b
    .line 194
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@d
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@f
    if-ne v0, v2, :cond_1

    #@11
    .line 195
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@13
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    :goto_0
    monitor-exit v1

    #@16
    .line 189
    return-void

    #@17
    .line 197
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@19
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 190
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public closeOutbound()V
    .locals 3

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@b
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-ne v0, v2, :cond_1

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 207
    return-void

    #@11
    .line 209
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@13
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@15
    if-eq v0, v2, :cond_2

    #@17
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@19
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@1b
    if-eq v0, v2, :cond_2

    #@1d
    .line 210
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    #@20
    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@22
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@24
    if-ne v0, v2, :cond_3

    #@26
    .line 213
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@28
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    :goto_0
    monitor-exit v1

    #@2b
    .line 218
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->shutdown()V

    #@2e
    .line 204
    return-void

    #@2f
    .line 215
    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@31
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 205
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 721
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    #@6
    .line 717
    return-void

    #@7
    .line 720
    :catchall_0
    move-exception v0

    #@8
    .line 721
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    #@b
    .line 720
    throw v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4

    #@0
    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 245
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->-getcom_android_org_conscrypt_OpenSSLEngineImpl$EngineStateSwitchesValues()[I

    #@6
    move-result-object v0

    #@7
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@9
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->ordinal()I

    #@c
    move-result v2

    #@d
    aget v0, v0, v2

    #@f
    packed-switch v0, :pswitch_data_0

    #@12
    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Unexpected engine state: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 244
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0

    #@31
    .line 247
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 248
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    monitor-exit v1

    #@3a
    return-object v0

    #@3b
    .line 250
    :cond_0
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit v1

    #@3e
    return-object v0

    #@3f
    .line 253
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@41
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    #@44
    move-result v0

    #@45
    if-lez v0, :cond_1

    #@47
    .line 254
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    monitor-exit v1

    #@4a
    return-object v0

    #@4b
    .line 256
    :cond_1
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    monitor-exit v1

    #@4e
    return-object v0

    #@4f
    .line 259
    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@51
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_2

    #@57
    .line 260
    const/4 v0, 0x0

    #@58
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@5a
    .line 261
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5c
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5e
    .line 262
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@60
    monitor-exit v1

    #@61
    return-object v0

    #@62
    .line 264
    :cond_2
    :try_start_6
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@64
    monitor-exit v1

    #@65
    return-object v0

    #@66
    .line 273
    :pswitch_3
    :try_start_7
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@68
    monitor-exit v1

    #@69
    return-object v0

    #@6a
    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 758
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 289
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@b
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 296
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInboundDone()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 316
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-nez v2, :cond_2

    #@a
    .line 317
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@f
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@11
    if-eq v3, v4, :cond_0

    #@13
    .line 319
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@15
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, v4, :cond_1

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 318
    return v0

    #@1b
    :cond_1
    move v0, v1

    #@1c
    .line 319
    goto :goto_0

    #@1d
    .line 317
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v2

    #@1f
    throw v0

    #@20
    .line 322
    :cond_2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@22
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    #@25
    move-result v2

    #@26
    and-int/lit8 v2, v2, 0x2

    #@28
    if-eqz v2, :cond_3

    #@2a
    :goto_1
    return v0

    #@2b
    :cond_3
    move v0, v1

    #@2c
    goto :goto_1
.end method

.method public isOutboundDone()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 328
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-nez v2, :cond_2

    #@a
    .line 329
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@f
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@11
    if-eq v3, v4, :cond_0

    #@13
    .line 331
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@15
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, v4, :cond_1

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 330
    return v0

    #@1b
    :cond_1
    move v0, v1

    #@1c
    .line 331
    goto :goto_0

    #@1d
    .line 329
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v2

    #@1f
    throw v0

    #@20
    .line 334
    :cond_2
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@22
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    #@25
    move-result v2

    #@26
    and-int/lit8 v2, v2, 0x1

    #@28
    if-eqz v2, :cond_3

    #@2a
    :goto_1
    return v0

    #@2b
    :cond_3
    move v0, v1

    #@2c
    goto :goto_1
.end method

.method public onSSLStateChange(JII)V
    .locals 4
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "type"    # I
    .param p4, "val"    # I

    #@0
    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 626
    sparse-switch p3, :sswitch_data_0

    #@6
    :goto_0
    monitor-exit v1

    #@7
    .line 624
    return-void

    #@8
    .line 628
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@a
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@c
    if-eq v0, v2, :cond_0

    #@e
    .line 629
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@10
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@12
    if-eq v0, v2, :cond_0

    #@14
    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Completed handshake while in mode "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 631
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@24
    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 625
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0

    #@33
    .line 633
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@35
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@37
    goto :goto_0

    #@38
    .line 638
    :sswitch_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@3a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 626
    nop

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    #@5
    .line 349
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@5
    .line 339
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    #@5
    .line 344
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    #@5
    .line 354
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@b
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@d
    if-eq v0, v2, :cond_0

    #@f
    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Can not change mode after handshake: engineState == "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 362
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 360
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0

    #@2e
    .line 365
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@30
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit v1

    #@33
    .line 367
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@35
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@38
    .line 359
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    #@5
    .line 371
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 38
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    if-nez p1, :cond_0

    #@2
    .line 391
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "src == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 392
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 393
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "dsts == null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 395
    :cond_1
    move-object/from16 v0, p2

    #@18
    array-length v4, v0

    #@19
    move/from16 v0, p3

    #@1b
    move/from16 v1, p4

    #@1d
    invoke-static {v4, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    #@20
    .line 396
    const/16 v24, 0x0

    #@22
    .line 397
    .local v24, "dstRemaining":I
    const/16 v28, 0x0

    #@24
    .local v28, "i":I
    :goto_0
    move-object/from16 v0, p2

    #@26
    array-length v4, v0

    #@27
    move/from16 v0, v28

    #@29
    if-ge v0, v4, :cond_5

    #@2b
    .line 398
    aget-object v23, p2, v28

    #@2d
    .line 399
    .local v23, "dst":Ljava/nio/ByteBuffer;
    if-nez v23, :cond_2

    #@2f
    .line 400
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v5, "one of the dst == null"

    #@34
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 401
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 402
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    #@40
    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@43
    throw v4

    #@44
    .line 404
    :cond_3
    move/from16 v0, v28

    #@46
    move/from16 v1, p3

    #@48
    if-lt v0, v1, :cond_4

    #@4a
    add-int v4, p3, p4

    #@4c
    move/from16 v0, v28

    #@4e
    if-ge v0, v4, :cond_4

    #@50
    .line 405
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    #@53
    move-result v4

    #@54
    add-int v24, v24, v4

    #@56
    .line 397
    :cond_4
    add-int/lit8 v28, v28, 0x1

    #@58
    goto :goto_0

    #@59
    .line 409
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    :cond_5
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@5d
    monitor-enter v5

    #@5e
    .line 411
    :try_start_0
    move-object/from16 v0, p0

    #@60
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@62
    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@64
    if-eq v4, v8, :cond_6

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@6a
    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@6c
    if-ne v4, v8, :cond_7

    #@6e
    .line 412
    :cond_6
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    #@70
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@72
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@75
    move-result-object v9

    #@76
    const/4 v10, 0x0

    #@77
    const/4 v11, 0x0

    #@78
    invoke-direct {v4, v8, v9, v10, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    monitor-exit v5

    #@7c
    return-object v4

    #@7d
    .line 414
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@81
    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@83
    if-eq v4, v8, :cond_8

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@89
    sget-object v8, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@8b
    if-ne v4, v8, :cond_9

    #@8d
    .line 415
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    :cond_9
    monitor-exit v5

    #@91
    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@94
    move-result-object v27

    #@95
    .line 421
    .local v27, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@97
    move-object/from16 v0, v27

    #@99
    if-ne v0, v4, :cond_f

    #@9b
    .line 422
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    #@9e
    move-result v30

    #@9f
    .line 423
    .local v30, "positionBeforeHandshake":I
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@a2
    move-result-object v34

    #@a3
    .line 424
    .local v34, "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    const-wide/16 v36, 0x0

    #@a5
    .line 426
    .local v36, "sslSessionCtx":J
    :try_start_2
    move-object/from16 v0, p0

    #@a7
    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@a9
    .line 427
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    #@ac
    move-result-wide v6

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@b1
    invoke-virtual {v8}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    #@b4
    move-result-wide v8

    #@b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    #@b8
    move-result v11

    #@b9
    .line 428
    move-object/from16 v0, p0

    #@bb
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@bd
    iget-object v12, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@c3
    iget-object v13, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@c5
    move-object/from16 v10, p0

    #@c7
    .line 426
    invoke-static/range {v4 .. v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@ca
    move-result-wide v6

    #@cb
    .line 429
    .end local v36    # "sslSessionCtx":J
    .local v6, "sslSessionCtx":J
    const-wide/16 v4, 0x0

    #@cd
    cmp-long v4, v6, v4

    #@cf
    if-eqz v4, :cond_b

    #@d1
    .line 430
    :try_start_3
    move-object/from16 v0, p0

    #@d3
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@d5
    if-eqz v4, :cond_a

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@db
    sget-object v5, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@dd
    if-ne v4, v5, :cond_a

    #@df
    .line 431
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e5
    .line 433
    :cond_a
    move-object/from16 v0, p0

    #@e7
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-wide v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@f1
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@f4
    move-result-object v11

    #@f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    #@f8
    move-result v12

    #@f9
    const/4 v13, 0x1

    #@fa
    .line 433
    invoke-virtual/range {v5 .. v13}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@fd
    move-result-object v4

    #@fe
    move-object/from16 v0, p0

    #@100
    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@102
    .line 436
    :cond_b
    move-object/from16 v0, p0

    #@104
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@106
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position()I

    #@109
    move-result v21

    #@10a
    .line 437
    .local v21, "bytesWritten":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    #@10d
    move-result v4

    #@10e
    sub-int v20, v4, v30

    #@110
    .line 438
    .local v20, "bytesConsumed":I
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@112
    if-lez v20, :cond_d

    #@114
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@116
    .line 439
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@119
    move-result-object v8

    #@11a
    .line 438
    move/from16 v0, v20

    #@11c
    move/from16 v1, v21

    #@11e
    invoke-direct {v5, v4, v8, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@121
    .line 444
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@125
    if-nez v4, :cond_c

    #@127
    const-wide/16 v8, 0x0

    #@129
    cmp-long v4, v6, v8

    #@12b
    if-eqz v4, :cond_c

    #@12d
    .line 445
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@130
    .line 447
    :cond_c
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    #@133
    .line 438
    return-object v5

    #@134
    .line 409
    .end local v6    # "sslSessionCtx":J
    .end local v20    # "bytesConsumed":I
    .end local v21    # "bytesWritten":I
    .end local v27    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v30    # "positionBeforeHandshake":I
    .end local v34    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :catchall_0
    move-exception v4

    #@135
    monitor-exit v5

    #@136
    throw v4

    #@137
    .line 438
    .restart local v6    # "sslSessionCtx":J
    .restart local v20    # "bytesConsumed":I
    .restart local v21    # "bytesWritten":I
    .restart local v27    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v30    # "positionBeforeHandshake":I
    .restart local v34    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :cond_d
    :try_start_4
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@139
    goto :goto_1

    #@13a
    .line 440
    .end local v6    # "sslSessionCtx":J
    .end local v20    # "bytesConsumed":I
    .end local v21    # "bytesWritten":I
    .restart local v36    # "sslSessionCtx":J
    :catch_0
    move-exception v26

    #@13b
    .local v26, "e":Ljava/lang/Exception;
    move-wide/from16 v6, v36

    #@13d
    .line 441
    .end local v36    # "sslSessionCtx":J
    .restart local v6    # "sslSessionCtx":J
    :goto_2
    :try_start_5
    new-instance v4, Ljavax/net/ssl/SSLHandshakeException;

    #@13f
    const-string/jumbo v5, "Handshake failed"

    #@142
    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@145
    move-object/from16 v0, v26

    #@147
    invoke-virtual {v4, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@14a
    move-result-object v4

    #@14b
    check-cast v4, Ljavax/net/ssl/SSLHandshakeException;

    #@14d
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@14e
    .line 443
    .end local v26    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    #@14f
    .line 444
    :goto_3
    move-object/from16 v0, p0

    #@151
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@153
    if-nez v5, :cond_e

    #@155
    const-wide/16 v8, 0x0

    #@157
    cmp-long v5, v6, v8

    #@159
    if-eqz v5, :cond_e

    #@15b
    .line 445
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@15e
    .line 447
    :cond_e
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    #@161
    .line 443
    throw v4

    #@162
    .line 449
    .end local v6    # "sslSessionCtx":J
    .end local v30    # "positionBeforeHandshake":I
    .end local v34    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :cond_f
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@164
    move-object/from16 v0, v27

    #@166
    if-eq v0, v4, :cond_10

    #@168
    .line 450
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    #@16a
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@16c
    const/4 v8, 0x0

    #@16d
    const/4 v9, 0x0

    #@16e
    move-object/from16 v0, v27

    #@170
    invoke-direct {v4, v5, v0, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@173
    return-object v4

    #@174
    .line 453
    :cond_10
    if-nez v24, :cond_11

    #@176
    .line 454
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    #@178
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@17a
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@17d
    move-result-object v8

    #@17e
    const/4 v9, 0x0

    #@17f
    const/4 v10, 0x0

    #@180
    invoke-direct {v4, v5, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@183
    return-object v4

    #@184
    .line 457
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@187
    move-result-object v35

    #@188
    .line 458
    .local v35, "srcDuplicate":Ljava/nio/ByteBuffer;
    invoke-static/range {v35 .. v35}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@18b
    move-result-object v34

    #@18c
    .line 460
    .restart local v34    # "source":Lcom/android/org/conscrypt/OpenSSLBIOSource;
    :try_start_6
    invoke-virtual/range {v35 .. v35}, Ljava/nio/ByteBuffer;->position()I

    #@18f
    move-result v31

    #@190
    .line 461
    .local v31, "positionBeforeRead":I
    const/16 v32, 0x0

    #@192
    .line 462
    .local v32, "produced":I
    const/16 v33, 0x0

    #@194
    .line 464
    .local v33, "shouldStop":Z
    :cond_12
    :goto_4
    if-nez v33, :cond_16

    #@196
    .line 465
    move-object/from16 v0, p0

    #@198
    move-object/from16 v1, p2

    #@19a
    move/from16 v2, p3

    #@19c
    move/from16 v3, p4

    #@19e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    #@1a1
    move-result-object v23

    #@1a2
    .line 466
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    if-nez v23, :cond_13

    #@1a4
    .line 467
    const/16 v33, 0x1

    #@1a6
    .line 468
    goto :goto_4

    #@1a7
    .line 470
    :cond_13
    move-object/from16 v19, v23

    #@1a9
    .line 471
    .local v19, "arrayDst":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@1ac
    move-result v4

    #@1ad
    if-eqz v4, :cond_14

    #@1af
    .line 472
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b2
    move-result v4

    #@1b3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1b6
    move-result-object v19

    #@1b7
    .line 475
    :cond_14
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@1ba
    move-result v4

    #@1bb
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->position()I

    #@1be
    move-result v5

    #@1bf
    add-int v12, v4, v5

    #@1c1
    .line 477
    .local v12, "dstOffset":I
    move-object/from16 v0, p0

    #@1c3
    iget-wide v9, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@1c5
    .line 478
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    #@1c8
    move-result-object v11

    #@1c9
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I

    #@1cc
    move-result v13

    #@1cd
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    #@1d0
    move-result-wide v14

    #@1d1
    .line 479
    move-object/from16 v0, p0

    #@1d3
    iget-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@1d5
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    #@1d8
    move-result-wide v16

    #@1d9
    move-object/from16 v18, p0

    #@1db
    .line 477
    invoke-static/range {v9 .. v18}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read_BIO(J[BIIJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    #@1de
    move-result v29

    #@1df
    .line 480
    .local v29, "internalProduced":I
    if-gtz v29, :cond_15

    #@1e1
    .line 481
    const/16 v33, 0x1

    #@1e3
    .line 482
    goto :goto_4

    #@1e4
    .line 484
    :cond_15
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->position()I

    #@1e7
    move-result v4

    #@1e8
    add-int v4, v4, v29

    #@1ea
    move-object/from16 v0, v19

    #@1ec
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1ef
    .line 485
    add-int v32, v32, v29

    #@1f1
    .line 486
    move-object/from16 v0, v23

    #@1f3
    move-object/from16 v1, v19

    #@1f5
    if-eq v0, v1, :cond_12

    #@1f7
    .line 487
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@1fa
    .line 488
    move-object/from16 v0, v23

    #@1fc
    move-object/from16 v1, v19

    #@1fe
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@201
    goto :goto_4

    #@202
    .line 496
    .end local v12    # "dstOffset":I
    .end local v19    # "arrayDst":Ljava/nio/ByteBuffer;
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local v29    # "internalProduced":I
    .end local v31    # "positionBeforeRead":I
    .end local v32    # "produced":I
    .end local v33    # "shouldStop":Z
    :catch_1
    move-exception v25

    #@203
    .line 497
    .local v25, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v4, Ljavax/net/ssl/SSLException;

    #@205
    move-object/from16 v0, v25

    #@207
    invoke-direct {v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    #@20a
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@20b
    .line 498
    .end local v25    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    #@20c
    .line 499
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    #@20f
    .line 498
    throw v4

    #@210
    .line 492
    .restart local v31    # "positionBeforeRead":I
    .restart local v32    # "produced":I
    .restart local v33    # "shouldStop":Z
    :cond_16
    :try_start_8
    invoke-virtual/range {v35 .. v35}, Ljava/nio/ByteBuffer;->position()I

    #@213
    move-result v4

    #@214
    sub-int v22, v4, v31

    #@216
    .line 493
    .local v22, "consumed":I
    invoke-virtual/range {v35 .. v35}, Ljava/nio/ByteBuffer;->position()I

    #@219
    move-result v4

    #@21a
    move-object/from16 v0, p1

    #@21c
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@21f
    .line 494
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    #@221
    if-lez v22, :cond_17

    #@223
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@225
    .line 495
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@228
    move-result-object v8

    #@229
    .line 494
    move/from16 v0, v22

    #@22b
    move/from16 v1, v32

    #@22d
    invoke-direct {v5, v4, v8, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@230
    .line 499
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V

    #@233
    .line 494
    return-object v5

    #@234
    :cond_17
    :try_start_9
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@236
    goto :goto_5

    #@237
    .line 443
    .end local v22    # "consumed":I
    .end local v31    # "positionBeforeRead":I
    .end local v32    # "produced":I
    .end local v33    # "shouldStop":Z
    .end local v35    # "srcDuplicate":Ljava/nio/ByteBuffer;
    .restart local v30    # "positionBeforeHandshake":I
    .restart local v36    # "sslSessionCtx":J
    :catchall_3
    move-exception v4

    #@238
    move-wide/from16 v6, v36

    #@23a
    .end local v36    # "sslSessionCtx":J
    .restart local v6    # "sslSessionCtx":J
    goto/16 :goto_3

    #@23c
    .line 440
    :catch_2
    move-exception v26

    #@23d
    .restart local v26    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 17
    .param p1, "sslSessionNativePtr"    # J
    .param p3, "certRefs"    # [J
    .param p4, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@4
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@7
    move-result-object v15

    #@8
    .line 649
    .local v15, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v15, :cond_0

    #@a
    .line 650
    new-instance v3, Ljava/security/cert/CertificateException;

    #@c
    const-string/jumbo v4, "No X.509 TrustManager"

    #@f
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 671
    .end local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v13

    #@14
    .line 672
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_1
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 675
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v3

    #@16
    .line 677
    const/4 v4, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v4, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@1b
    .line 675
    throw v3

    #@1c
    .line 652
    .restart local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    :try_start_2
    move-object/from16 v0, p3

    #@20
    array-length v3, v0

    #@21
    if-nez v3, :cond_2

    #@23
    .line 653
    :cond_1
    new-instance v3, Ljavax/net/ssl/SSLException;

    #@25
    const-string/jumbo v4, "Peer sent no certificate"

    #@28
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 673
    .end local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v12

    #@2d
    .line 674
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/security/cert/CertificateException;

    #@2f
    invoke-direct {v3, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@33
    .line 655
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_4
    move-object/from16 v0, p3

    #@35
    array-length v3, v0

    #@36
    new-array v7, v3, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@38
    .line 656
    .local v7, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v14, 0x0

    #@39
    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@3b
    array-length v3, v0

    #@3c
    if-ge v14, v3, :cond_3

    #@3e
    .line 657
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@40
    aget-wide v4, p3, v14

    #@42
    invoke-direct {v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@45
    aput-object v3, v7, v14

    #@47
    .line 656
    add-int/lit8 v14, v14, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 661
    :cond_3
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@4c
    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    #@53
    move-result v9

    #@54
    .line 661
    const/4 v6, 0x0

    #@55
    .line 662
    const/4 v10, 0x0

    #@56
    move-wide/from16 v4, p1

    #@58
    .line 661
    invoke-direct/range {v3 .. v10}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@5f
    .line 664
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@63
    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    #@66
    move-result v11

    #@67
    .line 665
    .local v11, "client":Z
    if-eqz v11, :cond_4

    #@69
    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    move-object/from16 v0, p4

    #@6f
    invoke-static {v15, v7, v0, v3}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    .line 677
    :goto_1
    const/4 v3, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@77
    .line 646
    return-void

    #@78
    .line 668
    :cond_4
    const/4 v3, 0x0

    #@79
    :try_start_5
    aget-object v3, v7, v3

    #@7b
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7e
    move-result-object v3

    #@7f
    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 669
    .local v2, "authType":Ljava/lang/String;
    invoke-interface {v15, v7, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@86
    goto :goto_1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 22
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    if-nez p1, :cond_0

    #@2
    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "srcs == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 518
    :cond_0
    if-nez p4, :cond_1

    #@d
    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "dst == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 520
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 521
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    #@1e
    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@21
    throw v2

    #@22
    .line 523
    :cond_2
    const/4 v2, 0x0

    #@23
    move-object/from16 v0, p1

    #@25
    array-length v3, v0

    #@26
    :goto_0
    if-ge v2, v3, :cond_4

    #@28
    aget-object v18, p1, v2

    #@2a
    .line 524
    .local v18, "src":Ljava/nio/ByteBuffer;
    if-nez v18, :cond_3

    #@2c
    .line 525
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v3, "one of the src == null"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 523
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 528
    .end local v18    # "src":Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v0, p1

    #@3a
    array-length v2, v0

    #@3b
    move/from16 v0, p2

    #@3d
    move/from16 v1, p3

    #@3f
    invoke-static {v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    #@42
    .line 530
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    #@45
    move-result v2

    #@46
    const/16 v3, 0x4145

    #@48
    if-ge v2, v3, :cond_5

    #@4a
    .line 531
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@4c
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@51
    move-result-object v6

    #@52
    const/4 v7, 0x0

    #@53
    const/4 v10, 0x0

    #@54
    invoke-direct {v2, v3, v6, v7, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@57
    return-object v2

    #@58
    .line 534
    :cond_5
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    #@5c
    monitor-enter v3

    #@5d
    .line 536
    :try_start_0
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@61
    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@63
    if-eq v2, v6, :cond_6

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@69
    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@6b
    if-ne v2, v6, :cond_7

    #@6d
    .line 537
    :cond_6
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@6f
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@71
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@74
    move-result-object v7

    #@75
    const/4 v10, 0x0

    #@76
    const/4 v11, 0x0

    #@77
    invoke-direct {v2, v6, v7, v10, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    monitor-exit v3

    #@7b
    return-object v2

    #@7c
    .line 539
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    #@7e
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@80
    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@82
    if-eq v2, v6, :cond_8

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@88
    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@8a
    if-ne v2, v6, :cond_9

    #@8c
    .line 540
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    :cond_9
    monitor-exit v3

    #@90
    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@93
    move-result-object v16

    #@94
    .line 546
    .local v16, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@96
    move-object/from16 v0, v16

    #@98
    if-ne v0, v2, :cond_e

    #@9a
    .line 547
    move-object/from16 v0, p0

    #@9c
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@9e
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    #@a1
    move-result v2

    #@a2
    if-nez v2, :cond_c

    #@a4
    .line 548
    const-wide/16 v20, 0x0

    #@a6
    .line 550
    .local v20, "sslSessionCtx":J
    :try_start_2
    move-object/from16 v0, p0

    #@a8
    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@aa
    .line 551
    sget-object v6, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@ac
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->getContext()J

    #@af
    move-result-wide v4

    #@b0
    move-object/from16 v0, p0

    #@b2
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@b4
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    #@b7
    move-result-wide v6

    #@b8
    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    #@bb
    move-result v9

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@c0
    iget-object v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@c2
    .line 553
    move-object/from16 v0, p0

    #@c4
    iget-object v11, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@c6
    iget-object v11, v11, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@c8
    move-object/from16 v8, p0

    #@ca
    .line 550
    invoke-static/range {v2 .. v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@cd
    move-result-wide v4

    #@ce
    .line 554
    .end local v20    # "sslSessionCtx":J
    .local v4, "sslSessionCtx":J
    const-wide/16 v2, 0x0

    #@d0
    cmp-long v2, v4, v2

    #@d2
    if-eqz v2, :cond_b

    #@d4
    .line 555
    :try_start_3
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@d8
    if-eqz v2, :cond_a

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@de
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e0
    if-ne v2, v3, :cond_a

    #@e2
    .line 556
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e4
    move-object/from16 v0, p0

    #@e6
    iput-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@e8
    .line 558
    :cond_a
    move-object/from16 v0, p0

    #@ea
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v8, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@f4
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    #@fb
    move-result v10

    #@fc
    const/4 v11, 0x1

    #@fd
    .line 558
    invoke-virtual/range {v3 .. v11}, Lcom/android/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@100
    move-result-object v2

    #@101
    move-object/from16 v0, p0

    #@103
    iput-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@105
    .line 565
    :cond_b
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@109
    if-nez v2, :cond_c

    #@10b
    const-wide/16 v2, 0x0

    #@10d
    cmp-long v2, v4, v2

    #@10f
    if-eqz v2, :cond_c

    #@111
    .line 566
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@114
    .line 570
    .end local v4    # "sslSessionCtx":J
    :cond_c
    move-object/from16 v0, p0

    #@116
    iget-object v2, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@118
    move-object/from16 v0, p4

    #@11a
    invoke-static {v2, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    #@11d
    move-result v13

    #@11e
    .line 571
    .local v13, "bytesWritten":I
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@120
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@122
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@125
    move-result-object v6

    #@126
    const/4 v7, 0x0

    #@127
    invoke-direct {v2, v3, v6, v7, v13}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@12a
    return-object v2

    #@12b
    .line 534
    .end local v13    # "bytesWritten":I
    .end local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_0
    move-exception v2

    #@12c
    monitor-exit v3

    #@12d
    throw v2

    #@12e
    .line 561
    .restart local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v20    # "sslSessionCtx":J
    :catch_0
    move-exception v15

    #@12f
    .local v15, "e":Ljava/lang/Exception;
    move-wide/from16 v4, v20

    #@131
    .line 562
    .end local v20    # "sslSessionCtx":J
    .restart local v4    # "sslSessionCtx":J
    :goto_1
    :try_start_4
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    #@133
    const-string/jumbo v3, "Handshake failed"

    #@136
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@139
    invoke-virtual {v2, v15}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@13c
    move-result-object v2

    #@13d
    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    #@13f
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@140
    .line 564
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@141
    .line 565
    :goto_2
    move-object/from16 v0, p0

    #@143
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@145
    if-nez v3, :cond_d

    #@147
    const-wide/16 v6, 0x0

    #@149
    cmp-long v3, v4, v6

    #@14b
    if-eqz v3, :cond_d

    #@14d
    .line 566
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@150
    .line 564
    :cond_d
    throw v2

    #@151
    .line 572
    .end local v4    # "sslSessionCtx":J
    :cond_e
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@153
    move-object/from16 v0, v16

    #@155
    if-eq v0, v2, :cond_f

    #@157
    .line 573
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@159
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@15b
    const/4 v6, 0x0

    #@15c
    const/4 v7, 0x0

    #@15d
    move-object/from16 v0, v16

    #@15f
    invoke-direct {v2, v3, v0, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    #@162
    return-object v2

    #@163
    .line 577
    :cond_f
    const/16 v19, 0x0

    #@165
    .line 578
    .local v19, "totalRead":I
    const/4 v8, 0x0

    #@166
    .line 580
    .local v8, "buffer":[B
    const/4 v2, 0x0

    #@167
    :try_start_5
    move-object/from16 v0, p1

    #@169
    array-length v3, v0

    #@16a
    .end local v8    # "buffer":[B
    :goto_3
    if-ge v2, v3, :cond_13

    #@16c
    aget-object v18, p1, v2

    #@16e
    .line 581
    .restart local v18    # "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    #@171
    move-result v9

    #@172
    .line 582
    .local v9, "toRead":I
    if-eqz v8, :cond_10

    #@174
    array-length v6, v8

    #@175
    if-le v9, v6, :cond_11

    #@177
    .line 583
    :cond_10
    new-array v8, v9, [B

    #@179
    .line 589
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@17c
    move-result-object v6

    #@17d
    const/4 v7, 0x0

    #@17e
    invoke-virtual {v6, v8, v7, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@181
    .line 590
    move-object/from16 v0, p0

    #@183
    iget-wide v6, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    #@185
    .line 591
    move-object/from16 v0, p0

    #@187
    iget-object v10, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@189
    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->getContext()J

    #@18c
    move-result-wide v10

    #@18d
    move-object/from16 v12, p0

    #@18f
    .line 590
    invoke-static/range {v6 .. v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write_BIO(J[BIJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    #@192
    move-result v17

    #@193
    .line 592
    .local v17, "numRead":I
    if-lez v17, :cond_12

    #@195
    .line 593
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    #@198
    move-result v6

    #@199
    add-int v6, v6, v17

    #@19b
    move-object/from16 v0, v18

    #@19d
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1a0
    .line 594
    add-int v19, v19, v17

    #@1a2
    .line 580
    :cond_12
    add-int/lit8 v2, v2, 0x1

    #@1a4
    goto :goto_3

    #@1a5
    .line 598
    .end local v9    # "toRead":I
    .end local v17    # "numRead":I
    .end local v18    # "src":Ljava/nio/ByteBuffer;
    :cond_13
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    #@1a7
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@1ac
    move-result-object v6

    #@1ad
    .line 599
    move-object/from16 v0, p0

    #@1af
    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@1b1
    move-object/from16 v0, p4

    #@1b3
    invoke-static {v7, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/android/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    #@1b6
    move-result v7

    #@1b7
    .line 598
    move/from16 v0, v19

    #@1b9
    invoke-direct {v2, v3, v6, v0, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@1bc
    return-object v2

    #@1bd
    .line 600
    :catch_1
    move-exception v14

    #@1be
    .line 601
    .local v14, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    #@1c0
    invoke-direct {v2, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    #@1c3
    throw v2

    #@1c4
    .line 564
    .end local v14    # "e":Ljava/io/IOException;
    .end local v19    # "totalRead":I
    .restart local v20    # "sslSessionCtx":J
    :catchall_2
    move-exception v2

    #@1c5
    move-wide/from16 v4, v20

    #@1c7
    .end local v20    # "sslSessionCtx":J
    .restart local v4    # "sslSessionCtx":J
    goto/16 :goto_2

    #@1c9
    .line 561
    :catch_2
    move-exception v15

    #@1ca
    .restart local v15    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method
