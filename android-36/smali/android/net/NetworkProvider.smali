.class public Landroid/net/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;,
        Landroid/net/NetworkProvider$NetworkOfferCallback;
    }
.end annotation


# static fields
.field public static final blacklist CMD_CANCEL_REQUEST:I = 0x2

.field public static final blacklist CMD_REQUEST_NETWORK:I = 0x1

.field public static final blacklist FIRST_PROVIDER_ID:I = 0x1

.field public static final whitelist ID_NONE:I = -0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mProviderId:I

.field private final blacklist mProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/net/NetworkProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkProvider;->mProviderId:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/net/NetworkProvider$1;

    invoke-direct {v0, p0, p2}, Landroid/net/NetworkProvider$1;-><init>(Landroid/net/NetworkProvider;Landroid/os/Looper;)V

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    iput-object p1, p0, Landroid/net/NetworkProvider;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/net/NetworkProvider;->mMessenger:Landroid/os/Messenger;

    .line 105
    iput-object p3, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private blacklist findProxyForCallback(Landroid/net/NetworkProvider$NetworkOfferCallback;)Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    .registers 6
    .param p1, "cb"    # Landroid/net/NetworkProvider$NetworkOfferCallback;

    .line 219
    iget-object v0, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    .line 221
    .local v2, "p":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    iget-object v3, v2, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    if-ne v3, p1, :cond_1b

    monitor-exit v0

    return-object v2

    .line 222
    .end local v2    # "p":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    :cond_1b
    goto :goto_9

    .line 223
    :cond_1c
    monitor-exit v0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 223
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public whitelist declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/net/NetworkProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    .line 168
    return-void
.end method

.method public blacklist getMessenger()Landroid/os/Messenger;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/net/NetworkProvider;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProviderId()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/net/NetworkProvider;->mProviderId:I

    return v0
.end method

.method public whitelist onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 153
    return-void
.end method

.method public whitelist onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "providerId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 146
    return-void
.end method

.method public whitelist registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V
    .registers 11
    .param p1, "score"    # Landroid/net/NetworkScore;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/NetworkProvider$NetworkOfferCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 291
    iget v0, p0, Landroid/net/NetworkProvider;->mProviderId:I

    .line 292
    .local v0, "providerId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 293
    :cond_6
    const/4 v1, 0x0

    .line 294
    .local v1, "proxy":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    iget-object v2, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    monitor-enter v2

    .line 295
    :try_start_a
    iget-object v3, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    .line 296
    .local v4, "existingProxy":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    iget-object v5, v4, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->callback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    if-ne v5, p4, :cond_22

    .line 297
    move-object v1, v4

    .line 298
    goto :goto_23

    .line 300
    .end local v4    # "existingProxy":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    :cond_22
    goto :goto_10

    .line 301
    :cond_23
    :goto_23
    if-nez v1, :cond_30

    .line 302
    new-instance v3, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    invoke-direct {v3, p0, p4, p3}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;-><init>(Landroid/net/NetworkProvider;Landroid/net/NetworkProvider$NetworkOfferCallback;Ljava/util/concurrent/Executor;)V

    move-object v1, v3

    .line 303
    iget-object v3, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_3f

    .line 306
    iget-object v2, p0, Landroid/net/NetworkProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 307
    invoke-virtual {v2, v0, p1, p2, v1}, Landroid/net/ConnectivityManager;->offerNetwork(ILandroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/INetworkOfferCallback;)V

    .line 308
    return-void

    .line 305
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public blacklist setProviderId(I)V
    .registers 2
    .param p1, "providerId"    # I

    .line 130
    iput p1, p0, Landroid/net/NetworkProvider;->mProviderId:I

    .line 131
    return-void
.end method

.method public whitelist unregisterNetworkOffer(Landroid/net/NetworkProvider$NetworkOfferCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/NetworkProvider$NetworkOfferCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Landroid/net/NetworkProvider;->findProxyForCallback(Landroid/net/NetworkProvider$NetworkOfferCallback;)Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    move-result-object v0

    .line 333
    .local v0, "proxy":Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;
    if-nez v0, :cond_7

    return-void

    .line 334
    :cond_7
    iget-object v1, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    monitor-enter v1

    .line 335
    :try_start_a
    iget-object v2, p0, Landroid/net/NetworkProvider;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    .line 337
    iget-object v1, p0, Landroid/net/NetworkProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unofferNetwork(Landroid/net/connectivity/android/net/INetworkOfferCallback;)V

    .line 338
    return-void

    .line 336
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method
