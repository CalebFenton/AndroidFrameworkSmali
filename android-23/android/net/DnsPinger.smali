.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$ActivePing;,
        Landroid/net/DnsPinger$DnsArg;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final BASE:I = 0x50000

.field private static final DBG:Z = false

.field public static final DNS_PING_RESULT:I = 0x50000

.field private static final DNS_PORT:I = 0x35

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final mDnsQuery:[B

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEventCounter:I

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    #@7
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@c
    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    .line 312
    const/16 v0, 0x20

    #@10
    new-array v0, v0, [B

    #@12
    fill-array-data v0, :array_0

    #@15
    sput-object v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    #@17
    .line 53
    return-void

    #@18
    .line 312
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x77t
        0x77t
        0x77t
        0x6t
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x3t
        0x63t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TAG"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "target"    # Landroid/os/Handler;
    .param p5, "connectionType"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@6
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@b
    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@14
    .line 122
    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    #@16
    .line 123
    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    #@18
    .line 124
    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    #@1a
    .line 125
    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    #@1c
    .line 126
    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Invalid connectionType in constructor: "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    #@43
    .line 131
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    #@45
    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 132
    const/4 v0, 0x0

    #@4d
    iput v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    #@4f
    .line 120
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 290
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    #@6
    .line 291
    const-string/jumbo v1, "connectivity"

    #@9
    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/net/ConnectivityManager;

    #@f
    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@11
    .line 294
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@13
    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    #@15
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 298
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 299
    const-string/jumbo v3, "default_dns_server"

    #@a
    .line 298
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 300
    .local v0, "dns":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 301
    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v2

    #@1c
    .line 302
    const v3, 0x104002d

    #@1f
    .line 301
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 305
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 306
    :catch_0
    move-exception v1

    #@29
    .line 307
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "getDefaultDns::malformed default dns address"

    #@2c
    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    #@2f
    .line 308
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 327
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 331
    return-void
.end method

.method private sendResponse(III)V
    .locals 2
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    #@2
    const/high16 v1, 0x50000

    #@4
    invoke-virtual {p0, v1, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@b
    .line 279
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 276
    const v0, 0x50003

    #@8
    invoke-virtual {p0, v0}, Landroid/net/DnsPinger;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 274
    return-void
.end method

.method public getDnsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "curLinkProps":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    #@6
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "getCurLinkProperties:: LP for type"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget v3, p0, Landroid/net/DnsPinger;->mConnectionType:I

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " is null!"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    #@26
    .line 248
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    #@28
    return-object v2

    #@29
    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@2c
    move-result-object v1

    #@2d
    .line 252
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_1

    #@2f
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_2

    #@35
    .line 253
    :cond_1
    const-string/jumbo v2, "getDns::LinkProps has null dns - returning default"

    #@38
    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    #@3b
    .line 254
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    #@3d
    return-object v2

    #@3e
    .line 257
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    #@40
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@43
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 137
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v19, v0

    #@6
    packed-switch v19, :pswitch_data_0

    #@9
    .line 136
    :cond_0
    :goto_0
    return-void

    #@a
    .line 139
    :pswitch_0
    move-object/from16 v0, p1

    #@c
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v10, Landroid/net/DnsPinger$DnsArg;

    #@10
    .line 140
    .local v10, "dnsArg":Landroid/net/DnsPinger$DnsArg;
    iget v0, v10, Landroid/net/DnsPinger$DnsArg;->seq:I

    #@12
    move/from16 v19, v0

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    #@18
    move-object/from16 v20, v0

    #@1a
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1d
    move-result v20

    #@1e
    move/from16 v0, v19

    #@20
    move/from16 v1, v20

    #@22
    if-ne v0, v1, :cond_0

    #@24
    .line 144
    :try_start_0
    new-instance v15, Landroid/net/DnsPinger$ActivePing;

    #@26
    const/16 v19, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    move-object/from16 v1, v19

    #@2c
    invoke-direct {v15, v0, v1}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$ActivePing;)V

    #@2f
    .line 145
    .local v15, "newActivePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v9, v10, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    #@31
    .line 146
    .local v9, "dnsAddress":Ljava/net/InetAddress;
    move-object/from16 v0, p1

    #@33
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@35
    move/from16 v19, v0

    #@37
    move/from16 v0, v19

    #@39
    iput v0, v15, Landroid/net/DnsPinger$ActivePing;->internalId:I

    #@3b
    .line 147
    move-object/from16 v0, p1

    #@3d
    iget v0, v0, Landroid/os/Message;->arg2:I

    #@3f
    move/from16 v19, v0

    #@41
    move/from16 v0, v19

    #@43
    iput v0, v15, Landroid/net/DnsPinger$ActivePing;->timeout:I

    #@45
    .line 148
    new-instance v19, Ljava/net/DatagramSocket;

    #@47
    invoke-direct/range {v19 .. v19}, Ljava/net/DatagramSocket;-><init>()V

    #@4a
    move-object/from16 v0, v19

    #@4c
    iput-object v0, v15, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@4e
    .line 150
    iget-object v0, v15, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@50
    move-object/from16 v19, v0

    #@52
    const/16 v20, 0x1

    #@54
    invoke-virtual/range {v19 .. v20}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 154
    :try_start_1
    iget-object v0, v15, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@59
    move-object/from16 v19, v0

    #@5b
    .line 155
    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    #@5e
    move-result-object v20

    #@5f
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@62
    move-result-object v20

    #@63
    .line 154
    invoke-static/range {v20 .. v20}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@66
    move-result-object v20

    #@67
    invoke-virtual/range {v19 .. v20}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6a
    .line 160
    :goto_1
    :try_start_2
    sget-object v19, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    #@6c
    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextInt()I

    #@6f
    move-result v19

    #@70
    move/from16 v0, v19

    #@72
    int-to-short v0, v0

    #@73
    move/from16 v19, v0

    #@75
    move/from16 v0, v19

    #@77
    iput-short v0, v15, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@79
    .line 161
    sget-object v19, Landroid/net/DnsPinger;->mDnsQuery:[B

    #@7b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7e
    move-result-object v6

    #@7f
    check-cast v6, [B

    #@81
    .line 162
    .local v6, "buf":[B
    iget-short v0, v15, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@83
    move/from16 v19, v0

    #@85
    shr-int/lit8 v19, v19, 0x8

    #@87
    move/from16 v0, v19

    #@89
    int-to-byte v0, v0

    #@8a
    move/from16 v19, v0

    #@8c
    const/16 v20, 0x0

    #@8e
    aput-byte v19, v6, v20

    #@90
    .line 163
    iget-short v0, v15, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@92
    move/from16 v19, v0

    #@94
    move/from16 v0, v19

    #@96
    int-to-byte v0, v0

    #@97
    move/from16 v19, v0

    #@99
    const/16 v20, 0x1

    #@9b
    aput-byte v19, v6, v20

    #@9d
    .line 166
    new-instance v16, Ljava/net/DatagramPacket;

    #@9f
    .line 167
    array-length v0, v6

    #@a0
    move/from16 v19, v0

    #@a2
    const/16 v20, 0x35

    #@a4
    .line 166
    move-object/from16 v0, v16

    #@a6
    move/from16 v1, v19

    #@a8
    move/from16 v2, v20

    #@aa
    invoke-direct {v0, v6, v1, v9, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    #@ad
    .line 174
    .local v16, "packet":Ljava/net/DatagramPacket;
    iget-object v0, v15, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@af
    move-object/from16 v19, v0

    #@b1
    move-object/from16 v0, v19

    #@b3
    move-object/from16 v1, v16

    #@b5
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@b8
    .line 175
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@bc
    move-object/from16 v19, v0

    #@be
    move-object/from16 v0, v19

    #@c0
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c3
    .line 176
    move-object/from16 v0, p0

    #@c5
    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    #@c7
    move/from16 v19, v0

    #@c9
    add-int/lit8 v19, v19, 0x1

    #@cb
    move/from16 v0, v19

    #@cd
    move-object/from16 v1, p0

    #@cf
    iput v0, v1, Landroid/net/DnsPinger;->mEventCounter:I

    #@d1
    .line 177
    move-object/from16 v0, p0

    #@d3
    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    #@d5
    move/from16 v19, v0

    #@d7
    const v20, 0x50002

    #@da
    const/16 v21, 0x0

    #@dc
    move-object/from16 v0, p0

    #@de
    move/from16 v1, v20

    #@e0
    move/from16 v2, v19

    #@e2
    move/from16 v3, v21

    #@e4
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    #@e7
    move-result-object v19

    #@e8
    .line 178
    const-wide/16 v20, 0xc8

    #@ea
    .line 177
    move-object/from16 v0, p0

    #@ec
    move-object/from16 v1, v19

    #@ee
    move-wide/from16 v2, v20

    #@f0
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@f3
    goto/16 :goto_0

    #@f5
    .line 179
    .end local v6    # "buf":[B
    .end local v9    # "dnsAddress":Ljava/net/InetAddress;
    .end local v15    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    .end local v16    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v11

    #@f6
    .line 180
    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v0, p1

    #@f8
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@fa
    move/from16 v19, v0

    #@fc
    const/16 v20, -0x270f

    #@fe
    const/16 v21, -0x2

    #@100
    move-object/from16 v0, p0

    #@102
    move/from16 v1, v19

    #@104
    move/from16 v2, v20

    #@106
    move/from16 v3, v21

    #@108
    invoke-direct {v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendResponse(III)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 156
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v9    # "dnsAddress":Ljava/net/InetAddress;
    .restart local v15    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    :catch_1
    move-exception v12

    #@10e
    .line 157
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    #@110
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v20, "sendDnsPing::Error binding to socket "

    #@116
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v19

    #@11a
    move-object/from16 v0, v19

    #@11c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v19

    #@120
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v19

    #@124
    move-object/from16 v0, p0

    #@126
    move-object/from16 v1, v19

    #@128
    invoke-direct {v0, v1}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@12b
    goto/16 :goto_1

    #@12d
    .line 184
    .end local v9    # "dnsAddress":Ljava/net/InetAddress;
    .end local v10    # "dnsArg":Landroid/net/DnsPinger$DnsArg;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "newActivePing":Landroid/net/DnsPinger$ActivePing;
    :pswitch_1
    move-object/from16 v0, p1

    #@12f
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@131
    move/from16 v19, v0

    #@133
    move-object/from16 v0, p0

    #@135
    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    #@137
    move/from16 v20, v0

    #@139
    move/from16 v0, v19

    #@13b
    move/from16 v1, v20

    #@13d
    if-ne v0, v1, :cond_0

    #@13f
    .line 187
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@143
    move-object/from16 v19, v0

    #@145
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@148
    move-result-object v8

    #@149
    .local v8, "curPing$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@14c
    move-result v19

    #@14d
    if-eqz v19, :cond_2

    #@14f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@152
    move-result-object v7

    #@153
    check-cast v7, Landroid/net/DnsPinger$ActivePing;

    #@155
    .line 190
    .local v7, "curPing":Landroid/net/DnsPinger$ActivePing;
    const/16 v19, 0x2

    #@157
    :try_start_4
    move/from16 v0, v19

    #@159
    new-array v0, v0, [B

    #@15b
    move-object/from16 v18, v0

    #@15d
    .line 191
    .local v18, "responseBuf":[B
    new-instance v17, Ljava/net/DatagramPacket;

    #@15f
    const/16 v19, 0x2

    #@161
    invoke-direct/range {v17 .. v19}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@164
    .line 192
    .local v17, "replyPacket":Ljava/net/DatagramPacket;
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@166
    move-object/from16 v19, v0

    #@168
    move-object/from16 v0, v19

    #@16a
    move-object/from16 v1, v17

    #@16c
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    #@16f
    .line 194
    const/16 v19, 0x0

    #@171
    aget-byte v19, v18, v19

    #@173
    iget-short v0, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@175
    move/from16 v20, v0

    #@177
    shr-int/lit8 v20, v20, 0x8

    #@179
    move/from16 v0, v20

    #@17b
    int-to-byte v0, v0

    #@17c
    move/from16 v20, v0

    #@17e
    move/from16 v0, v19

    #@180
    move/from16 v1, v20

    #@182
    if-ne v0, v1, :cond_1

    #@184
    .line 195
    const/16 v19, 0x1

    #@186
    aget-byte v19, v18, v19

    #@188
    iget-short v0, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@18a
    move/from16 v20, v0

    #@18c
    move/from16 v0, v20

    #@18e
    int-to-byte v0, v0

    #@18f
    move/from16 v20, v0

    #@191
    move/from16 v0, v19

    #@193
    move/from16 v1, v20

    #@195
    if-ne v0, v1, :cond_1

    #@197
    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19a
    move-result-wide v20

    #@19b
    iget-wide v0, v7, Landroid/net/DnsPinger$ActivePing;->start:J

    #@19d
    move-wide/from16 v22, v0

    #@19f
    sub-long v20, v20, v22

    #@1a1
    move-wide/from16 v0, v20

    #@1a3
    long-to-int v0, v0

    #@1a4
    move/from16 v19, v0

    #@1a6
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a9
    move-result-object v19

    #@1aa
    .line 196
    move-object/from16 v0, v19

    #@1ac
    iput-object v0, v7, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@1ae
    goto :goto_2

    #@1af
    .line 203
    .end local v17    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v18    # "responseBuf":[B
    :catch_2
    move-exception v13

    #@1b0
    .local v13, "e":Ljava/net/SocketTimeoutException;
    goto :goto_2

    #@1b1
    .line 205
    .end local v13    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v12

    #@1b2
    .line 209
    .restart local v12    # "e":Ljava/lang/Exception;
    const/16 v19, -0x2

    #@1b4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b7
    move-result-object v19

    #@1b8
    move-object/from16 v0, v19

    #@1ba
    iput-object v0, v7, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    #@1bc
    goto :goto_2

    #@1bd
    .line 212
    .end local v7    # "curPing":Landroid/net/DnsPinger$ActivePing;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@1c1
    move-object/from16 v19, v0

    #@1c3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c6
    move-result-object v14

    #@1c7
    .line 213
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :cond_3
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@1ca
    move-result v19

    #@1cb
    if-eqz v19, :cond_5

    #@1cd
    .line 214
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d0
    move-result-object v7

    #@1d1
    check-cast v7, Landroid/net/DnsPinger$ActivePing;

    #@1d3
    .line 215
    .restart local v7    # "curPing":Landroid/net/DnsPinger$ActivePing;
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    #@1d5
    move-object/from16 v19, v0

    #@1d7
    if-eqz v19, :cond_4

    #@1d9
    .line 216
    iget v0, v7, Landroid/net/DnsPinger$ActivePing;->internalId:I

    #@1db
    move/from16 v19, v0

    #@1dd
    iget-short v0, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@1df
    move/from16 v20, v0

    #@1e1
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    #@1e3
    move-object/from16 v21, v0

    #@1e5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    #@1e8
    move-result v21

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    move/from16 v1, v19

    #@1ed
    move/from16 v2, v20

    #@1ef
    move/from16 v3, v21

    #@1f1
    invoke-direct {v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendResponse(III)V

    #@1f4
    .line 217
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@1f6
    move-object/from16 v19, v0

    #@1f8
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    #@1fb
    .line 218
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    #@1fe
    goto :goto_3

    #@1ff
    .line 219
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@202
    move-result-wide v20

    #@203
    .line 220
    iget-wide v0, v7, Landroid/net/DnsPinger$ActivePing;->start:J

    #@205
    move-wide/from16 v22, v0

    #@207
    iget v0, v7, Landroid/net/DnsPinger$ActivePing;->timeout:I

    #@209
    move/from16 v19, v0

    #@20b
    move/from16 v0, v19

    #@20d
    int-to-long v0, v0

    #@20e
    move-wide/from16 v24, v0

    #@210
    add-long v22, v22, v24

    #@212
    .line 219
    cmp-long v19, v20, v22

    #@214
    if-lez v19, :cond_3

    #@216
    .line 221
    iget v0, v7, Landroid/net/DnsPinger$ActivePing;->internalId:I

    #@218
    move/from16 v19, v0

    #@21a
    iget-short v0, v7, Landroid/net/DnsPinger$ActivePing;->packetId:S

    #@21c
    move/from16 v20, v0

    #@21e
    const/16 v21, -0x1

    #@220
    move-object/from16 v0, p0

    #@222
    move/from16 v1, v19

    #@224
    move/from16 v2, v20

    #@226
    move/from16 v3, v21

    #@228
    invoke-direct {v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendResponse(III)V

    #@22b
    .line 222
    iget-object v0, v7, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@22d
    move-object/from16 v19, v0

    #@22f
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    #@232
    .line 223
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    #@235
    goto :goto_3

    #@236
    .line 226
    .end local v7    # "curPing":Landroid/net/DnsPinger$ActivePing;
    :cond_5
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@23a
    move-object/from16 v19, v0

    #@23c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    #@23f
    move-result v19

    #@240
    if-nez v19, :cond_0

    #@242
    .line 227
    move-object/from16 v0, p0

    #@244
    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    #@246
    move/from16 v19, v0

    #@248
    const v20, 0x50002

    #@24b
    const/16 v21, 0x0

    #@24d
    move-object/from16 v0, p0

    #@24f
    move/from16 v1, v20

    #@251
    move/from16 v2, v19

    #@253
    move/from16 v3, v21

    #@255
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    #@258
    move-result-object v19

    #@259
    .line 228
    const-wide/16 v20, 0xc8

    #@25b
    .line 227
    move-object/from16 v0, p0

    #@25d
    move-object/from16 v1, v19

    #@25f
    move-wide/from16 v2, v20

    #@261
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@264
    goto/16 :goto_0

    #@266
    .line 232
    .end local v8    # "curPing$iterator":Ljava/util/Iterator;
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :pswitch_2
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@26a
    move-object/from16 v19, v0

    #@26c
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26f
    move-result-object v5

    #@270
    .local v5, "activePing$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@273
    move-result v19

    #@274
    if-eqz v19, :cond_6

    #@276
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@279
    move-result-object v4

    #@27a
    check-cast v4, Landroid/net/DnsPinger$ActivePing;

    #@27c
    .line 233
    .local v4, "activePing":Landroid/net/DnsPinger$ActivePing;
    iget-object v0, v4, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    #@27e
    move-object/from16 v19, v0

    #@280
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    #@283
    goto :goto_4

    #@284
    .line 234
    .end local v4    # "activePing":Landroid/net/DnsPinger$ActivePing;
    :cond_6
    move-object/from16 v0, p0

    #@286
    iget-object v0, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    #@288
    move-object/from16 v19, v0

    #@28a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    #@28d
    goto/16 :goto_0

    #@28f
    .line 137
    nop

    #@290
    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 4
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "delay"    # I

    #@0
    .prologue
    .line 268
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    move-result v0

    #@6
    .line 270
    .local v0, "id":I
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    #@8
    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@d
    move-result v2

    #@e
    invoke-direct {v1, p0, p1, v2}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V

    #@11
    .line 269
    const v2, 0x50001

    #@14
    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    .line 270
    int-to-long v2, p3

    #@19
    .line 269
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c
    .line 271
    return v0
.end method
