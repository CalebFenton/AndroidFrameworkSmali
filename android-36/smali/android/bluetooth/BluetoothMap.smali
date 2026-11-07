.class public final Landroid/bluetooth/BluetoothMap;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMap$BluetoothCache;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field private static final blacklist GET_CONNECTION_STATE_API:Ljava/lang/String; = "BluetoothMap_getConnectionState"

.field public static final blacklist RESULT_CANCELED:I = 0x2

.field public static final blacklist RESULT_FAILURE:I = 0x0

.field public static final blacklist RESULT_SUCCESS:I = 0x1

.field public static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field private static final blacklist sBluetoothConnectionCache:Landroid/bluetooth/BluetoothMap$BluetoothCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothMap$BluetoothCache<",
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

.field private blacklist mService:Landroid/bluetooth/IBluetoothMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 55
    const-class v0, Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/bluetooth/BluetoothMap$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothMap$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothMap;->sBluetoothConnectionQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 404
    new-instance v0, Landroid/bluetooth/BluetoothMap$BluetoothCache;

    const-string v1, "BluetoothMap_getConnectionState"

    sget-object v2, Landroid/bluetooth/BluetoothMap;->sBluetoothConnectionQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothMap$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothMap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothMap$BluetoothCache;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v1, "Create BluetoothMap proxy object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p2, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    .line 102
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mCloseGuard:Landroid/util/CloseGuard;

    .line 103
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static blacklist doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .registers 2
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 276
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 283
    const/4 v0, 0x0

    return v0

    .line 281
    :sswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x100 -> :sswitch_9
        0x104 -> :sswitch_9
        0x108 -> :sswitch_9
        0x10c -> :sswitch_9
    .end sparse-switch
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothMap;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    return-object v0
.end method

.method public static blacklist invalidateBluetoothGetConnectionStateCache()V
    .registers 1

    .line 363
    const-string v0, "BluetoothMap_getConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->invalidateCache(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 371
    const-string v0, "bluetooth"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private blacklist isEnabled()Z
    .registers 2

    .line 555
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 551
    sget-object v0, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 127
    return-void
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")not supported for MAPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableBluetoothGetConnectionStateCache()V
    .registers 2

    .line 358
    sget-object v0, Landroid/bluetooth/BluetoothMap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothMap$BluetoothCache;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap$BluetoothCache;->disableForCurrentProcess()V

    .line 359
    return-void
.end method

.method public greylist-max-r disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 251
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 253
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_36

    .line 254
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 256
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 258
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 259
    :catch_49
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 112
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->close()V

    .line 113
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public blacklist getClient()Landroid/bluetooth/BluetoothDevice;
    .registers 6

    .line 190
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 191
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1a

    .line 192
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 194
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 196
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 197
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothMap;->getClient(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 196
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f

    return-object v1

    .line 198
    :catch_2f
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return-object v1
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

    .line 301
    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 303
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1f

    .line 304
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 306
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 308
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 309
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothMap;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 308
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    return-object v1

    .line 310
    :catch_32
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 314
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

    .line 536
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 537
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1a

    .line 538
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 540
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 542
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 543
    :catch_2d
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 547
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 417
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 419
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_36

    .line 420
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "BT not enabled. Cannot get connection state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_93

    .line 422
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 424
    :try_start_42
    sget-object v1, Landroid/bluetooth/BluetoothMap;->sBluetoothConnectionCache:Landroid/bluetooth/BluetoothMap$BluetoothCache;

    new-instance v2, Landroid/util/Pair;

    .line 425
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothMap;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothMap$BluetoothCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_5e} :catch_5f

    return v1

    .line 426
    :catch_5f
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_92

    .line 430
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 428
    :cond_92
    throw v1

    .line 433
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

    .line 326
    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 328
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1f

    .line 329
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 331
    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 333
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 334
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMap;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    .line 333
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    return-object v1

    .line 336
    :catch_32
    move-exception v1

    .line 337
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 340
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

    .line 514
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public blacklist getState()I
    .registers 6

    .line 165
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 166
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1a

    .line 167
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 169
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 171
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothMap;->getState(Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 172
    :catch_27
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 215
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 216
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_1a

    .line 217
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 219
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 221
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 222
    :catch_2d
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 133
    invoke-static {p1}, Landroid/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    .line 134
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    .line 141
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 478
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->getService()Landroid/bluetooth/IBluetoothMap;

    move-result-object v0

    .line 480
    .local v0, "service":Landroid/bluetooth/IBluetoothMap;
    if-nez v0, :cond_40

    .line 481
    sget-object v1, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_83

    .line 483
    :cond_40
    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 484
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_83

    if-eqz p2, :cond_52

    const/16 v1, 0x64

    if-ne p2, v1, :cond_83

    .line 488
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_58} :catch_59

    return v1

    .line 489
    :catch_59
    move-exception v1

    .line 490
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothMap;->TAG:Ljava/lang/String;

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

    .line 493
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 453
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    .line 454
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
