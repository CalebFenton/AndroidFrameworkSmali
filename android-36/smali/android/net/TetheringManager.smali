.class public Landroid/net/TetheringManager;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TetheringManager$TetheringCallbackInternal;,
        Landroid/net/TetheringManager$ConnectorConsumer;,
        Landroid/net/TetheringManager$RequestDispatcher;,
        Landroid/net/TetheringManager$RequestHelper;,
        Landroid/net/TetheringManager$StartTetheringCallback;,
        Landroid/net/TetheringManager$TetheringRequest;,
        Landroid/net/TetheringManager$StopTetheringCallback;,
        Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;,
        Landroid/net/TetheringManager$TetheringEventCallback;,
        Landroid/net/TetheringManager$TetheringInterfaceRegexps;,
        Landroid/net/TetheringManager$ConnectivityScope;,
        Landroid/net/TetheringManager$TetheredInterfaceCallback;,
        Landroid/net/TetheringManager$TetheredInterfaceRequest;,
        Landroid/net/TetheringManager$TetherOffloadStatus;,
        Landroid/net/TetheringManager$StopTetheringError;,
        Landroid/net/TetheringManager$StartTetheringError;,
        Landroid/net/TetheringManager$TetheringIfaceError;,
        Landroid/net/TetheringManager$EntitlementResult;,
        Landroid/net/TetheringManager$TetheringType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONNECTIVITY_SCOPE_GLOBAL:I = 0x1

.field public static final whitelist CONNECTIVITY_SCOPE_LOCAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist CONNECTOR_POLL_INTERVAL_MILLIS:J = 0xc8L

.field private static final blacklist DEFAULT_TIMEOUT_MS:I = 0xea60

.field public static final whitelist EXTRA_ACTIVE_LOCAL_ONLY:Ljava/lang/String; = "android.net.extra.ACTIVE_LOCAL_ONLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "tetherArray"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MAX_TETHERING_TYPE:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TETHERING_BLUETOOTH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_ETHERNET:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_NCM:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_USB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TETHERING_VIRTUAL:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHERING_WIFI:I = 0x0

.field public static final whitelist TETHERING_WIFI_P2P:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TETHERING_WIGIG:I = 0x6

.field public static final blacklist TETHER_ERROR_BLUETOOTH_SERVICE_PENDING:I = 0x13

.field public static final whitelist TETHER_ERROR_DHCPSERVER_ERROR:I = 0xc

.field public static final whitelist TETHER_ERROR_DISABLE_FORWARDING_ERROR:I = 0x9

.field public static final whitelist TETHER_ERROR_DUPLICATE_REQUEST:I = 0x12

.field public static final whitelist TETHER_ERROR_ENABLE_FORWARDING_ERROR:I = 0x8

.field public static final whitelist TETHER_ERROR_ENTITLEMENT_UNKNOWN:I = 0xd

.field public static final whitelist TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final whitelist TETHER_ERROR_INTERNAL_ERROR:I = 0x5

.field public static final whitelist TETHER_ERROR_NO_ACCESS_TETHERING_PERMISSION:I = 0xf

.field public static final whitelist TETHER_ERROR_NO_CHANGE_TETHERING_PERMISSION:I = 0xe

.field public static final whitelist TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final whitelist TETHER_ERROR_PROVISIONING_FAILED:I = 0xb

.field public static final whitelist TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final blacklist TETHER_ERROR_SOFT_AP_CALLBACK_PENDING:I = 0x14

.field public static final whitelist TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final whitelist TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final whitelist TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final whitelist TETHER_ERROR_UNKNOWN_REQUEST:I = 0x11

.field public static final whitelist TETHER_ERROR_UNKNOWN_TYPE:I = 0x10

.field public static final whitelist TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final whitelist TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final whitelist TETHER_HARDWARE_OFFLOAD_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHER_HARDWARE_OFFLOAD_STARTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TETHER_HARDWARE_OFFLOAD_STOPPED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

.field private blacklist mConnector:Landroid/net/ITetheringConnector;

.field private final blacklist mConnectorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConnectorWaitQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/TetheringManager$ConnectorConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mTetherStatesParcel:Landroid/net/TetherStatesParcel;

.field private volatile blacklist mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

