.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$Listener;,
        Landroid/net/EthernetManager$InterfaceStateListener;,
        Landroid/net/EthernetManager$TetheredInterfaceCallback;,
        Landroid/net/EthernetManager$TetheredInterfaceRequest;,
        Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;,
        Landroid/net/EthernetManager$Role;,
        Landroid/net/EthernetManager$InterfaceState;
    }
.end annotation


# static fields
.field public static final blacklist ETHERNET_STATE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ETHERNET_STATE_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ROLE_CLIENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ROLE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ROLE_SERVER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATE_ABSENT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATE_LINK_DOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist STATE_LINK_UP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final blacklist mIfaceServiceListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/EthernetManager$InterfaceStateListener;",
            "Landroid/net/IEthernetServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/net/IEthernetManager;

.field private final blacklist mStateServiceListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/IntConsumer;",
            "Landroid/net/IEthernetServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IEthernetManager;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mIfaceServiceListeners:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mStateServiceListeners:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetManager;->mListenerLock:Ljava/lang/Object;

    .line 184
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    .line 185
    return-void
.end method

.method private blacklist addServiceListener(Landroid/net/IEthernetServiceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 311
    nop

    .line 313
    return-void

    .line 309
    :catch_7
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist makeNetworkInterfaceOutcomeReceiver(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;)",
            "Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;"
        }
    .end annotation

    .line 492
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/String;Landroid/net/EthernetNetworkManagementException;>;"
    if-eqz p2, :cond_7

    .line 493
    const-string v0, "Pass a non-null executor, or a null callback"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    :cond_7
    if-nez p2, :cond_b

    .line 497
    const/4 v0, 0x0

    .local v0, "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    goto :goto_10

    .line 499
    .end local v0    # "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    :cond_b
    new-instance v0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    invoke-direct {v0, p1, p2}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 501
    .restart local v0    # "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    :goto_10
    return-object v0
.end method

