.class public final Landroid/bluetooth/BluetoothHidHost;
.super Ljava/lang/Object;
.source "BluetoothHidHost.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

.field public static final blacklist ACTION_HANDSHAKE:Ljava/lang/String; = "android.bluetooth.input.profile.action.HANDSHAKE"

.field public static final blacklist ACTION_IDLE_TIME_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

.field public static final blacklist ACTION_PROTOCOL_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

.field public static final blacklist ACTION_REPORT:Ljava/lang/String; = "android.bluetooth.input.profile.action.REPORT"

.field public static final blacklist ACTION_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_IDLE_TIME:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

.field public static final blacklist EXTRA_PROTOCOL_MODE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.PROTOCOL_MODE"

.field public static final blacklist EXTRA_REPORT:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT"

.field public static final blacklist EXTRA_REPORT_BUFFER_SIZE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

.field public static final blacklist EXTRA_REPORT_ID:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_ID"

.field public static final blacklist EXTRA_REPORT_TYPE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

.field public static final blacklist EXTRA_STATUS:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.STATUS"

.field public static final blacklist EXTRA_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.VIRTUAL_UNPLUG_STATUS"

.field public static final blacklist INPUT_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x1389

.field public static final blacklist INPUT_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x138a

.field public static final blacklist INPUT_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x1388

.field public static final blacklist INPUT_OPERATION_GENERIC_FAILURE:I = 0x138b

.field public static final blacklist INPUT_OPERATION_SUCCESS:I = 0x138c

.field public static final blacklist PROTOCOL_BOOT_MODE:I = 0x1

.field public static final blacklist PROTOCOL_REPORT_MODE:I = 0x0

.field public static final blacklist PROTOCOL_UNSUPPORTED_MODE:I = 0xff

.field public static final blacklist REPORT_TYPE_FEATURE:B = 0x3t

.field public static final blacklist REPORT_TYPE_INPUT:B = 0x1t

.field public static final blacklist REPORT_TYPE_OUTPUT:B = 0x2t

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field public static final blacklist VIRTUAL_UNPLUG_STATUS_FAIL:I = 0x1

.field public static final blacklist VIRTUAL_UNPLUG_STATUS_SUCCESS:I


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHidHost;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 211
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    .line 213
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHidHost;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 605
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 836
    sget-object v0, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method