.field private final blacklist mTetheringEventCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/TetheringManager$TetheringEventCallback;",
            "Landroid/net/ITetheringEventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1ILsEycClxw6WNIA0pbOVuTbLzU(Landroid/net/TetheringManager;ZLjava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/TetheringManager;->lambda$setUsbTethering$5(ZLjava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9-zRglV6UGu2r-Gj0SUS52bFcZI(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;Landroid/net/ITetheringConnector;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/net/TetheringManager;->lambda$stopTethering$8(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GAGL3PWzMZdMnpIfgqgwcKBF7dM(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/TetheringManager;->lambda$tether$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KcKbV-Ufa1SVRnqjPiKhPufh7ac(Landroid/net/TetheringManager;ILandroid/os/ResultReceiver;ZLjava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/net/TetheringManager;->lambda$requestLatestTetheringEntitlementResult$9(ILandroid/os/ResultReceiver;ZLjava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W3WcUD0fkB4_yC1EJnmH_SZB_A8(Landroid/net/TetheringManager;ILjava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/TetheringManager;->lambda$stopTethering$7(ILjava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_iXa3VBew_wy8y_9Jz89DoJtkC0(Landroid/net/TetheringManager;Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/TetheringManager;->lambda$new$0(Ljava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aBg24KGRT-KFDKerbCvHX6Lps2Y(Landroid/net/TetheringManager;Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/TetheringManager;->lambda$stopAllTethering$13(Ljava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gQHQsnJeWsc7bnfMTjVIkhaiO1U(Landroid/net/TetheringManager;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/net/TetheringManager;->lambda$isTetheringSupported$12(Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gflRcFlmGY6sAq4KMjkknnQRAmg(Landroid/net/TetheringManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/TetheringManager;->lambda$startPollingForConnector$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wAerirpNxfC0UY6Bo5RZhXxmVaY(Landroid/net/TetheringManager;Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/TetheringManager;->lambda$finalize$1(Ljava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xhn57Fi_glRYNb0HjUDR7KKlQ2w(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;Landroid/net/ITetheringConnector;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/TetheringManager;->lambda$startTethering$6(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zKx-mSVyWAeeG9-lYxZ-X7Wb7Yo(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/TetheringManager;->lambda$untether$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTetherStatesParcel(Landroid/net/TetheringManager;Landroid/net/TetherStatesParcel;)V
    .registers 2

    iput-object p1, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTetheringConfiguration(Landroid/net/TetheringManager;Landroid/net/TetheringConfigurationParcel;)V
    .registers 2

    iput-object p1, p0, Landroid/net/TetheringManager;->mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConnector(Landroid/net/TetheringManager;Landroid/net/TetheringManager$ConnectorConsumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconnectivityScopeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/TetheringManager;->connectivityScopeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smthrowIfPermissionFailure(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/TetheringManager;->throwIfPermissionFailure(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtypeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/TetheringManager;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p2, "connectorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    .line 389
    iput-object p1, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    .line 390
    new-instance v0, Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-direct {v0, p0}, Landroid/net/TetheringManager$TetheringCallbackInternal;-><init>(Landroid/net/TetheringManager;)V

    iput-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    .line 391
    iput-object p2, p0, Landroid/net/TetheringManager;->mConnectorSupplier:Ljava/util/function/Supplier;

    .line 393
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/TetheringManager;->mConnectorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 406
    .local v1, "connector":Landroid/os/IBinder;
    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 407
    invoke-static {v1}, Landroid/net/ITetheringConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringConnector;

    move-result-object v2

    iput-object v2, p0, Landroid/net/TetheringManager;->mConnector:Landroid/net/ITetheringConnector;

    goto :goto_3c

    .line 409
    :cond_39
    invoke-direct {p0}, Landroid/net/TetheringManager;->startPollingForConnector()V

    .line 412
    :goto_3c
    sget-object v2, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTetheringEventCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v2, Landroid/net/TetheringManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda2;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 414
    return-void
.end method

.method private static blacklist connectivityScopeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "scope"    # I

    .line 807
    packed-switch p0, :pswitch_data_24

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECTIVITY_SCOPE_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 811
    :pswitch_1d
    const-string v0, "CONNECTIVITY_SCOPE_LOCAL"

    return-object v0

    .line 809
    :pswitch_20
    const-string v0, "CONNECTIVITY_SCOPE_GLOBAL"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 721
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V
    .registers 5
    .param p1, "consumer"    # Landroid/net/TetheringManager$ConnectorConsumer;

    .line 508
    iget-object v0, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    monitor-enter v0

    .line 509
    :try_start_3
    iget-object v1, p0, Landroid/net/TetheringManager;->mConnector:Landroid/net/ITetheringConnector;

    .line 510
    .local v1, "connector":Landroid/net/ITetheringConnector;
    if-nez v1, :cond_e

    .line 511
    iget-object v2, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v0

    return-void

    .line 514
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    .line 517
    :try_start_f
    invoke-interface {p1, v1}, Landroid/net/TetheringManager$ConnectorConsumer;->onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 520
    nop

    .line 521
    return-void

    .line 518
    :catch_14
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "connector":Landroid/net/ITetheringConnector;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private synthetic blacklist lambda$finalize$1(Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-interface {p2, v0, p1}, Landroid/net/ITetheringConnector;->unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$isTetheringSupported$12(Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 6
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "connector"    # Landroid/net/ITetheringConnector;
    .param p3, "listener"    # Landroid/net/IIntResultListener;

    .line 2198
    :try_start_0
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, Landroid/net/ITetheringConnector;->isTetheringSupported(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2201
    nop

    .line 2202
    return-void

    .line 2199
    :catch_9
    move-exception v0

    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-interface {p2, v0, p1}, Landroid/net/ITetheringConnector;->registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerTetheringEventCallback$10(Landroid/net/ITetheringEventCallback;Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 3
    .param p0, "remoteCallback"    # Landroid/net/ITetheringEventCallback;
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    invoke-interface {p2, p0, p1}, Landroid/net/ITetheringConnector;->registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestLatestTetheringEntitlementResult$9(ILandroid/os/ResultReceiver;ZLjava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z
    .param p4, "callerPkg"    # Ljava/lang/String;
    .param p5, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    nop

    .line 1566
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1565
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v0, p5

    .end local p1    # "type":I
    .end local p2    # "receiver":Landroid/os/ResultReceiver;
    .end local p3    # "showEntitlementUi":Z
    .end local p4    # "callerPkg":Ljava/lang/String;
    .end local p5    # "c":Landroid/net/ITetheringConnector;
    .local v0, "c":Landroid/net/ITetheringConnector;
    .local v1, "type":I
    .local v2, "receiver":Landroid/os/ResultReceiver;
    .local v3, "showEntitlementUi":Z
    .local v4, "callerPkg":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Landroid/net/ITetheringConnector;->requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferTestNetworks$14(ZLandroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 5
    .param p0, "prefer"    # Z
    .param p1, "connector"    # Landroid/net/ITetheringConnector;
    .param p2, "listener"    # Landroid/net/IIntResultListener;

    .line 2243
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/net/ITetheringConnector;->setPreferTestNetworks(ZLandroid/net/IIntResultListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_5

    .line 2246
    nop

    .line 2247
    return-void

    .line 2244
    :catch_5
    move-exception v0

    .line 2245
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$setUsbTethering$5(ZLjava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "connector"    # Landroid/net/ITetheringConnector;
    .param p4, "listener"    # Landroid/net/IIntResultListener;

    .line 773
    :try_start_0
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p4}, Landroid/net/ITetheringConnector;->setUsbTethering(ZLjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 777
    nop

    .line 778
    return-void

    .line 775
    :catch_9
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$startPollingForConnector$2()V
    .registers 3

    .line 437
    nop

    :goto_1
    const-wide/16 v0, 0xc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 440
    goto :goto_8

    .line 438
    :catch_7
    move-exception v0

    .line 441
    :goto_8
    iget-object v0, p0, Landroid/net/TetheringManager;->mConnectorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 442
    .local v0, "connector":Landroid/os/IBinder;
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 443
    invoke-static {v0}, Landroid/net/ITetheringConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringConnector;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->onTetheringConnected(Landroid/net/ITetheringConnector;)V

    .line 444
    return-void

    .line 446
    .end local v0    # "connector":Landroid/os/IBinder;
    :cond_20
    goto :goto_1
.end method

.method private synthetic blacklist lambda$startTethering$6(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;Landroid/net/ITetheringConnector;)V
    .registers 7
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/IIntResultListener;
    .param p4, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1420
    invoke-virtual {p1}, Landroid/net/TetheringManager$TetheringRequest;->getParcel()Landroid/net/TetheringRequestParcel;

    move-result-object v0

    .line 1421
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-interface {p4, v0, p2, v1, p3}, Landroid/net/ITetheringConnector;->startTethering(Landroid/net/TetheringRequestParcel;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$stopAllTethering$13(Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 5
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2217
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/TetheringManager$6;

    invoke-direct {v1, p0}, Landroid/net/TetheringManager$6;-><init>(Landroid/net/TetheringManager;)V

    invoke-interface {p2, p1, v0, v1}, Landroid/net/ITetheringConnector;->stopAllTethering(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$stopTethering$7(ILjava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1452
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/TetheringManager$2;

    invoke-direct {v1, p0}, Landroid/net/TetheringManager$2;-><init>(Landroid/net/TetheringManager;)V

    invoke-interface {p3, p1, p2, v0, v1}, Landroid/net/ITetheringConnector;->stopTethering(ILjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$stopTethering$8(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;Landroid/net/ITetheringConnector;)V
    .registers 8
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/TetheringManager$StopTetheringCallback;
    .param p5, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/TetheringManager$3;

    invoke-direct {v1, p0, p3, p4}, Landroid/net/TetheringManager$3;-><init>(Landroid/net/TetheringManager;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;)V

    invoke-interface {p5, p1, p2, v0, v1}, Landroid/net/ITetheringConnector;->stopTetheringRequest(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$tether$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "connector"    # Landroid/net/ITetheringConnector;
    .param p4, "listener"    # Landroid/net/IIntResultListener;

    .line 710
    :try_start_0
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p4}, Landroid/net/ITetheringConnector;->tether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 713
    nop

    .line 714
    return-void

    .line 711
    :catch_9
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$unregisterTetheringEventCallback$11(Landroid/net/ITetheringEventCallback;Ljava/lang/String;Landroid/net/ITetheringConnector;)V
    .registers 3
    .param p0, "remoteCallback"    # Landroid/net/ITetheringEventCallback;
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2031
    invoke-interface {p2, p0, p1}, Landroid/net/ITetheringConnector;->unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$untether$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "connector"    # Landroid/net/ITetheringConnector;
    .param p4, "listener"    # Landroid/net/IIntResultListener;

    .line 746
    :try_start_0
    invoke-direct {p0}, Landroid/net/TetheringManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p4}, Landroid/net/ITetheringConnector;->untether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 749
    nop

    .line 750
    return-void

    .line 747
    :catch_9
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist onTetheringConnected(Landroid/net/ITetheringConnector;)V
    .registers 8
    .param p1, "connector"    # Landroid/net/ITetheringConnector;

    .line 474
    nop

    :goto_1
    iget-object v0, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    monitor-enter v0

    .line 475
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v1, "localWaitQueue":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheringManager$ConnectorConsumer;>;"
    iget-object v2, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 477
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_42

    .line 480
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringManager$ConnectorConsumer;

    .line 482
    .local v2, "task":Landroid/net/TetheringManager$ConnectorConsumer;
    :try_start_21
    invoke-interface {v2, p1}, Landroid/net/TetheringManager$ConnectorConsumer;->onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    .line 487
    goto :goto_2d

    .line 483
    :catch_25
    move-exception v3

    .line 486
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    const-string v5, "Error processing request for the tethering connector"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v2    # "task":Landroid/net/TetheringManager$ConnectorConsumer;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2d
    goto :goto_15

    .line 490
    :cond_2e
    iget-object v2, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    monitor-enter v2

    .line 491
    :try_start_31
    iget-object v0, p0, Landroid/net/TetheringManager;->mConnectorWaitQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3d

    .line 492
    iput-object p1, p0, Landroid/net/TetheringManager;->mConnector:Landroid/net/ITetheringConnector;

    .line 493
    monitor-exit v2

    return-void

    .line 495
    :cond_3d
    monitor-exit v2

    .line 496
    .end local v1    # "localWaitQueue":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheringManager$ConnectorConsumer;>;"
    goto :goto_1

    .line 495
    .restart local v1    # "localWaitQueue":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheringManager$ConnectorConsumer;>;"
    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 477
    .end local v1    # "localWaitQueue":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheringManager$ConnectorConsumer;>;"
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private blacklist startPollingForConnector()V
    .registers 3

    .line 434
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda10;-><init>(Landroid/net/TetheringManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    return-void
.end method

.method private static blacklist throwIfPermissionFailure(I)V
    .registers 3
    .param p0, "errorCode"    # I

    .line 559
    packed-switch p0, :pswitch_data_14

    .line 567
    return-void

    .line 564
    :pswitch_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No android.permission.ACCESS_NETWORK_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :pswitch_c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No android.permission.TETHER_PRIVILEGED or android.permission.WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_14
    .packed-switch 0xe
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist toIfaces(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheringInterface;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1775
    .local p0, "tetherIfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/TetheringInterface;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    .local v0, "ifaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringInterface;

    .line 1777
    .local v2, "tether":Landroid/net/TetheringInterface;
    invoke-virtual {v2}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    .end local v2    # "tether":Landroid/net/TetheringInterface;
    goto :goto_9

    .line 1780
    :cond_1d
    return-object v0
.end method

.method private static blacklist toIfaces([Landroid/net/TetheringInterface;)[Ljava/lang/String;
    .registers 4
    .param p0, "tetherIfaces"    # [Landroid/net/TetheringInterface;

    .line 1784
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 1785
    .local v0, "ifaces":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1786
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1789
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 239
    packed-switch p0, :pswitch_data_32

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TETHERING_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_1d
    const-string v0, "TETHERING_ETHERNET"

    return-object v0

    .line 245
    :pswitch_20
    const-string v0, "TETHERING_NCM"

    return-object v0

    .line 244
    :pswitch_23
    const-string v0, "TETHERING_WIFI_P2P"

    return-object v0

    .line 243
    :pswitch_26
    const-string v0, "TETHERING_BLUETOOTH"

    return-object v0

    .line 242
    :pswitch_29
    const-string v0, "TETHERING_USB"

    return-object v0

    .line 241
    :pswitch_2c
    const-string v0, "TETHERING_WIFI"

    return-object v0

    .line 240
    :pswitch_2f
    const-string v0, "TETHERING_INVALID"

    return-object v0

    :pswitch_data_32
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist unpackBits(J)Landroid/util/ArraySet;
    .registers 8
    .param p0, "val"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1996
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1997
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1998
    .local v1, "bitPos":I
    :goto_a
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_24

    .line 1999
    const-wide/16 v2, 0x1

    and-long v4, p0, v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2001
    :cond_1f
    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    .line 2002
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2005
    :cond_24
    return-object v0
.end method

.method private blacklist unsupportedAfterV()V
    .registers 3

    .line 674
    invoke-static {}, Landroid/net/http/internal/com/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v0

    if-nez v0, :cond_7

    .line 678
    return-void

    .line 675
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported after SDK version 35"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "pkgName":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTetheringEventCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Landroid/net/TetheringManager;->mConnector:Landroid/net/ITetheringConnector;

    if-nez v1, :cond_29

    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    const-string v2, "null connector in finalize!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_29
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda11;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 430
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 431
    return-void
.end method

.method public blacklist getLastTetherError(Ljava/lang/String;)I
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2046
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2047
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 2049
    :cond_b
    const/4 v0, 0x0

    .line 2050
    .local v0, "i":I
    iget-object v2, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    iget-object v2, v2, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    array-length v3, v2

    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 2051
    .local v5, "errored":Landroid/net/TetheringInterface;
    invoke-virtual {v5}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v1, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    iget-object v1, v1, Landroid/net/TetherStatesParcel;->lastErrorList:[I

    aget v1, v1, v0

    return v1

    .line 2053
    :cond_27
    nop

    .end local v5    # "errored":Landroid/net/TetheringInterface;
    add-int/lit8 v0, v0, 0x1

    .line 2050
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2055
    :cond_2d
    return v1
.end method

.method public blacklist getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2099
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2100
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

    iget-object v0, v0, Landroid/net/TetheringConfigurationParcel;->tetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTetherableIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2112
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2113
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2115
    :cond_d
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    iget-object v0, v0, Landroid/net/TetherStatesParcel;->availableList:[Landroid/net/TetheringInterface;

    invoke-static {v0}, Landroid/net/TetheringManager;->toIfaces([Landroid/net/TetheringInterface;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2069
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2070
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

    iget-object v0, v0, Landroid/net/TetheringConfigurationParcel;->tetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2084
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2085
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

    iget-object v0, v0, Landroid/net/TetheringConfigurationParcel;->tetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2160
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2161
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetheringConfiguration:Landroid/net/TetheringConfigurationParcel;

    iget-object v0, v0, Landroid/net/TetheringConfigurationParcel;->legacyDhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTetheredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2126
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2127
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2129
    :cond_d
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    iget-object v0, v0, Landroid/net/TetherStatesParcel;->tetheredList:[Landroid/net/TetheringInterface;

    invoke-static {v0}, Landroid/net/TetheringManager;->toIfaces([Landroid/net/TetheringInterface;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2146
    iget-object v0, p0, Landroid/net/TetheringManager;->mCallback:Landroid/net/TetheringManager$TetheringCallbackInternal;

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringCallbackInternal;->waitForStarted()V

    .line 2147
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2149
    :cond_d
    iget-object v0, p0, Landroid/net/TetheringManager;->mTetherStatesParcel:Landroid/net/TetherStatesParcel;

    iget-object v0, v0, Landroid/net/TetherStatesParcel;->erroredIfaceList:[Landroid/net/TetheringInterface;

    invoke-static {v0}, Landroid/net/TetheringManager;->toIfaces([Landroid/net/TetheringInterface;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isTetheringSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2174
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2176
    .local v0, "callerPkg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/TetheringManager;->isTetheringSupported(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist isTetheringSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callerPkg"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2195
    new-instance v0, Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {v0}, Landroid/net/TetheringManager$RequestDispatcher;-><init>()V

    .line 2196
    .local v0, "dispatcher":Landroid/net/TetheringManager$RequestDispatcher;
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/net/TetheringManager$$ExternalSyntheticLambda8;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/net/TetheringManager$RequestDispatcher;->waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I

    move-result v1

    .line 2204
    .local v1, "ret":I
    if-nez v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public whitelist registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;

    .line 1862
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTetheringEventCallback caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v1, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1869
    :try_start_27
    iget-object v2, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1872
    new-instance v2, Landroid/net/TetheringManager$5;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/TetheringManager$5;-><init>(Landroid/net/TetheringManager;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 1986
    .local v2, "remoteCallback":Landroid/net/ITetheringEventCallback;
    new-instance v3, Landroid/net/TetheringManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda4;-><init>(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 1987
    iget-object v3, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    nop

    .end local v2    # "remoteCallback":Landroid/net/ITetheringEventCallback;
    monitor-exit v1

    .line 1989
    return-void

    .line 1870
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was already registered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callerPkg":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/TetheringManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/TetheringManager$TetheringEventCallback;
    throw v2

    .line 1988
    .restart local v0    # "callerPkg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/TetheringManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/TetheringManager$TetheringEventCallback;
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public blacklist requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1562
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, "callerPkg":Ljava/lang/String;
    sget-object v0, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatestTetheringEntitlementResult caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "type":I
    .end local p2    # "receiver":Landroid/os/ResultReceiver;
    .end local p3    # "showEntitlementUi":Z
    .local v3, "type":I
    .local v4, "receiver":Landroid/os/ResultReceiver;
    .local v5, "showEntitlementUi":Z
    invoke-direct/range {v1 .. v6}, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;-><init>(Landroid/net/TetheringManager;ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 1567
    return-void
.end method

.method public whitelist requestLatestTetheringEntitlementResult(IZLjava/util/concurrent/Executor;Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "showEntitlementUi"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1534
    if-eqz p4, :cond_c

    .line 1539
    new-instance v0, Landroid/net/TetheringManager$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p3, p4}, Landroid/net/TetheringManager$4;-><init>(Landroid/net/TetheringManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$OnTetheringEntitlementResultListener;)V

    .line 1548
    .local v0, "wrappedListener":Landroid/os/ResultReceiver;
    invoke-virtual {p0, p1, v0, p2}, Landroid/net/TetheringManager;->requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 1550
    return-void

    .line 1535
    .end local v0    # "wrappedListener":Landroid/os/ResultReceiver;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnTetheringEntitlementResultListener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPreferTestNetworks(Z)V
    .registers 5
    .param p1, "prefer"    # Z

    .line 2238
    sget-object v0, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferTestNetworks caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    new-instance v0, Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {v0}, Landroid/net/TetheringManager$RequestDispatcher;-><init>()V

    .line 2241
    .local v0, "dispatcher":Landroid/net/TetheringManager$RequestDispatcher;
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/net/TetheringManager$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {v0, v1, p0}, Landroid/net/TetheringManager$RequestDispatcher;->waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I

    move-result v1

    .line 2248
    .local v1, "ret":I
    return-void
.end method

.method public blacklist setUsbTethering(Z)I
    .registers 6
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v1, Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {v1}, Landroid/net/TetheringManager$RequestDispatcher;-><init>()V

    .line 771
    .local v1, "dispatcher":Landroid/net/TetheringManager$RequestDispatcher;
    new-instance v2, Landroid/net/TetheringManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda14;-><init>(Landroid/net/TetheringManager;ZLjava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Landroid/net/TetheringManager$RequestDispatcher;->waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I

    move-result v2

    return v2
.end method

.method public blacklist startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/TetheringManager$StartTetheringCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1437
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    invoke-direct {v0, p1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 1438
    return-void
.end method

.method public whitelist startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V
    .registers 8
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/TetheringManager$StartTetheringCallback;

    .line 1405
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v1, Landroid/net/TetheringManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/net/TetheringManager$1;-><init>(Landroid/net/TetheringManager;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 1420
    .local v1, "listener":Landroid/net/IIntResultListener;
    new-instance v2, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;-><init>(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    invoke-direct {p0, v2}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 1422
    return-void
.end method

.method public whitelist stopAllTethering()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2214
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAllTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda9;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 2227
    return-void
.end method

.method public whitelist stopTethering(I)V
    .registers 6
    .param p1, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1449
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 1462
    return-void
.end method

.method public whitelist stopTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;)V
    .registers 11
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/TetheringManager$StopTetheringCallback;

    .line 1472
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, "callerPkg":Ljava/lang/String;
    sget-object v0, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTethering: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v1, Landroid/net/TetheringManager$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "request":Landroid/net/TetheringManager$TetheringRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/TetheringManager$StopTetheringCallback;
    .local v3, "request":Landroid/net/TetheringManager$TetheringRequest;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/net/TetheringManager$StopTetheringCallback;
    invoke-direct/range {v1 .. v6}, Landroid/net/TetheringManager$$ExternalSyntheticLambda7;-><init>(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StopTetheringCallback;)V

    invoke-direct {p0, v1}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 1491
    return-void
.end method

.method public blacklist tether(Ljava/lang/String;)I
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    invoke-direct {p0}, Landroid/net/TetheringManager;->unsupportedAfterV()V

    .line 704
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tether caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v1, Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {v1}, Landroid/net/TetheringManager$RequestDispatcher;-><init>()V

    .line 708
    .local v1, "dispatcher":Landroid/net/TetheringManager$RequestDispatcher;
    new-instance v2, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Landroid/net/TetheringManager$RequestDispatcher;->waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I

    move-result v2

    return v2
.end method

.method public whitelist unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/net/TetheringManager$TetheringEventCallback;

    .line 2020
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTetheringEventCallback caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v1, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2026
    :try_start_24
    iget-object v2, p0, Landroid/net/TetheringManager;->mTetheringEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ITetheringEventCallback;

    .line 2027
    .local v2, "remoteCallback":Landroid/net/ITetheringEventCallback;
    if-eqz v2, :cond_38

    .line 2031
    new-instance v3, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;-><init>(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/net/TetheringManager;->getConnector(Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 2032
    .end local v2    # "remoteCallback":Landroid/net/ITetheringEventCallback;
    monitor-exit v1

    .line 2033
    return-void

    .line 2028
    .restart local v2    # "remoteCallback":Landroid/net/ITetheringEventCallback;
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "callback was not registered."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callerPkg":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/TetheringManager;
    .end local p1    # "callback":Landroid/net/TetheringManager$TetheringEventCallback;
    throw v3

    .line 2032
    .end local v2    # "remoteCallback":Landroid/net/ITetheringEventCallback;
    .restart local v0    # "callerPkg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/TetheringManager;
    .restart local p1    # "callback":Landroid/net/TetheringManager$TetheringEventCallback;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public blacklist untether(Ljava/lang/String;)I
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 737
    invoke-direct {p0}, Landroid/net/TetheringManager;->unsupportedAfterV()V

    .line 739
    iget-object v0, p0, Landroid/net/TetheringManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "callerPkg":Ljava/lang/String;
    sget-object v1, Landroid/net/TetheringManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "untether caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v1, Landroid/net/TetheringManager$RequestDispatcher;

    invoke-direct {v1}, Landroid/net/TetheringManager$RequestDispatcher;-><init>()V

    .line 744
    .local v1, "dispatcher":Landroid/net/TetheringManager$RequestDispatcher;
    new-instance v2, Landroid/net/TetheringManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Landroid/net/TetheringManager$$ExternalSyntheticLambda3;-><init>(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Landroid/net/TetheringManager$RequestDispatcher;->waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I

    move-result v2

    return v2
.end method
