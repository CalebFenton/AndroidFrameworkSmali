.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final IPV6_MIN_MTU:I = 0x500

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHwAddr:[B

.field private final mIfIndex:I

.field private final mIfName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static synthetic -get0()B
    .locals 1

    #@0
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    #@2
    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@8
    .line 69
    const/16 v0, 0x85

    #@a
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@d
    move-result v0

    #@e
    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    #@10
    .line 70
    const/16 v0, 0x86

    #@12
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@15
    move-result v0

    #@16
    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    #@18
    .line 93
    const/16 v0, 0x10

    #@1a
    new-array v0, v0, [B

    #@1c
    fill-array-data v0, :array_0

    #@1f
    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    #@21
    .line 67
    return-void

    #@22
    .line 93
    :array_0
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "ifindex"    # I
    .param p3, "hwaddr"    # [B

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    #@a
    .line 108
    const/16 v0, 0x500

    #@c
    new-array v0, v0, [B

    #@e
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    #@10
    .line 225
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    #@12
    .line 226
    iput p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    #@14
    .line 227
    iput-object p3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    #@16
    .line 228
    new-instance v0, Ljava/net/InetSocketAddress;

    #@18
    iget v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    #@1a
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@22
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    #@24
    .line 229
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)V

    #@2a
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@2c
    .line 224
    return-void
.end method

.method private static asByte(I)B
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 348
    int-to-byte v0, p0

    #@1
    return v0
.end method

.method private static asShort(I)S
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 349
    int-to-short v0, p0

    #@1
    return v0
.end method

.method private assembleRaLocked()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 273
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    #@3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v4

    #@7
    .line 274
    .local v4, "ra":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    .line 276
    const/4 v5, 0x0

    #@d
    .line 279
    .local v5, "shouldSendRA":Z
    :try_start_0
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@f
    if-eqz v6, :cond_0

    #@11
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@13
    iget-boolean v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    #@15
    :goto_0
    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;Z)V

    #@18
    .line 280
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    #@1a
    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    #@1d
    .line 281
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@20
    move-result v6

    #@21
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@23
    .line 290
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 291
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@29
    iget v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    #@2b
    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    #@2e
    .line 292
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@31
    move-result v6

    #@32
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@34
    .line 294
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@36
    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@38
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v3

    #@3c
    .local v3, "ipp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_1

    #@42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/net/IpPrefix;

    #@48
    .line 295
    .local v2, "ipp":Landroid/net/IpPrefix;
    const/16 v6, 0xe10

    #@4a
    const/16 v8, 0xe10

    #@4c
    invoke-static {v4, v2, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    #@4f
    .line 296
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@52
    move-result v6

    #@53
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@55
    .line 297
    const/4 v5, 0x1

    #@56
    goto :goto_1

    #@57
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_0
    move v6, v7

    #@58
    .line 279
    goto :goto_0

    #@59
    .line 300
    .restart local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@5b
    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@5d
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    #@60
    move-result v6

    #@61
    if-lez v6, :cond_2

    #@63
    .line 301
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@65
    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@67
    const/16 v8, 0xe10

    #@69
    invoke-static {v4, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    #@6c
    .line 302
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@6f
    move-result v6

    #@70
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@72
    .line 303
    const/4 v5, 0x1

    #@73
    .line 307
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@75
    invoke-virtual {v6}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    #@78
    move-result-object v6

    #@79
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v3

    #@7d
    .restart local v3    # "ipp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_3

    #@83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Landroid/net/IpPrefix;

    #@89
    .line 308
    .restart local v2    # "ipp":Landroid/net/IpPrefix;
    const/4 v6, 0x0

    #@8a
    const/4 v8, 0x0

    #@8b
    invoke-static {v4, v2, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    #@8e
    .line 309
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@91
    move-result v6

    #@92
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@94
    .line 310
    const/4 v5, 0x1

    #@95
    goto :goto_2

    #@96
    .line 313
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_3
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@98
    invoke-virtual {v6}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    #@9b
    move-result-object v0

    #@9c
    .line 314
    .local v0, "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@9f
    move-result v6

    #@a0
    if-nez v6, :cond_4

    #@a2
    .line 315
    const/4 v6, 0x0

    #@a3
    invoke-static {v4, v0, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    #@a6
    .line 316
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@a9
    move-result v6

    #@aa
    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    .line 317
    const/4 v5, 0x1

    #@ad
    .line 327
    .end local v0    # "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    #@af
    .line 328
    iput v7, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@b1
    .line 272
    :cond_5
    return-void

    #@b2
    .line 319
    :catch_0
    move-exception v1

    #@b3
    .line 323
    .local v1, "e":Ljava/nio/BufferOverflowException;
    sget-object v6, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@b5
    new-instance v8, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v9, "Could not construct new RA: "

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v8

    #@c5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v8

    #@c9
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    goto :goto_3
.end method

.method private closeSocket()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 583
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@7
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 588
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@c
    .line 582
    return-void

    #@d
    .line 586
    :catch_0
    move-exception v0

    #@e
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private createSocket()Z
    .locals 8

    #@0
    .prologue
    .line 564
    const/16 v0, 0x12c

    #@2
    .line 567
    .local v0, "SEND_TIMEOUT_MS":I
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    #@4
    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    #@6
    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@8
    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@e
    .line 570
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@10
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@12
    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@14
    const-wide/16 v6, 0x12c

    #@16
    invoke-static {v6, v7}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@19
    move-result-object v5

    #@1a
    .line 569
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    #@1d
    .line 571
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@1f
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@21
    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    #@23
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    #@25
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    #@28
    .line 572
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@2a
    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    #@2d
    .line 573
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@2f
    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    #@31
    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 579
    const/4 v2, 0x1

    #@35
    return v2

    #@36
    .line 574
    :catch_0
    move-exception v1

    #@37
    .line 575
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Failed to create RA daemon socket: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 576
    const/4 v2, 0x0

    #@51
    return v2
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .locals 4
    .param p0, "scopeId"    # I

    #@0
    .prologue
    .line 341
    :try_start_0
    const-string/jumbo v1, "ff02::1"

    #@3
    sget-object v2, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    #@5
    invoke-static {v1, v2, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 342
    :catch_0
    move-exception v0

    #@b
    .line 343
    .local v0, "uhe":Ljava/net/UnknownHostException;
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failed to construct ff02::1 InetAddress: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 344
    const/4 v1, 0x0

    #@25
    return-object v1
.end method

.method private isSocketValid()Z
    .locals 2

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@2
    .line 593
    .local v0, "s":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .locals 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 597
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    #@4
    invoke-virtual {v3, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 598
    return v1

    #@b
    .line 601
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    .line 602
    .local v0, "destip":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet6Address;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 603
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@16
    move-result v3

    #@17
    .line 602
    if-eqz v3, :cond_2

    #@19
    .line 604
    check-cast v0, Ljava/net/Inet6Address;

    #@1b
    .end local v0    # "destip":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    #@1e
    move-result v3

    #@1f
    iget v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    #@21
    if-ne v3, v4, :cond_1

    #@23
    .line 602
    :goto_0
    return v1

    #@24
    :cond_1
    move v1, v2

    #@25
    .line 604
    goto :goto_0

    #@26
    .restart local v0    # "destip":Ljava/net/InetAddress;
    :cond_2
    move v1, v2

    #@27
    .line 602
    goto :goto_0
.end method

.method private maybeNotifyMulticastTransmitter()V
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    #@2
    .line 334
    .local v0, "m":Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
    if-eqz v0, :cond_0

    #@4
    .line 335
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    #@7
    .line 332
    :cond_0
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .locals 8
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 608
    if-eqz p1, :cond_0

    #@2
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 613
    :goto_0
    :try_start_0
    iget-object v7, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v7
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 614
    :try_start_1
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    const/16 v1, 0x10

    #@f
    if-ge v0, v1, :cond_1

    #@11
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    #@12
    .line 616
    return-void

    #@13
    .line 609
    :cond_0
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    #@15
    goto :goto_0

    #@16
    .line 618
    :cond_1
    :try_start_3
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    #@18
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    #@1a
    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    #@1c
    const/4 v2, 0x0

    #@1d
    const/4 v4, 0x0

    #@1e
    move-object v5, p1

    #@1f
    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@22
    :try_start_4
    monitor-exit v7

    #@23
    .line 620
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "RA sendto "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 607
    :cond_2
    :goto_1
    return-void

    #@45
    .line 613
    :catchall_0
    move-exception v0

    #@46
    monitor-exit v7

    #@47
    throw v0
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0

    #@48
    .line 621
    :catch_0
    move-exception v6

    #@49
    .line 622
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_2

    #@4f
    .line 623
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    #@51
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "sendto error: "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_1
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 415
    const/16 v1, 0x1a

    #@3
    .line 416
    .local v1, "ND_OPTION_EFO":B
    const/4 v0, 0x1

    #@4
    .line 418
    .local v0, "EFO_NUM_8OCTETS":B
    const/16 v2, 0x1a

    #@6
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v2

    #@a
    .line 419
    const/4 v3, 0x1

    #@b
    .line 418
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v2

    #@f
    .line 420
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@12
    move-result v3

    #@13
    .line 418
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1a
    .line 402
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "hasDefaultRoute"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    const/16 v0, 0x40

    #@3
    .line 370
    .local v0, "DEFAULT_HOPLIMIT":B
    sget-byte v1, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    #@5
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v1

    #@9
    .line 371
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@c
    move-result v2

    #@d
    .line 370
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v1

    #@11
    .line 372
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@14
    move-result v2

    #@15
    .line 370
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@18
    move-result-object v1

    #@19
    .line 373
    const/16 v2, 0x40

    #@1b
    .line 370
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v2

    #@1f
    .line 375
    if-eqz p1, :cond_0

    #@21
    const/16 v1, 0x8

    #@23
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@26
    move-result v1

    #@27
    .line 370
    :goto_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v2

    #@2b
    .line 376
    if-eqz p1, :cond_1

    #@2d
    const/16 v1, 0xe10

    #@2f
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@32
    move-result v1

    #@33
    .line 370
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@3e
    .line 351
    return-void

    #@3f
    .line 375
    :cond_0
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@42
    move-result v1

    #@43
    goto :goto_0

    #@44
    .line 376
    :cond_1
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@47
    move-result v1

    #@48
    goto :goto_1
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "mtu"    # I

    #@0
    .prologue
    const/16 v2, 0x500

    #@2
    .line 436
    const/4 v1, 0x5

    #@3
    .line 437
    .local v1, "ND_OPTION_MTU":B
    const/4 v0, 0x1

    #@4
    .line 438
    .local v0, "MTU_NUM_8OCTETS":B
    const/4 v3, 0x5

    #@5
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v3

    #@9
    .line 439
    const/4 v4, 0x1

    #@a
    .line 438
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v3

    #@e
    .line 440
    const/4 v4, 0x0

    #@f
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@12
    move-result v4

    #@13
    .line 438
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v3

    #@17
    .line 441
    if-ge p1, v2, :cond_0

    #@19
    move p1, v2

    #@1a
    .line 438
    .end local p1    # "mtu":I
    :cond_0
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1d
    .line 424
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .locals 7
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;
    .param p2, "validTime"    # I
    .param p3, "preferredTime"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 469
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@4
    move-result v3

    #@5
    .line 470
    .local v3, "prefixLength":I
    const/16 v4, 0x40

    #@7
    if-eq v3, v4, :cond_0

    #@9
    .line 471
    return-void

    #@a
    .line 473
    :cond_0
    const/4 v0, 0x3

    #@b
    .line 474
    .local v0, "ND_OPTION_PIO":B
    const/4 v1, 0x4

    #@c
    .line 476
    .local v1, "PIO_NUM_8OCTETS":B
    if-gez p2, :cond_1

    #@e
    const/4 p2, 0x0

    #@f
    .line 477
    :cond_1
    if-gez p3, :cond_2

    #@11
    const/4 p3, 0x0

    #@12
    .line 478
    :cond_2
    if-le p3, p2, :cond_3

    #@14
    move p3, p2

    #@15
    .line 480
    :cond_3
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    #@1c
    move-result-object v2

    #@1d
    .line 481
    .local v2, "addr":[B
    const/4 v4, 0x3

    #@1e
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v4

    #@22
    .line 482
    const/4 v5, 0x4

    #@23
    .line 481
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v4

    #@27
    .line 483
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@2a
    move-result v5

    #@2b
    .line 481
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v4

    #@2f
    .line 484
    const/16 v5, 0xc0

    #@31
    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@34
    move-result v5

    #@35
    .line 481
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@48
    .line 445
    return-void
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .locals 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p2, "lifetime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 545
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    const/16 v0, 0x19

    #@2
    .line 546
    .local v0, "ND_OPTION_RDNSS":B
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@5
    move-result v4

    #@6
    mul-int/lit8 v4, v4, 0x2

    #@8
    add-int/lit8 v4, v4, 0x1

    #@a
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@d
    move-result v1

    #@e
    .line 547
    .local v1, "RDNSS_NUM_8OCTETS":B
    const/16 v4, 0x19

    #@10
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@17
    move-result-object v4

    #@18
    .line 549
    const/4 v5, 0x0

    #@19
    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    #@1c
    move-result v5

    #@1d
    .line 547
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@24
    .line 552
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    .local v3, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/net/Inet6Address;

    #@34
    .line 559
    .local v2, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@3b
    goto :goto_0

    #@3c
    .line 528
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_0
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .locals 10
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;

    #@0
    .prologue
    const/16 v9, 0x40

    #@2
    const/16 v8, 0x18

    #@4
    const/16 v5, 0x8

    #@6
    const/4 v7, 0x0

    #@7
    .line 507
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@a
    move-result v3

    #@b
    .line 508
    .local v3, "prefixLength":I
    if-le v3, v9, :cond_0

    #@d
    .line 509
    return-void

    #@e
    .line 511
    :cond_0
    const/16 v0, 0x18

    #@10
    .line 513
    .local v0, "ND_OPTION_RIO":B
    if-nez v3, :cond_2

    #@12
    const/4 v4, 0x1

    #@13
    .line 512
    :goto_0
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@16
    move-result v1

    #@17
    .line 515
    .local v1, "RIO_NUM_8OCTETS":B
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    #@1e
    move-result-object v2

    #@1f
    .line 516
    .local v2, "addr":[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v4

    #@27
    .line 518
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@2a
    move-result v6

    #@2b
    .line 516
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@2e
    move-result-object v4

    #@2f
    .line 519
    invoke-static {v8}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    #@32
    move-result v6

    #@33
    .line 516
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@36
    move-result-object v4

    #@37
    .line 520
    const/16 v6, 0xe10

    #@39
    .line 516
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@3c
    .line 523
    if-lez v3, :cond_1

    #@3e
    .line 524
    if-gt v3, v9, :cond_4

    #@40
    move v4, v5

    #@41
    :goto_1
    invoke-virtual {p0, v2, v7, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@44
    .line 491
    :cond_1
    return-void

    #@45
    .line 513
    .end local v1    # "RIO_NUM_8OCTETS":B
    .end local v2    # "addr":[B
    :cond_2
    if-gt v3, v5, :cond_3

    #@47
    const/4 v4, 0x2

    #@48
    goto :goto_0

    #@49
    :cond_3
    const/4 v4, 0x3

    #@4a
    goto :goto_0

    #@4b
    .line 524
    .restart local v1    # "RIO_NUM_8OCTETS":B
    .restart local v2    # "addr":[B
    :cond_4
    const/16 v4, 0x10

    #@4d
    goto :goto_1
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "slla"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 391
    if-eqz p1, :cond_0

    #@3
    array-length v2, p1

    #@4
    const/4 v3, 0x6

    #@5
    if-eq v2, v3, :cond_1

    #@7
    .line 393
    :cond_0
    return-void

    #@8
    .line 395
    :cond_1
    const/4 v0, 0x1

    #@9
    .line 396
    .local v0, "ND_OPTION_SLLA":B
    const/4 v1, 0x1

    #@a
    .line 397
    .local v1, "SLLA_NUM_8OCTETS":B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@15
    .line 381
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 3
    .param p1, "deprecatedParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p2, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 234
    if-eqz p1, :cond_0

    #@5
    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@7
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@9
    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    #@c
    .line 236
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@e
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@10
    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    #@13
    .line 239
    :cond_0
    if-eqz p2, :cond_1

    #@15
    .line 241
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@17
    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@19
    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    #@1c
    .line 242
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@1e
    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@20
    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    #@23
    .line 245
    :cond_1
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@25
    .line 246
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 249
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    #@2c
    .line 232
    return-void

    #@2d
    .line 233
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method public start()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 253
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 254
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 257
    :cond_0
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    #@b
    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V

    #@e
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    #@10
    .line 258
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    #@12
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->start()V

    #@15
    .line 260
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    #@17
    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;)V

    #@1a
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    #@1c
    .line 261
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    #@1e
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->start()V

    #@21
    .line 263
    const/4 v0, 0x1

    #@22
    return v0
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 267
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    #@4
    .line 268
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    #@6
    .line 269
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    #@8
    .line 266
    return-void
.end method
