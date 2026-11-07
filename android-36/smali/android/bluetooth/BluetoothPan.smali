.class public final Landroid/bluetooth/BluetoothPan;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;,
        Landroid/bluetooth/BluetoothPan$TetheringState;,
        Landroid/bluetooth/BluetoothPan$RemotePanRole;,
        Landroid/bluetooth/BluetoothPan$LocalPanRole;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_TETHERING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.TETHERING_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field public static final whitelist EXTRA_LOCAL_ROLE:Ljava/lang/String; = "android.bluetooth.pan.extra.LOCAL_ROLE"

.field public static final whitelist EXTRA_TETHERING_STATE:Ljava/lang/String; = "android.bluetooth.extra.TETHERING_STATE"

.field public static final whitelist LOCAL_NAP_ROLE:I = 0x1

.field public static final whitelist LOCAL_PANU_ROLE:I = 0x2

.field public static final blacklist PAN_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x3e9

.field public static final blacklist PAN_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x3ea

.field public static final blacklist PAN_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field public static final blacklist PAN_OPERATION_GENERIC_FAILURE:I = 0x3eb

.field public static final blacklist PAN_OPERATION_SUCCESS:I = 0x3ec

.field public static final whitelist PAN_ROLE_NONE:I = 0x0

.field public static final whitelist REMOTE_NAP_ROLE:I = 0x1

.field public static final whitelist REMOTE_PANU_ROLE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TETHERING_STATE_OFF:I = 0x1

.field public static final whitelist TETHERING_STATE_ON:I = 0x2

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPan;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothPan;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 240
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 241
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 243
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothPan;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    return-object v0
.end method

.method private greylist isEnabled()Z
    .registers 3

    .line 610
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

.method private static greylist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 615
    sget-object v0, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 254
    return-void
.end method

.method public greylist-max-r connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 307
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 309
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_36

    .line 310
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 312
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 314
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 315
    :catch_49
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 319
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method public greylist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 344
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 346
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_36

    .line 347
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_73

    .line 349
    :cond_36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 351
    :try_start_42
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    return v1

    .line 352
    :catch_49
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 284
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->close()V

    .line 285
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 413
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 414
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_1a

    .line 415
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 417
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 419
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 420
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothPan;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 419
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 421
    :catch_2d
    move-exception v1

    .line 422
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 425
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 474
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 475
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_1a

    .line 476
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 478
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 480
    :try_start_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v1

    .line 481
    :catch_2d
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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
    :cond_57
    :goto_57
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

    .line 443
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 444
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_1a

    .line 445
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 447
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 449
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 450
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothPan;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 449
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-object v1

    .line 452
    :catch_2d
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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
    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist isTetheringOn()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 594
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 595
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_1a

    .line 596
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 598
    :cond_1a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 600
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothPan;->isTetheringOn(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 601
    :catch_27
    move-exception v1

    .line 602
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 605
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 260
    invoke-static {p1}, Landroid/bluetooth/IBluetoothPan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 261
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 268
    return-void
.end method

.method public blacklist requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)Landroid/net/TetheringManager$TetheredInterfaceRequest;
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/TetheringManager$TetheredInterfaceCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 550
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v2

    .line 553
    .local v2, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v2, :cond_20

    .line 554
    sget-object v0, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_6c

    .line 556
    :cond_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 557
    new-instance v3, Landroid/bluetooth/BluetoothPan$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothPan$1;-><init>(Landroid/bluetooth/BluetoothPan;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheredInterfaceCallback;)V

    .line 572
    .local v3, "panCallback":Landroid/bluetooth/IBluetoothPanCallback;
    nop

    .line 573
    :try_start_2c
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    .line 572
    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;)V

    .line 574
    new-instance v0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;

    .line 575
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;-><init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;ILandroid/bluetooth/BluetoothPan-IA;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_41} :catch_42

    .line 574
    return-object v0

    .line 576
    :catch_42
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "panCallback":Landroid/bluetooth/IBluetoothPanCallback;
    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setBluetoothTethering(Z)V
    .registers 8
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), calling package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v1

    .line 509
    .local v1, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v1, :cond_40

    .line 510
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 512
    :cond_40
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 514
    :try_start_46
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, p1, v2}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_4e

    .line 517
    goto :goto_78

    .line 515
    :catch_4e
    move-exception v2

    .line 516
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 519
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 380
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

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->getService()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    .line 382
    .local v0, "service":Landroid/bluetooth/IBluetoothPan;
    if-nez v0, :cond_40

    .line 383
    sget-object v1, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    goto :goto_83

    .line 385
    :cond_40
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 386
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_83

    if-eqz p2, :cond_52

    const/16 v1, 0x64

    if-ne p2, v1, :cond_83

    .line 390
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothPan;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_58} :catch_59

    return v1

    .line 391
    :catch_59
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothPan;->TAG:Ljava/lang/String;

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

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    const/4 v1, 0x0

    return v1
.end method
