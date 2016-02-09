.class public final Landroid/net/nsd/NsdManager;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$DiscoveryListener;,
        Landroid/net/nsd/NsdManager$RegistrationListener;,
        Landroid/net/nsd/NsdManager$ResolveListener;,
        Landroid/net/nsd/NsdManager$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_NSD_STATE_CHANGED:Ljava/lang/String; = "android.net.nsd.STATE_CHANGED"

.field private static final BASE:I = 0x60000

.field private static final BUSY_LISTENER_KEY:I = -0x1

.field public static final DISABLE:I = 0x60019

.field public static final DISCOVER_SERVICES:I = 0x60001

.field public static final DISCOVER_SERVICES_FAILED:I = 0x60003

.field public static final DISCOVER_SERVICES_STARTED:I = 0x60002

.field public static final ENABLE:I = 0x60018

.field public static final EXTRA_NSD_STATE:Ljava/lang/String; = "nsd_state"

.field public static final FAILURE_ALREADY_ACTIVE:I = 0x3

.field public static final FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final FAILURE_MAX_LIMIT:I = 0x4

.field private static final INVALID_LISTENER_KEY:I = 0x0

.field public static final NATIVE_DAEMON_EVENT:I = 0x6001a

.field public static final NSD_STATE_DISABLED:I = 0x1

.field public static final NSD_STATE_ENABLED:I = 0x2

.field public static final PROTOCOL_DNS_SD:I = 0x1

.field public static final REGISTER_SERVICE:I = 0x60009

.field public static final REGISTER_SERVICE_FAILED:I = 0x6000a

.field public static final REGISTER_SERVICE_SUCCEEDED:I = 0x6000b

.field public static final RESOLVE_SERVICE:I = 0x60012

.field public static final RESOLVE_SERVICE_FAILED:I = 0x60013

.field public static final RESOLVE_SERVICE_SUCCEEDED:I = 0x60014

.field public static final SERVICE_FOUND:I = 0x60004

.field public static final SERVICE_LOST:I = 0x60005

.field public static final STOP_DISCOVERY:I = 0x60006

.field public static final STOP_DISCOVERY_FAILED:I = 0x60007

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x60008

.field private static final TAG:Ljava/lang/String; = "NsdManager"

.field public static final UNREGISTER_SERVICE:I = 0x6000c

.field public static final UNREGISTER_SERVICE_FAILED:I = 0x6000d

.field public static final UNREGISTER_SERVICE_SUCCEEDED:I = 0x6000e


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mConnected:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mMapLock:Ljava/lang/Object;

