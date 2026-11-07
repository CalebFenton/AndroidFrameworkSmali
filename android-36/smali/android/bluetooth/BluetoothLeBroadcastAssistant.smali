.class public final Landroid/bluetooth/BluetoothLeBroadcastAssistant;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastAssistant.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    const-class v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    .line 511
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 512
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 514
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    .line 515
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    return-object v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1270
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1265
    sget-object v0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void
.end method


# virtual methods
.method public whitelist addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "isGroupOp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 1005
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_9a

    .line 1011
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 1012
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1015
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_97

    .line 1017
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1018
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_50

    .line 1019
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_8e

    .line 1021
    :cond_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1023
    :try_start_5e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;ZLandroid/content/AttributionSource;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    .line 1026
    goto :goto_8e

    .line 1024
    :catch_64
    move-exception v1

    .line 1025
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    return-void

    .line 1013
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_8f
    :try_start_8f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All callbacks are unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceMetadata":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .end local p3    # "isGroupOp":Z
    throw v1

    .line 1015
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceMetadata":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .restart local p3    # "isGroupOp":Z
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_97

    throw v1

    .line 1008
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 531
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 522
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 524
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->close()V

    .line 525
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 572
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 8
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
            ">;"
        }
    .end annotation

    .line 1171
    const-string v0, "getAllSources()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 1172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1174
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastReceiveState;>;"
    if-nez v0, :cond_27

    .line 1177
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_60

    .line 1179
    :cond_27
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1181
    :try_start_2f
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    return-object v2

    .line 1182
    :catch_36
    move-exception v2

    .line 1183
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 640
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 642
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_24

    .line 644
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 646
    :cond_24
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 648
    :try_start_2c
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return-object v2

    .line 649
    :catch_33
    move-exception v2

    .line 650
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 709
    const-string v0, "getConnectionPolicy()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 710
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 712
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 713
    .local v1, "defaultValue":I
    if-nez v0, :cond_23

    .line 714
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_62

    .line 716
    :cond_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 718
    :try_start_31
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_38

    return v2

    .line 719
    :catch_38
    move-exception v2

    .line 720
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_62
    :goto_62
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 588
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 589
    .local v1, "defaultValue":I
    if-nez v0, :cond_3a

    .line 590
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_79

    .line 592
    :cond_3a
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 594
    :try_start_48
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4e} :catch_4f

    return v2

    .line 595
    :catch_4f
    move-exception v2

    .line 596
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 8
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 613
    const-string v0, "getDevicesMatchingConnectionStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 614
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 616
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_27

    .line 618
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_60

    .line 620
    :cond_27
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 622
    :try_start_2f
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    return-object v2

    .line 623
    :catch_36
    move-exception v2

    .line 624
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    return-object v1
.end method

