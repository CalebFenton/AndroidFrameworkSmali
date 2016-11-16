.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-net-NetworkRequest$TypeSwitchesValues:[I = null

.field private static final ADD:Z = true

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x3e9

.field private static final MAXIMUM_NETWORK_SCORE:I = 0x64

.field private static final REMOVE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28

.field private static final VDBG:Z


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public avoidUnvalidated:Z

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public everCaptivePortalDetected:Z

.field public everConnected:Z

.field public everValidated:Z

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLingerExpiryMs:J

.field private mLingerMessage:Lcom/android/internal/util/WakeupMessage;

.field private final mLingerTimerForRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLingerTimers:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLingering:Z

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNumBackgroundNetworkRequests:I

.field private mNumRequestNetworkRequests:I

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private static synthetic -getandroid-net-NetworkRequest$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/NetworkRequest$Type;->values()[Landroid/net/NetworkRequest$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    #@10
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    #@19
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    #@22
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    #@2b
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    #@34
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 248
    const-class v0, Lcom/android/server/ConnectivityService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    #@8
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "net"    # Landroid/net/Network;
    .param p4, "info"    # Landroid/net/NetworkInfo;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "score"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "misc"    # Landroid/net/NetworkMisc;
    .param p11, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p12, "connService"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 202
    new-instance v0, Ljava/util/TreeSet;

    #@6
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@b
    .line 205
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@12
    .line 234
    new-instance v0, Landroid/util/SparseArray;

    #@14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@19
    .line 237
    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@1b
    .line 240
    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@1d
    .line 257
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    #@1f
    .line 258
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@21
    .line 259
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@23
    .line 260
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@25
    .line 261
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@27
    .line 262
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@29
    .line 263
    iput p7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@2b
    .line 264
    iput-object p12, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    #@2d
    .line 265
    iput-object p8, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    #@2f
    .line 266
    iput-object p9, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    #@31
    .line 267
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    #@33
    invoke-virtual {v0, p8, p9, p0, p11}, Lcom/android/server/ConnectivityService;->createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    #@39
    .line 268
    iput-object p10, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3b
    .line 256
    return-void
.end method

.method private getCurrentScore(Z)I
    .locals 2
    .param p1, "pretendValidated"    # Z

    #@0
    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@2
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@4
    if-eqz v1, :cond_1

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@8
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@a
    if-nez v1, :cond_0

    #@c
    if-eqz p1, :cond_1

    #@e
    .line 417
    :cond_0
    const/16 v1, 0x64

    #@10
    return v1

    #@11
    .line 420
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@13
    .line 421
    .local v0, "score":I
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@15
    if-nez v1, :cond_2

    #@17
    if-eqz p1, :cond_4

    #@19
    .line 424
    :cond_2
    :goto_0
    if-gez v0, :cond_3

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 425
    :cond_3
    return v0

    #@1d
    .line 421
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->ignoreWifiUnvalidationPenalty()Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 422
    add-int/lit8 v0, v0, -0x28

    #@25
    goto :goto_0
.end method

.method private ignoreWifiUnvalidationPenalty()Z
    .locals 4

    #@0
    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    const/4 v3, 0x1

    #@3
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 432
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@b
    const/16 v3, 0xc

    #@d
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@10
    move-result v1

    #@11
    .line 433
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    #@13
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    #@1b
    .line 434
    :goto_1
    if-eqz v1, :cond_0

    #@1d
    if-eqz v0, :cond_3

    #@1f
    :cond_0
    const/4 v2, 0x0

    #@20
    :goto_2
    return v2

    #@21
    .line 431
    :cond_1
    const/4 v1, 0x0

    #@22
    .local v1, "isWifi":Z
    goto :goto_0

    #@23
    .line 433
    .end local v1    # "isWifi":Z
    :cond_2
    const/4 v0, 0x1

    #@24
    .local v0, "avoidBadWifi":Z
    goto :goto_1

    #@25
    .line 434
    .end local v0    # "avoidBadWifi":Z
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@27
    goto :goto_2
.end method

.method private updateRequestCounts(ZLandroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "add"    # Z
    .param p2, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 279
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 280
    .local v0, "delta":I
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkAgentInfo;->-getandroid-net-NetworkRequest$TypeSwitchesValues()[I

    #@6
    move-result-object v1

    #@7
    iget-object v2, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@9
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Type;->ordinal()I

    #@c
    move-result v2

    #@d
    aget v1, v1, v2

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 296
    :pswitch_0
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Unhandled request type "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 278
    :goto_1
    :pswitch_1
    return-void

    #@2e
    .line 279
    .end local v0    # "delta":I
    :cond_0
    const/4 v0, -0x1

    #@2f
    .restart local v0    # "delta":I
    goto :goto_0

    #@30
    .line 283
    :pswitch_2
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@32
    add-int/2addr v1, v0

    #@33
    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@35
    goto :goto_1

    #@36
    .line 287
    :pswitch_3
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@38
    add-int/2addr v1, v0

    #@39
    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@3b
    .line 288
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@3d
    add-int/2addr v1, v0

    #@3e
    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@40
    goto :goto_1

    #@41
    .line 280
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .locals 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 307
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@4
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@6
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/NetworkRequest;

    #@c
    .line 308
    .local v0, "existing":Landroid/net/NetworkRequest;
    if-ne v0, p1, :cond_0

    #@e
    return v6

    #@f
    .line 309
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 312
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "Duplicate requestId for %s and %s on %s"

    #@16
    const/4 v3, 0x3

    #@17
    new-array v3, v3, [Ljava/lang/Object;

    #@19
    .line 313
    aput-object p1, v3, v6

    #@1b
    aput-object v0, v3, v7

    #@1d
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    const/4 v5, 0x2

    #@22
    aput-object v4, v3, v5

    #@24
    .line 312
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 314
    invoke-direct {p0, v6, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    #@2e
    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@30
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@32
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@35
    .line 317
    invoke-direct {p0, v7, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    #@38
    .line 318
    return v7
.end method

.method public clearLingerState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 540
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 541
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@a
    .line 542
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@c
    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@e
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    #@11
    .line 545
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@16
    .line 546
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    #@19
    .line 547
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    #@1c
    .line 539
    return-void
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 577
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 576
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dumpLingerTimers(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 551
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "timer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@12
    .local v0, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@15
    goto :goto_0

    #@16
    .line 550
    .end local v0    # "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    :cond_0
    return-void
.end method

.method public getCurrentScore()I
    .locals 1

    #@0
    .prologue
    .line 440
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .locals 1

    #@0
    .prologue
    .line 446
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getLingerExpiry()J
    .locals 2

    #@0
    .prologue
    .line 498
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    #@2
    return-wide v0
.end method

.method public getNetworkState()Landroid/net/NetworkState;
    .locals 7

    #@0
    .prologue
    .line 454
    monitor-enter p0

    #@1
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@7
    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@9
    .line 458
    :goto_0
    new-instance v0, Landroid/net/NetworkState;

    #@b
    new-instance v1, Landroid/net/NetworkInfo;

    #@d
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@f
    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@12
    .line 459
    new-instance v2, Landroid/net/LinkProperties;

    #@14
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@16
    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@19
    .line 460
    new-instance v3, Landroid/net/NetworkCapabilities;

    #@1b
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1d
    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@20
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@22
    const/4 v6, 0x0

    #@23
    .line 458
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit p0

    #@27
    return-object v0

    #@28
    .line 457
    :cond_0
    const/4 v5, 0x0

    #@29
    .local v5, "subscriberId":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 454
    .end local v5    # "subscriberId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit p0

    #@2c
    throw v0
.end method

.method public isBackgroundNetwork()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 386
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@f
    if-lez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public isLingering()Z
    .locals 1

    #@0
    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    #@2
    return v0
.end method

.method public isSatisfyingRequest(I)Z
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isVPN()Z
    .locals 2

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public linger()V
    .locals 1

    #@0
    .prologue
    .line 528
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    #@3
    .line 527
    return-void
.end method

.method public lingerRequest(Landroid/net/NetworkRequest;JJ)V
    .locals 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "now"    # J
    .param p4, "duration"    # J

    #@0
    .prologue
    .line 469
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@2
    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 473
    sget-object v3, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ": request "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    iget v5, p1, Landroid/net/NetworkRequest;->requestId:I

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " already lingered"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 475
    :cond_0
    add-long v0, p2, p4

    #@36
    .line 476
    .local v0, "expiryMs":J
    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@38
    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;-><init>(Landroid/net/NetworkRequest;J)V

    #@3b
    .line 478
    .local v2, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@3d
    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@40
    .line 479
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@42
    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    #@44
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@47
    .line 468
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkAgentInfo ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " ("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 570
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@1f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 570
    const-string/jumbo v1, ") - "

    #@2a
    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@30
    if-nez v0, :cond_0

    #@32
    const-string/jumbo v0, "null"

    #@35
    .line 569
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 571
    const-string/jumbo v1, "]"

    #@3c
    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0

    #@45
    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@47
    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    goto :goto_0
.end method

.method public numBackgroundNetworkRequests()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@2
    return v0
.end method

.method public numForegroundNetworkRequests()I
    .locals 2

    #@0
    .prologue
    .line 369
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@2
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public numNetworkRequests()I
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public numRequestNetworkRequests()I
    .locals 1

    #@0
    .prologue
    .line 354
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    #@2
    return v0
.end method

.method public removeRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/NetworkRequest;

    #@8
    .line 326
    .local v0, "existing":Landroid/net/NetworkRequest;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 327
    :cond_0
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    #@f
    .line 328
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@14
    .line 329
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 330
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    #@1d
    .line 324
    :cond_1
    return-void
.end method

.method public requestAt(I)Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/NetworkRequest;

    #@8
    return-object v0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@b
    move-result v0

    #@c
    .line 391
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 397
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@6
    .line 398
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@8
    .line 397
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    #@b
    move-result v0

    #@c
    .line 396
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public setCurrentScore(I)V
    .locals 0
    .param p1, "newScore"    # I

    #@0
    .prologue
    .line 450
    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    #@2
    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkAgentInfo{ ni{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}  "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 556
    const-string/jumbo v1, "network{"

    #@1c
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 556
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@22
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 556
    const-string/jumbo v1, "}  nethandle{"

    #@29
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 556
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@2f
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    #@32
    move-result-wide v2

    #@33
    .line 555
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 556
    const-string/jumbo v1, "}  "

    #@3a
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 557
    const-string/jumbo v1, "lp{"

    #@41
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 557
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    #@47
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 557
    const-string/jumbo v1, "}  "

    #@4e
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 558
    const-string/jumbo v1, "nc{"

    #@55
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 558
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@5b
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 558
    const-string/jumbo v1, "}  Score{"

    #@62
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 558
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    #@69
    move-result v1

    #@6a
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 558
    const-string/jumbo v1, "}  "

    #@71
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    .line 559
    const-string/jumbo v1, "everValidated{"

    #@78
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    .line 559
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@7e
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 559
    const-string/jumbo v1, "}  lastValidated{"

    #@85
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 559
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@8b
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 559
    const-string/jumbo v1, "}  "

    #@92
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 560
    const-string/jumbo v1, "created{"

    #@99
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    .line 560
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    #@9f
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    .line 560
    const-string/jumbo v1, "} lingering{"

    #@a6
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    .line 560
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    #@ad
    move-result v1

    #@ae
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    .line 560
    const-string/jumbo v1, "} "

    #@b5
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    .line 561
    const-string/jumbo v1, "explicitlySelected{"

    #@bc
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    .line 561
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@c2
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    #@c4
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    .line 561
    const-string/jumbo v1, "} "

    #@cb
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    .line 562
    const-string/jumbo v1, "acceptUnvalidated{"

    #@d2
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    .line 562
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    #@d8
    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    #@da
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    .line 562
    const-string/jumbo v1, "} "

    #@e1
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    .line 563
    const-string/jumbo v1, "everCaptivePortalDetected{"

    #@e8
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 563
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    #@ee
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    .line 563
    const-string/jumbo v1, "} "

    #@f5
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    .line 564
    const-string/jumbo v1, "lastCaptivePortalDetected{"

    #@fc
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v0

    #@100
    .line 564
    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    #@102
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    .line 564
    const-string/jumbo v1, "} "

    #@109
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v0

    #@10d
    .line 565
    const-string/jumbo v1, "}"

    #@110
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v0

    #@114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v0

    #@118
    return-object v0
.end method

.method public unlinger()V
    .locals 1

    #@0
    .prologue
    .line 532
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    #@3
    .line 531
    return-void
.end method

.method public unlingerRequest(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@2
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@a
    .line 488
    .local v0, "timer":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    if-eqz v0, :cond_0

    #@c
    .line 490
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@e
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    #@11
    .line 491
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    #@13
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@15
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    #@18
    .line 492
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 494
    :cond_0
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public updateLingerTimer()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 502
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@3
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const-wide/16 v6, 0x0

    #@b
    .line 503
    .local v6, "newExpiry":J
    :goto_0
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    #@d
    cmp-long v0, v6, v0

    #@f
    if-nez v0, :cond_1

    #@11
    return-void

    #@12
    .line 502
    .end local v6    # "newExpiry":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    #@14
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    #@1a
    iget-wide v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    #@1c
    .restart local v6    # "newExpiry":J
    goto :goto_0

    #@1d
    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 512
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@26
    .line 513
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@28
    .line 516
    :cond_2
    const-wide/16 v0, 0x0

    #@2a
    cmp-long v0, v6, v0

    #@2c
    if-lez v0, :cond_3

    #@2e
    .line 517
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    #@30
    .line 518
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    #@32
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    #@34
    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "NETWORK_LINGER_COMPLETE."

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@42
    iget v4, v4, Landroid/net/Network;->netId:I

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 520
    const/16 v4, 0x3e9

    #@4e
    move-object v5, p0

    #@4f
    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@55
    .line 521
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    #@57
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@5a
    .line 524
    :cond_3
    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    #@5c
    .line 501
    return-void
.end method
