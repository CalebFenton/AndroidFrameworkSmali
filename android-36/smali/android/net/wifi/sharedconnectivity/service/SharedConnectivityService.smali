.class public abstract Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;
.super Landroid/app/Service;
.source "SharedConnectivityService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

.field private blacklist mHotspotNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

.field private blacklist mKnownNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHotspotNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHotspotNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnownNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnownNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const-class v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 73
    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 74
    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    return-void
.end method

.method public static whitelist areHotspotNetworksEnabledForService(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    const v1, 0x10402d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "servicePackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    const v2, 0x11101c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 414
    :goto_25
    return v1
.end method

.method public static whitelist areKnownNetworksEnabledForService(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 425
    const v1, 0x10402d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "servicePackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 428
    const v2, 0x11101d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 426
    :goto_25
    return v1
.end method

.method private blacklist onRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    .line 272
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 274
    :try_start_5
    invoke-interface {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onServiceConnected()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 277
    goto :goto_11

    .line 275
    :catch_9
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Exception in onRegisterCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1a

    .line 279
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 281
    :cond_1a
    return-void
.end method

.method private blacklist onUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    .line 284
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 285
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_e

    .line 286
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 288
    :cond_e
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 81
    sget-object v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)V

    .line 256
    .local v0, "serviceStub":Landroid/os/IBinder;
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onBind()V

    .line 257
    return-object v0
.end method

.method public blacklist onBind()V
    .registers 1

    .line 263
    return-void
.end method

.method public abstract whitelist onConnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
.end method

.method public abstract whitelist onConnectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
.end method

.method public abstract whitelist onDisconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
.end method

.method public abstract whitelist onForgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
.end method

.method public final blacklist setCountdownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 268
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 269
    return-void
.end method

.method public final whitelist setHotspotNetworks(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    .line 302
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 303
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 305
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onHotspotNetworksUpdated(Ljava/util/List;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 308
    goto :goto_21

    .line 306
    :catch_19
    move-exception v2

    .line 307
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setHotspotNetworks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 310
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 311
    return-void
.end method

.method public final whitelist setKnownNetworks(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    .line 325
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 328
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onKnownNetworksUpdated(Ljava/util/List;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 331
    goto :goto_21

    .line 329
    :catch_19
    move-exception v2

    .line 330
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setKnownNetworks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 333
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 334
    return-void
.end method

.method public final whitelist setSettingsState(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 7
    .param p1, "settingsState"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 347
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 349
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 350
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 352
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 356
    goto :goto_21

    .line 354
    :catch_19
    move-exception v2

    .line 355
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setSettingsState"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 358
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 359
    return-void
.end method

.method public final whitelist updateHotspotNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 7
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 369
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 371
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 372
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 374
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 375
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 379
    goto :goto_21

    .line 377
    :catch_19
    move-exception v2

    .line 378
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in updateHotspotNetworkConnectionStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 381
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 382
    return-void
.end method

.method public final whitelist updateKnownNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 7
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 392
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 394
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 395
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 397
    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 398
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 402
    goto :goto_21

    .line 400
    :catch_19
    move-exception v2

    .line 401
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in updateKnownNetworkConnectionStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 404
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 405
    return-void
.end method