# virtual methods
.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 263
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_36

    .line 264
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 266
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 268
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 269
    :catch_49
    move-exception v1

    .line 270
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 301
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 303
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_36

    .line 304
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 306
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 308
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 309
    :catch_49
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 313
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 327
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 328
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1a

    .line 329
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 331
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 333
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    .line 334
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHidHost;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    .line 333
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 335
    :catch_2d
    move-exception v1

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 339
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 549
    if-eqz p1, :cond_5b

    .line 552
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 553
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1c

    .line 554
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 556
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 558
    :try_start_28
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    return v1

    .line 559
    :catch_2f
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 563
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return v1

    .line 550
    .end local v0    # "service":Landroid/bluetooth/IBluetoothHidHost;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 379
    if-eqz p1, :cond_5b

    .line 382
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 383
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1c

    .line 384
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 386
    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 388
    :try_start_28
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    return v1

    .line 389
    :catch_2f
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 393
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v1, 0x0

    return v1

    .line 380
    .end local v0    # "service":Landroid/bluetooth/IBluetoothHidHost;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 352
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 353
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1a

    .line 354
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 356
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 358
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    .line 359
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    .line 358
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 361
    :catch_2d
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 365
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIdleTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 795
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_36

    .line 796
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 798
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 800
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getIdleTime(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 801
    :catch_49
    move-exception v1

    .line 802
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 805
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPreferredTransport(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 587
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1d

    .line 588
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_62

    .line 590
    :cond_1d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 591
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 592
    :cond_2b
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 596
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getPreferredTransport(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_38

    return v1

    .line 597
    :catch_38
    move-exception v1

    .line 598
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 601
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_62
    const/4 v1, 0x0

    return v1

    .line 593
    :cond_64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 527
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->connectionPolicyToPriority(I)I

    move-result v0

    return v0
.end method

.method public blacklist getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 646
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 647
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1a

    .line 648
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 650
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 652
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 653
    :catch_2d
    move-exception v1

    .line 654
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 657
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I

    .line 712
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v1

    .line 713
    .local v1, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v1, :cond_1e

    .line 714
    sget-object v0, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    goto :goto_6c

    .line 716
    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 718
    :try_start_2a
    iget-object v6, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2c} :catch_38

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "reportType":B
    .end local p3    # "reportId":B
    .end local p4    # "bufferSize":I
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    .local v3, "reportType":B
    .local v4, "reportId":B
    .local v5, "bufferSize":I
    :try_start_30
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothHidHost;->getReport(Landroid/bluetooth/BluetoothDevice;BBILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_34} :catch_35

    return p1

    .line 720
    :catch_35
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "reportType":B
    .end local v4    # "reportId":B
    .end local v5    # "bufferSize":I
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "reportType":B
    .restart local p3    # "reportId":B
    .restart local p4    # "bufferSize":I
    :catch_38
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 721
    .end local p2    # "reportType":B
    .end local p3    # "reportId":B
    .end local p4    # "bufferSize":I
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "reportType":B
    .restart local v4    # "reportId":B
    .restart local v5    # "bufferSize":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3e
    sget-object p2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 716
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "reportType":B
    .end local v4    # "reportId":B
    .end local v5    # "bufferSize":I
    .local p1, "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "reportType":B
    .restart local p3    # "reportId":B
    .restart local p4    # "bufferSize":I
    :cond_68
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 724
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "reportType":B
    .end local p3    # "reportId":B
    .end local p4    # "bufferSize":I
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "reportType":B
    .restart local v4    # "reportId":B
    .restart local v5    # "bufferSize":I
    :goto_6c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 219
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    .line 220
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    .line 227
    return-void
.end method

.method public blacklist sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Ljava/lang/String;

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 769
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_3a

    .line 770
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_77

    .line 772
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 774
    :try_start_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidHost;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4d

    return v1

    .line 775
    :catch_4d
    move-exception v1

    .line 776
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 779
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 438
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 439
    if-eqz p1, :cond_87

    .line 442
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 443
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_42

    .line 444
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 446
    :cond_42
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 447
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_85

    if-eqz p2, :cond_54

    const/16 v1, 0x64

    if-ne p2, v1, :cond_85

    .line 451
    :cond_54
    :try_start_54
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidHost;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5a} :catch_5b

    return v1

    .line 452
    :catch_5b
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 456
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_85
    :goto_85
    const/4 v1, 0x0

    return v1

    .line 440
    .end local v0    # "service":Landroid/bluetooth/IBluetoothHidHost;
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # B

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIdleTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), idleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 822
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_3a

    .line 823
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_77

    .line 825
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 827
    :try_start_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidHost;->setIdleTime(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4d

    return v1

    .line 828
    :catch_4d
    move-exception v1

    .line 829
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 832
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setPreferredTransport(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredTransport("

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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 482
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    if-eqz p2, :cond_3a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3a

    const/4 v0, 0x2

    if-ne p2, v0, :cond_32

    goto :goto_3a

    .line 487
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid transport value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 492
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_54

    .line 493
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_99

    .line 495
    :cond_54
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_62

    .line 496
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 497
    :cond_62
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 501
    :try_start_68
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidHost;->setPreferredTransport(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6e} :catch_6f

    return v1

    .line 502
    :catch_6f
    move-exception v1

    .line 503
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 506
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_99
    const/4 v1, 0x0

    return v1

    .line 498
    :cond_9b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 413
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 414
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->priorityToConnectionPolicy(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidHost;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public blacklist setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProtocolMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 673
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_36

    .line 674
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 676
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 678
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidHost;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 679
    :catch_49
    move-exception v1

    .line 680
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 683
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;

    .line 741
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 742
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_1a

    .line 743
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 745
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 747
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHidHost;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 748
    :catch_2d
    move-exception v1

    .line 749
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 752
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualUnplug("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->getService()Landroid/bluetooth/IBluetoothHidHost;

    move-result-object v0

    .line 621
    .local v0, "service":Landroid/bluetooth/IBluetoothHidHost;
    if-nez v0, :cond_36

    .line 622
    sget-object v1, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 624
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 626
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidHost;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 627
    :catch_49
    move-exception v1

    .line 628
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidHost;->TAG:Ljava/lang/String;

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

    .line 631
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method
