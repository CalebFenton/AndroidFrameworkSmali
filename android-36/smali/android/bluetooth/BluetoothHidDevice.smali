.class public final Landroid/bluetooth/BluetoothHidDevice;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;,
        Landroid/bluetooth/BluetoothHidDevice$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

.field private static final blacklist DBG:Z = false

.field public static final whitelist ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final whitelist ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final whitelist ERROR_RSP_NOT_READY:B = 0x1t

.field public static final whitelist ERROR_RSP_SUCCESS:B = 0x0t

.field public static final whitelist ERROR_RSP_UNKNOWN:B = 0xet

.field public static final whitelist ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final whitelist PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final whitelist PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final whitelist REPORT_TYPE_FEATURE:B = 0x3t

.field public static final whitelist REPORT_TYPE_INPUT:B = 0x1t

.field public static final whitelist REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final whitelist SUBCLASS1_COMBO:B = -0x40t

.field public static final whitelist SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final whitelist SUBCLASS1_MOUSE:B = -0x80t

.field public static final whitelist SUBCLASS1_NONE:B = 0x0t

.field public static final whitelist SUBCLASS2_CARD_READER:B = 0x6t

.field public static final whitelist SUBCLASS2_DIGITIZER_TABLET:B = 0x5t

.field public static final whitelist SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final whitelist SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final whitelist SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final whitelist SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final whitelist SUBCLASS2_UNCATEGORIZED:B

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHidDevice;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 424
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 426
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHidDevice;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .registers 3

    .line 788
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 789
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 796
    return-void
.end method


# virtual methods
.method public whitelist connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 707
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 708
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 709
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 711
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 713
    :try_start_1a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_21

    return v1

    .line 714
    :catch_21
    move-exception v1

    .line 715
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 718
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 731
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 732
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 733
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 735
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 737
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 738
    :catch_1b
    move-exception v1

    .line 739
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 742
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
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

    .line 458
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 459
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 460
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 462
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 464
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 465
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 464
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 466
    :catch_21
    move-exception v1

    .line 467
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 470
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 499
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 500
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 501
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 503
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 505
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 506
    :catch_1b
    move-exception v1

    .line 507
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 510
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
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

    .line 478
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 479
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 480
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 482
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 484
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 485
    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHidDevice;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    .line 484
    invoke-static {v1, v2}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return-object v1

    .line 487
    :catch_21
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 491
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUserAppName()Ljava/lang/String;
    .registers 6

    .line 682
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 683
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 684
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 686
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 688
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHidDevice;->getUserAppName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 689
    :catch_1b
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 693
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const-string v1, ""

    return-object v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 432
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 433
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 440
    return-void
.end method

.method public whitelist registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z
    .registers 13
    .param p1, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 544
    if-eqz p1, :cond_79

    .line 548
    if-eqz p4, :cond_6f

    .line 552
    if-eqz p5, :cond_65

    .line 556
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    .line 557
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v1, :cond_17

    .line 558
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    goto :goto_63

    .line 560
    :cond_17
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 562
    :try_start_1d
    new-instance v5, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v5, p4, p5, v0}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;Landroid/content/AttributionSource;)V

    .line 563
    .local v5, "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    iget-object v6, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_31

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .local v2, "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .local v3, "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .local v4, "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :try_start_29
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2e

    return p1

    .line 564
    .end local v5    # "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    :catch_2e
    move-exception v0

    move-object p1, v0

    goto :goto_36

    .end local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :catch_31
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object p1, v0

    .line 565
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v4    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_36
    sget-object p2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 560
    .end local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .local p1, "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_60
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 568
    .end local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v4    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :goto_63
    const/4 p1, 0x0

    return p1

    .line 553
    .end local v1    # "service":Landroid/bluetooth/IBluetoothHidDevice;
    .end local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p3    # "outQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_65
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 549
    .end local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_6f
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    .end local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_79
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local p2    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v2    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .restart local v3    # "inQos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sdp parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .registers 12
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 635
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    .line 636
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v1, :cond_12

    .line 637
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    goto :goto_5a

    .line 639
    :cond_12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 641
    :try_start_18
    iget-object v6, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1a} :catch_26

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "type":B
    .end local p3    # "id":B
    .end local p4    # "data":[B
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    .local v3, "type":B
    .local v4, "id":B
    .local v5, "data":[B
    :try_start_1e
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[BLandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return p1

    .line 642
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_2c

    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "type":B
    .end local v4    # "id":B
    .end local v5    # "data":[B
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "type":B
    .restart local p3    # "id":B
    .restart local p4    # "data":[B
    :catch_26
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object p1, v0

    .line 643
    .end local p2    # "type":B
    .end local p3    # "id":B
    .end local p4    # "data":[B
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "type":B
    .restart local v4    # "id":B
    .restart local v5    # "data":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2c
    sget-object p2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    goto :goto_5a

    .line 639
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "type":B
    .end local v4    # "id":B
    .end local v5    # "data":[B
    .local p1, "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "type":B
    .restart local p3    # "id":B
    .restart local p4    # "data":[B
    :cond_56
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 646
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "type":B
    .end local p3    # "id":B
    .end local p4    # "data":[B
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "type":B
    .restart local v4    # "id":B
    .restart local v5    # "data":[B
    :goto_5a
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "error"    # B

    .line 659
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 660
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 661
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 663
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 665
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 666
    :catch_1b
    move-exception v1

    .line 667
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 670
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .registers 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .line 609
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 610
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 611
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 613
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 615
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 616
    :catch_1b
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 620
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 770
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 771
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 772
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 774
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 775
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p2, :cond_20

    const/16 v1, 0x64

    if-ne p2, v1, :cond_51

    .line 779
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHidDevice;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v1

    .line 780
    :catch_27
    move-exception v1

    .line 781
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 784
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist unregisterApp()Z
    .registers 6

    .line 584
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->getService()Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v0

    .line 585
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-nez v0, :cond_e

    .line 586
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 588
    :cond_e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 590
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothHidDevice;->unregisterApp(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v1

    .line 591
    :catch_1b
    move-exception v1

    .line 592
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

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

    .line 595
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1
.end method
