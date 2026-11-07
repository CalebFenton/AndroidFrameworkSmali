.class public final Landroid/bluetooth/BluetoothSap;
.super Ljava/lang/Object;
.source "BluetoothSap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSap$BluetoothCache;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field private static final blacklist GET_CONNECTION_STATE_API:Ljava/lang/String; = "BluetoothSap_getConnectionState"

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field private static final blacklist sBluetoothConnectionCache:Landroid/bluetooth/BluetoothSap$BluetoothCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothSap$BluetoothCache<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothConnectionQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothSap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    const-class v0, Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    .line 374
    new-instance v0, Landroid/bluetooth/BluetoothSap$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSap$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSap;->sBluetoothConnectionQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 402
    new-instance v0, Landroid/bluetooth/BluetoothSap$BluetoothCache;

    const-string v1, "BluetoothSap_getConnectionState"

    sget-object v2, Landroid/bluetooth/BluetoothSap;->sBluetoothConnectionQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothSap$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothSap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothSap$BluetoothCache;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v1, "Create BluetoothSap proxy object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p2, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    .line 128
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mCloseGuard:Landroid/util/CloseGuard;

    .line 129
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothSap;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    return-object v0
.end method

.method public static blacklist invalidateBluetoothGetConnectionStateCache()V
    .registers 1

    .line 361
    const-string v0, "BluetoothSap_getConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->invalidateCache(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 369
    const-string v0, "bluetooth"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method private blacklist isEnabled()Z
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 537
    sget-object v0, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 2

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 151
    monitor-exit p0

    return-void

    .line 149
    .end local p0    # "this":Landroid/bluetooth/BluetoothSap;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")not supported for SAPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableBluetoothGetConnectionStateCache()V
    .registers 2

    .line 356
    sget-object v0, Landroid/bluetooth/BluetoothSap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothSap$BluetoothCache;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap$BluetoothCache;->disableForCurrentProcess()V

    .line 357
    return-void
.end method

.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 277
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_36

    .line 278
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 280
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 282
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 283
    :catch_49
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 287
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 138
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->close()V

    .line 139
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public blacklist getClient()Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 214
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 215
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1a

    .line 216
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 218
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 220
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 221
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothSap;->getClient(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 220
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f

    return-object v1

    .line 222
    :catch_2f
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 226
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 299
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 301
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1f

    .line 302
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 304
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 306
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 307
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothSap;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 306
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    return-object v1

    .line 308
    :catch_32
    move-exception v1

    .line 309
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 312
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 521
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 523
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1d

    .line 524
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_5a

    .line 526
    :cond_1d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 528
    :try_start_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothSap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    return v1

    .line 529
    :catch_30
    move-exception v1

    .line 530
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 533
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 415
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 417
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_36

    .line 418
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get connection state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_93

    .line 420
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 422
    :try_start_42
    sget-object v1, Landroid/bluetooth/BluetoothSap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothSap$BluetoothCache;

    new-instance v2, Landroid/util/Pair;

    .line 423
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSap;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothSap$BluetoothCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_5e} :catch_5f

    return v1

    .line 424
    :catch_5f
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_92

    .line 428
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    goto :goto_93

    .line 426
    :cond_92
    throw v1

    .line 431
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_93
    :goto_93
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 324
    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 326
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1f

    .line 327
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 329
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 331
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 332
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothSap;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 331
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    return-object v1

    .line 334
    :catch_32
    move-exception v1

    .line 335
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 338
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 502
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public blacklist getState()I
    .registers 6

    .line 189
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 190
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1a

    .line 191
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 193
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 195
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothSap;->getState(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 196
    :catch_27
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 200
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 239
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 240
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_1a

    .line 241
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 243
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 245
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothSap;->isConnected(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 246
    :catch_27
    move-exception v1

    .line 247
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 250
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 157
    invoke-static {p1}, Landroid/bluetooth/IBluetoothSap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    .line 158
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetoothSap;

    .line 165
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionPolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->getService()Landroid/bluetooth/IBluetoothSap;

    move-result-object v0

    .line 472
    .local v0, "service":Landroid/bluetooth/IBluetoothSap;
    if-nez v0, :cond_43

    .line 473
    sget-object v1, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    goto :goto_86

    .line 475
    :cond_43
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 476
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_86

    if-eqz p2, :cond_55

    const/16 v1, 0x64

    if-ne p2, v1, :cond_86

    .line 480
    :cond_55
    :try_start_55
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothSap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5b} :catch_5c

    return v1

    .line 481
    :catch_5c
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothSap;->TAG:Ljava/lang/String;

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

    .line 485
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_86
    :goto_86
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSap;->log(Ljava/lang/String;)V

    .line 448
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothSap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
