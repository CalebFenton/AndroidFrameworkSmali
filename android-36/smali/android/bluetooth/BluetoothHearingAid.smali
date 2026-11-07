.class public final Landroid/bluetooth/BluetoothHearingAid;
.super Ljava/lang/Object;
.source "BluetoothHearingAid.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;,
        Landroid/bluetooth/BluetoothHearingAid$DeviceMode;,
        Landroid/bluetooth/BluetoothHearingAid$DeviceSide;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

.field private static final blacklist DBG:Z = true

.field public static final whitelist HI_SYNC_ID_INVALID:J = 0x0L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_BINAURAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_MONAURAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIDE_LEFT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIDE_RIGHT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SIDE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHearingAid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .registers 1

    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 65
    const-class v0, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    .line 68
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Landroid/bluetooth/BluetoothHearingAid;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 320
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mService:Landroid/bluetooth/IBluetoothHearingAid;

    .line 322
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHearingAid;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mService:Landroid/bluetooth/IBluetoothHearingAid;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 756
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 757
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 5
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 761
    if-eqz p0, :cond_3

    .line 765
    return-void

    .line 762
    :cond_3
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": device param is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 364
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 366
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_3a

    .line 367
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 369
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 371
    :try_start_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4d

    return v1

    .line 372
    :catch_4d
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 400
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 402
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_3a

    .line 403
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 405
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 407
    :try_start_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_4d

    return v1

    .line 408
    :catch_4d
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 412
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-r getActiveDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 529
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v1, "getActiveDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 531
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_27

    .line 532
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 534
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 536
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 537
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getActiveDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 536
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3a

    return-object v1

    .line 538
    :catch_3a
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 542
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAdvertisementServiceData(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 737
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v1, "getAdvertisementServiceData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 740
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-eqz v0, :cond_4c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_4c

    .line 747
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getAdvertisementServiceData(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return-object v1

    .line 748
    :catch_21
    move-exception v1

    .line 749
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    goto :goto_61

    .line 741
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_61
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

    .line 420
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 422
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_27

    .line 423
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 425
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 427
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 428
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 427
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3a

    return-object v1

    .line 429
    :catch_3a
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 433
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 595
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_22
    const-string v0, "getConnectionPolicy"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 598
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_43

    .line 599
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 601
    :cond_43
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 603
    :try_start_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_55} :catch_56

    return v1

    .line 604
    :catch_56
    move-exception v1

    .line 605
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 608
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 465
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_22
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 467
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_3e

    .line 468
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 470
    :cond_3e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 472
    :try_start_4a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_50} :catch_51

    return v1

    .line 473
    :catch_51
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 477
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 708
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_22
    const-string v0, "getDeviceMode"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 711
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_43

    .line 712
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 714
    :cond_43
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 716
    :try_start_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_55} :catch_56

    return v1

    .line 717
    :catch_56
    move-exception v1

    .line 718
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 721
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 678
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSide("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_22
    const-string v0, "getDeviceSide"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 680
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 681
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_43

    .line 682
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 684
    :cond_43
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 686
    :try_start_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_55} :catch_56

    return v1

    .line 687
    :catch_56
    move-exception v1

    .line 688
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 691
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    const/4 v1, -0x1

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

    .line 442
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_b
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 444
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_27

    .line 445
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 447
    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 449
    :try_start_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 450
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    .line 449
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3a

    return-object v1

    .line 452
    :catch_3a
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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
    :cond_64
    :goto_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 649
    sget-boolean v0, Landroid/bluetooth/BluetoothHearingAid;->VDBG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHiSyncId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_22
    const-string v0, "getHiSyncId"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 652
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_43

    .line 653
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 655
    :cond_43
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 657
    :try_start_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)J

    move-result-wide v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_55} :catch_56

    return-wide v1

    .line 658
    :catch_56
    move-exception v1

    .line 659
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 662
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 328
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHearingAid$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mService:Landroid/bluetooth/IBluetoothHearingAid;

    .line 329
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHearingAid;->mService:Landroid/bluetooth/IBluetoothHearingAid;

    .line 336
    return-void
.end method

.method public greylist-max-r setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 501
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 503
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_3a

    .line 504
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 506
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    if-eqz p1, :cond_48

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 508
    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4e} :catch_4f

    return v1

    .line 509
    :catch_4f
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 513
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 562
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v0, "setConnectionPolicy"

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->verifyDeviceNotNull(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 565
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_49

    .line 566
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 568
    :cond_49
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 569
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8c

    if-eqz p2, :cond_5b

    const/16 v1, 0x64

    if-ne p2, v1, :cond_8c

    .line 573
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHearingAid;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_61} :catch_62

    return v1

    .line 574
    :catch_62
    move-exception v1

    .line 575
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 578
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8c
    :goto_8c
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setVolume(I)V
    .registers 7
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 621
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->getService()Landroid/bluetooth/IBluetoothHearingAid;

    move-result-object v0

    .line 623
    .local v0, "service":Landroid/bluetooth/IBluetoothHearingAid;
    if-nez v0, :cond_3a

    .line 624
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sget-object v1, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 626
    :cond_3a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHearingAid;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 628
    :try_start_40
    iget-object v1, p0, Landroid/bluetooth/BluetoothHearingAid;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHearingAid;->setVolume(ILandroid/content/AttributionSource;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    .line 631
    goto :goto_70

    .line 629
    :catch_46
    move-exception v1

    .line 630
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHearingAid;->TAG:Ljava/lang/String;

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

    .line 633
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_70
    :goto_70
    return-void
.end method
