.class public final Landroid/bluetooth/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_FAILURE:I = 0x0

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPbapClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 112
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 114
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 115
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothPbapClient;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 309
    sget-object v0, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 2

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 137
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_f

    .line 138
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 140
    .end local p0    # "this":Landroid/bluetooth/BluetoothPbapClient;
    :cond_f
    monitor-exit p0

    return-void

    .line 135
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 182
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 183
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 184
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 186
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 188
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 189
    :catch_21
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 193
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 209
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 210
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 211
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 213
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 215
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 216
    :catch_21
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 124
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbapClient;->close()V

    .line 125
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
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

    .line 236
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 237
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 238
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 240
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 242
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 243
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 242
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 244
    :catch_21
    move-exception v1

    .line 245
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 248
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 404
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 405
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 406
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 408
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 410
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 411
    :catch_21
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 415
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 294
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 295
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 296
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 298
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 300
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 301
    :catch_21
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 305
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
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

    .line 265
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 266
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 267
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 269
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 271
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 272
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPbapClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 271
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 274
    :catch_21
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 384
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 146
    invoke-static {p1}, Landroid/bluetooth/IBluetoothPbapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 147
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 154
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 353
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->getService()Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v0

    .line 354
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-nez v0, :cond_e

    .line 355
    sget-object v1, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 357
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 358
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p2, :cond_20

    const/16 v1, 0x64

    if-ne p2, v1, :cond_51

    .line 362
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothPbapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 363
    :catch_27
    move-exception v1

    .line 364
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPbapClient;->TAG:Ljava/lang/String;

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

    .line 367
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 330
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothPbapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