.method private blacklist maybeRemoveServiceListener(Landroid/net/IEthernetServiceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    .line 344
    if-nez p1, :cond_3

    return-void

    .line 347
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 350
    nop

    .line 351
    return-void

    .line 348
    :catch_a
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist addEthernetStateListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 663
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v0, Landroid/net/EthernetManager$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/EthernetManager$3;-><init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 675
    .local v0, "serviceListener":Landroid/net/IEthernetServiceListener$Stub;
    iget-object v1, p0, Landroid/net/EthernetManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    :try_start_e
    invoke-direct {p0, v0}, Landroid/net/EthernetManager;->addServiceListener(Landroid/net/IEthernetServiceListener;)V

    .line 677
    iget-object v2, p0, Landroid/net/EthernetManager;->mStateServiceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    monitor-exit v1

    .line 679
    return-void

    .line 678
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public blacklist addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/EthernetManager$InterfaceStateListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 284
    if-eqz p2, :cond_19

    if-eqz p1, :cond_19

    .line 288
    new-instance v0, Landroid/net/EthernetManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 299
    .local v0, "serviceListener":Landroid/net/IEthernetServiceListener$Stub;
    iget-object v1, p0, Landroid/net/EthernetManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_c
    invoke-direct {p0, v0}, Landroid/net/EthernetManager;->addServiceListener(Landroid/net/IEthernetServiceListener;)V

    .line 301
    iget-object v2, p0, Landroid/net/EthernetManager;->mIfaceServiceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v2

    .line 285
    .end local v0    # "serviceListener":Landroid/net/IEthernetServiceListener$Stub;
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener and executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r addListener(Landroid/net/EthernetManager$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .line 248
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/EthernetManager;->addListener(Landroid/net/EthernetManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 249
    return-void
.end method

.method public greylist-max-r addListener(Landroid/net/EthernetManager$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 262
    invoke-virtual {p0, p2, p1}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 263
    return-void
.end method

.method public whitelist disableInterface(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;)V"
        }
    .end annotation

    .line 614
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/String;Landroid/net/EthernetNetworkManagementException;>;"
    const-string v0, "iface must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 615
    invoke-direct {p0, p2, p3}, Landroid/net/EthernetManager;->makeNetworkInterfaceOutcomeReceiver(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    move-result-object v0

    .line 618
    .local v0, "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    :try_start_9
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IEthernetManager;->disableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 621
    nop

    .line 622
    return-void

    .line 619
    :catch_10
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist enableInterface(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/String;Landroid/net/EthernetNetworkManagementException;>;"
    const-string v0, "iface must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 579
    invoke-direct {p0, p2, p3}, Landroid/net/EthernetManager;->makeNetworkInterfaceOutcomeReceiver(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    move-result-object v0

    .line 582
    .local v0, "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    :try_start_9
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IEthernetManager;->enableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catch_10
    move-exception v1

    .line 584
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r getAvailableInterfaces()[Ljava/lang/String;
    .registers 3

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0}, Landroid/net/IEthernetManager;->getAvailableInterfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 323
    :catch_7
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInterfaceList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0}, Landroid/net/IEthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 708
    :catch_7
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r isAvailable()Z
    .registers 2

    .line 220
    invoke-virtual {p0}, Landroid/net/EthernetManager;->getAvailableInterfaces()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-r isAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->isAvailable(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 233
    :catch_7
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeEthernetStateListener(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "listener"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 691
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Landroid/net/EthernetManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_6
    iget-object v1, p0, Landroid/net/EthernetManager;->mStateServiceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IEthernetServiceListener;

    invoke-direct {p0, v1}, Landroid/net/EthernetManager;->maybeRemoveServiceListener(Landroid/net/IEthernetServiceListener;)V

    .line 694
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/EthernetManager$InterfaceStateListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 336
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Landroid/net/EthernetManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_6
    iget-object v1, p0, Landroid/net/EthernetManager;->mIfaceServiceListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IEthernetServiceListener;

    invoke-direct {p0, v1}, Landroid/net/EthernetManager;->maybeRemoveServiceListener(Landroid/net/IEthernetServiceListener;)V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public greylist-max-r removeListener(Landroid/net/EthernetManager$Listener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    .line 361
    if-eqz p1, :cond_6

    .line 364
    invoke-virtual {p0, p1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 365
    return-void

    .line 362
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/EthernetManager$TetheredInterfaceCallback;

    .line 439
    const-string v0, "Callback must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    const-string v0, "Executor must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    new-instance v0, Landroid/net/EthernetManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)V

    .line 454
    .local v0, "cbInternal":Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    :try_start_f
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, v0}, Landroid/net/IEthernetManager;->requestTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1e

    .line 457
    nop

    .line 458
    new-instance v1, Landroid/net/EthernetManager$TetheredInterfaceRequest;

    iget-object v2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/net/EthernetManager$TetheredInterfaceRequest;-><init>(Landroid/net/IEthernetManager;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;Landroid/net/EthernetManager-IA;)V

    return-object v1

    .line 455
    :catch_1e
    move-exception v1

    .line 456
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r setConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IEthernetManager;->setConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEthernetEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setEthernetEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 641
    nop

    .line 642
    return-void

    .line 639
    :catch_7
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIncludeTestInterfaces(Z)V
    .registers 4
    .param p1, "include"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/IEthernetManager;->setIncludeTestInterfaces(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 379
    nop

    .line 380
    return-void

    .line 377
    :catch_7
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/EthernetNetworkUpdateRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkUpdateRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/String;",
            "Landroid/net/EthernetNetworkManagementException;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/String;Landroid/net/EthernetNetworkManagementException;>;"
    const-string v0, "iface must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    const-string v0, "request must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    invoke-direct {p0, p3, p4}, Landroid/net/EthernetManager;->makeNetworkInterfaceOutcomeReceiver(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    move-result-object v0

    .line 546
    .local v0, "proxy":Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;
    :try_start_e
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/net/IEthernetManager;->updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    .line 549
    nop

    .line 550
    return-void

    .line 547
    :catch_15
    move-exception v1

    .line 548
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