.field mService:Landroid/net/nsd/INsdManager;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getNsdService(I)Landroid/net/nsd/NsdServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/net/nsd/NsdManager;I)V
    .locals 0
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->removeListener(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/nsd/INsdManager;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 215
    iput v1, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    #@6
    .line 216
    new-instance v0, Landroid/util/SparseArray;

    #@8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@b
    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@d
    .line 217
    new-instance v0, Landroid/util/SparseArray;

    #@f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@12
    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    #@14
    .line 218
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@1b
    .line 220
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@1d
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@20
    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@22
    .line 222
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@24
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@27
    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    #@29
    .line 233
    iput-object p2, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    #@2b
    .line 234
    iput-object p1, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    #@2d
    .line 235
    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->init()V

    #@30
    .line 232
    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 399
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 400
    :cond_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 400
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 420
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    .line 422
    .local v0, "valueIndex":I
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 423
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    monitor-exit v2

    #@13
    return v1

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 426
    const/4 v1, 0x0

    #@16
    return v1

    #@17
    .line 420
    .end local v0    # "valueIndex":I
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

.method private getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    #@2
    invoke-interface {v1}, Landroid/net/nsd/INsdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 634
    :catch_0
    move-exception v0

    #@8
    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method private getNsdService(I)Landroid/net/nsd/NsdServiceInfo;
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 406
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/nsd/NsdServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 406
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    .line 430
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, "?"

    #@5
    return-object v0

    #@6
    .line 431
    :cond_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private init()V
    .locals 6

    #@0
    .prologue
    .line 438
    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->getMessenger()Landroid/os/Messenger;

    #@3
    move-result-object v1

    #@4
    .line 439
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    #@6
    new-instance v3, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v4, "Failed to initialize"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 440
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    #@11
    const-string/jumbo v3, "NsdManager"

    #@14
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@17
    .line 441
    .local v2, "t":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@1a
    .line 442
    new-instance v3, Landroid/net/nsd/NsdManager$ServiceHandler;

    #@1c
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v4

    #@20
    invoke-direct {v3, p0, v4}, Landroid/net/nsd/NsdManager$ServiceHandler;-><init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V

    #@23
    iput-object v3, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    #@25
    .line 443
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@27
    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    #@29
    iget-object v5, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    #@2b
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@2e
    .line 445
    :try_start_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    #@30
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 437
    :goto_0
    return-void

    #@34
    .line 446
    :catch_0
    move-exception v0

    #@35
    .line 447
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NsdManager"

    #@38
    const-string/jumbo v4, "interrupted wait at init"

    #@3b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0
.end method

.method private putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I
    .locals 5
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "s"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 382
    if-nez p1, :cond_0

    #@4
    return v2

    #@5
    .line 384
    :cond_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 385
    :try_start_0
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v1

    #@e
    .line 386
    .local v1, "valueIndex":I
    if-eq v1, v4, :cond_1

    #@10
    monitor-exit v3

    #@11
    .line 387
    return v4

    #@12
    .line 390
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    #@14
    add-int/lit8 v2, v0, 0x1

    #@16
    iput v2, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    #@18
    .line 391
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@1a
    .line 392
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f
    .line 393
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v3

    #@25
    .line 395
    return v0

    #@26
    .line 384
    .end local v0    # "key":I
    .end local v1    # "valueIndex":I
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2
.end method

.method private removeListener(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 412
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 413
    :cond_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@b
    .line 415
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 411
    return-void

    #@12
    .line 413
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method public discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@0
    .prologue
    .line 543
    if-nez p3, :cond_0

    #@2
    .line 544
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "listener cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 546
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 547
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "Service type cannot be empty"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 550
    :cond_1
    const/4 v2, 0x1

    #@1b
    if-eq p2, v2, :cond_2

    #@1d
    .line 551
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Unsupported protocol"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 554
    :cond_2
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    #@28
    invoke-direct {v1}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    #@2b
    .line 555
    .local v1, "s":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {v1, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    #@2e
    .line 557
    invoke-direct {p0, p3, v1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    #@31
    move-result v0

    #@32
    .line 558
    .local v0, "key":I
    const/4 v2, -0x1

    #@33
    if-ne v0, v2, :cond_3

    #@35
    .line 559
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v3, "listener already in use"

    #@3a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 562
    :cond_3
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@40
    const v3, 0x60001

    #@43
    const/4 v4, 0x0

    #@44
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@47
    .line 542
    return-void
.end method

.method public registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 470
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 471
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    .line 470
    if-eqz v1, :cond_1

    #@15
    .line 472
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "Service name or type cannot be empty"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 474
    :cond_1
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    #@21
    move-result v1

    #@22
    if-gtz v1, :cond_2

    #@24
    .line 475
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v2, "Invalid port number"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 477
    :cond_2
    if-nez p3, :cond_3

    #@2f
    .line 478
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v2, "listener cannot be null"

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 480
    :cond_3
    const/4 v1, 0x1

    #@39
    if-eq p2, v1, :cond_4

    #@3b
    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v2, "Unsupported protocol"

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 483
    :cond_4
    invoke-direct {p0, p3, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    #@47
    move-result v0

    #@48
    .line 484
    .local v0, "key":I
    const/4 v1, -0x1

    #@49
    if-ne v0, v1, :cond_5

    #@4b
    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v2, "listener already in use"

    #@50
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 487
    :cond_5
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@56
    const v2, 0x60009

    #@59
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@5c
    .line 469
    return-void
.end method

.method public resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .locals 4
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "listener"    # Landroid/net/nsd/NsdManager$ResolveListener;

    #@0
    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 603
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v1

    #@12
    .line 602
    if-eqz v1, :cond_1

    #@14
    .line 604
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v2, "Service name or type cannot be empty"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 606
    :cond_1
    if-nez p2, :cond_2

    #@1f
    .line 607
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "listener cannot be null"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 610
    :cond_2
    invoke-direct {p0, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    #@2b
    move-result v0

    #@2c
    .line 612
    .local v0, "key":I
    const/4 v1, -0x1

    #@2d
    if-ne v0, v1, :cond_3

    #@2f
    .line 613
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v2, "listener already in use"

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 615
    :cond_3
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@3a
    const v2, 0x60012

    #@3d
    const/4 v3, 0x0

    #@3e
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@41
    .line 601
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 621
    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/nsd/INsdManager;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 619
    :goto_0
    return-void

    #@6
    .line 622
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 582
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 583
    .local v0, "id":I
    if-nez v0, :cond_0

    #@7
    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "service discovery not active on listener"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 586
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "listener cannot be null"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 589
    :cond_1
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1d
    const v2, 0x60006

    #@20
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@23
    .line 581
    return-void
.end method

.method public unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 504
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 505
    .local v0, "id":I
    if-nez v0, :cond_0

    #@7
    .line 506
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "listener not registered"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 508
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "listener cannot be null"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 511
    :cond_1
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1d
    const v2, 0x6000c

    #@20
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@23
    .line 503
    return-void
.end method