.method public whitelist getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1203
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 1204
    .local v1, "defaultValue":I
    if-nez v0, :cond_1e

    .line 1205
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 1207
    :cond_1e
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1209
    :try_start_2c
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v2

    .line 1210
    :catch_33
    move-exception v2

    .line 1211
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getSourceMetadata(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .registers 8
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1243
    const-string v0, "getSourceMetadata()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 1244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    if-ltz p2, :cond_63

    const/16 v0, 0xff

    if-gt p2, v0, :cond_63

    .line 1249
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1250
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_28

    .line 1251
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_61

    .line 1253
    :cond_28
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1255
    :try_start_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->getSourceMetadata(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_36} :catch_37

    return-object v1

    .line 1256
    :catch_37
    move-exception v1

    .line 1257
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    const/4 v1, 0x0

    return-object v1

    .line 1246
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fall between 0x00 and 0xFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSearchInProgress()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 924
    const-string v0, "isSearchInProgress:"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 925
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 926
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 927
    .local v1, "defaultValue":Z
    if-nez v0, :cond_20

    .line 928
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 930
    :cond_20
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 932
    :try_start_28
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->isSearchInProgress(Landroid/content/AttributionSource;)Z

    move-result v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    return v2

    .line 933
    :catch_2f
    move-exception v2

    .line 934
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "updatedMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 1081
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_9a

    .line 1087
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 1088
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1091
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_97

    .line 1093
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1094
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_50

    .line 1095
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_8e

    .line 1097
    :cond_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1099
    :try_start_5e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;Landroid/content/AttributionSource;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    .line 1102
    goto :goto_8e

    .line 1100
    :catch_64
    move-exception v1

    .line 1101
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    return-void

    .line 1089
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_8f
    :try_start_8f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All callbacks are unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    .end local p3    # "updatedMetadata":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    throw v1

    .line 1091
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    .restart local p3    # "updatedMetadata":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_97

    throw v1

    .line 1084
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Landroid/os/IBinder;

    .line 538
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 540
    const-string v0, "onServiceConnected"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 542
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 543
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_2c

    return-void

    .line 546
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;Landroid/content/AttributionSource;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_2c

    .line 553
    goto :goto_2a

    .line 547
    :catch_22
    move-exception v1

    .line 548
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_23
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "onServiceConnected: Failed to register Le Broadcaster Assistant callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    .line 562
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 745
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 751
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 752
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_25

    .line 756
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_74

    return-void

    .line 760
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v1

    .line 761
    .local v1, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-eqz v1, :cond_32

    .line 762
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;Landroid/content/AttributionSource;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_33
    .catchall {:try_start_25 .. :try_end_32} :catchall_74

    .line 766
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_32
    goto :goto_5d

    .line 764
    :catch_33
    move-exception v1

    .line 765
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 773
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 771
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    throw v1

    .line 774
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_34 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public whitelist removeSource(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBroadcastSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 1133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_97

    .line 1138
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 1139
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 1142
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_94

    .line 1144
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 1145
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_4d

    .line 1146
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_8b

    .line 1148
    :cond_4d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1150
    :try_start_5b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_61

    .line 1153
    goto :goto_8b

    .line 1151
    :catch_61
    move-exception v1

    .line 1152
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8b
    :goto_8b
    return-void

    .line 1140
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_8c
    :try_start_8c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All callbacks are unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "sourceId":I
    throw v1

    .line 1142
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "sink":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "sourceId":I
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_94

    throw v1

    .line 1135
    :cond_97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 674
    const-string v0, "setConnectionPolicy()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 675
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 677
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    const/4 v1, 0x0

    .line 678
    .local v1, "defaultValue":Z
    if-nez v0, :cond_23

    .line 679
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_68

    .line 681
    :cond_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 682
    invoke-static {p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_68

    if-eqz p2, :cond_37

    const/16 v2, 0x64

    if-ne p2, v2, :cond_68

    .line 686
    :cond_37
    :try_start_37
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v2
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_3e

    return v2

    .line 687
    :catch_3e
    move-exception v2

    .line 688
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_68
    :goto_68
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist startSearchingForSources(Ljava/util/List;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const-string v0, "searchForBroadcastSources"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 852
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_76

    .line 857
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 858
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 861
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_73

    .line 863
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 864
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_32

    .line 865
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_6a

    .line 867
    :cond_32
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 869
    :try_start_3a
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;Landroid/content/AttributionSource;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 872
    goto :goto_6a

    .line 870
    :catch_40
    move-exception v1

    .line 871
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6a
    :goto_6a
    return-void

    .line 859
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_6b
    :try_start_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All callbacks are unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    throw v1

    .line 861
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_73

    throw v1

    .line 854
    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopSearchingForSources()V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 890
    const-string v0, "stopSearchingForSources:"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v0, :cond_73

    .line 895
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 896
    :try_start_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 899
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_70

    .line 901
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v0

    .line 902
    .local v0, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-nez v0, :cond_2f

    .line 903
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    goto :goto_67

    .line 905
    :cond_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 907
    :try_start_37
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->stopSearchingForSources(Landroid/content/AttributionSource;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    .line 910
    goto :goto_67

    .line 908
    :catch_3d
    move-exception v1

    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_67
    :goto_67
    return-void

    .line 897
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_68
    :try_start_68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "All callbacks are unregistered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    throw v1

    .line 899
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v1

    .line 892
    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback was ever registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 794
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->log(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 798
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 803
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_5d

    if-eqz v1, :cond_53

    .line 805
    :try_start_1b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getService()Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    move-result-object v1

    .line 806
    .local v1, "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    if-eqz v1, :cond_28

    .line 807
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;Landroid/content/AttributionSource;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_5d

    .line 811
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    :cond_28
    goto :goto_53

    .line 809
    :catch_29
    move-exception v1

    .line 810
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2a
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_53
    :goto_53
    monitor-exit v0

    .line 814
    return-void

    .line 799
    :cond_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    throw v1

    .line 813
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_2a .. :try_end_5f} :catchall_5d

    throw v1
.end method
