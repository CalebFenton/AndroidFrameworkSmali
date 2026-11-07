.class public final Landroid/bluetooth/BluetoothVolumeControl;
.super Ljava/lang/Object;
.source "BluetoothVolumeControl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;,
        Landroid/bluetooth/BluetoothVolumeControl$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.volume-control.profile.action.CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothVolumeControlCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothVolumeControl$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothVolumeControl;


# direct methods
.method public static synthetic blacklist $r8$lambda$0larhLmzt2Pd7V79ZtmTQRDB_FA(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$isVolumeOffsetAvailable$4(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$3pqrjlz_QHTLcZGsgUP9SHSU1uE(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getAudioInputControlServices$9(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$5APjpWu7BFXjgaO4Auc57AAQcjw(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;IZLandroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$setDeviceVolume$8(Landroid/bluetooth/BluetoothDevice;IZLandroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$61ZsgW7B0uAza8i1gF2lrc7NGlQ(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControl;
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XSFFw-ariDnl7u5dXpBLn-hZ3Mc(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$setVolumeOffsetInternal$3(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dJK3ZLFP52kL_0PpaqFp7KPrq20(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getConnectionState$2(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ez8w98fv4ppkv2YTHFx7zhW-NxU(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getConnectedDevices$0(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$p7yT_ts8P7j1XV0nXWNLkQXYT1Y(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$setConnectionPolicy$6(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pd-scjgyGCkbzsqeSEsD3vvQJZg(Landroid/bluetooth/BluetoothVolumeControl;[ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getDevicesMatchingConnectionStates$1([ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sD4CK1E1KVmXK7EtQHxGuHAqMj8(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getConnectionPolicy$7(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$tvUlm5xYCvOvqbnjQLBroFvqzy4(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->lambda$getNumberOfVolumeOffsetInstances$5(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/bluetooth/BluetoothVolumeControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    .line 171
    new-instance v0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallback:Landroid/bluetooth/IBluetoothVolumeControlCallback;

    .line 259
    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 260
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    .line 263
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCloseGuard:Landroid/util/CloseGuard;

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothVolumeControl;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    return-object v0
.end method

.method private static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 745
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

.method private synthetic blacklist lambda$getAudioInputControlServices$9(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p2, v0, p1}, Landroid/bluetooth/AudioInputControl;->getAudioInputControlServices(Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectedDevices$0(Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 4
    .param p1, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 344
    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 343
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectionPolicy$7(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectionState$2(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDevicesMatchingConnectionStates$1([ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;
    .registers 5
    .param p1, "states"    # [I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 366
    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 365
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getNumberOfVolumeOffsetInstances$5(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->getNumberOfVolumeOffsetInstances(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$isVolumeOffsetAvailable$4(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->isVolumeOffsetAvailable(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setConnectionPolicy$6(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setDeviceVolume$8(Landroid/bluetooth/BluetoothDevice;IZLandroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "isGroupOperation"    # Z
    .param p4, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZLandroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$setVolumeOffsetInternal$3(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/IBluetoothVolumeControl;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I
    .param p4, "s"    # Landroid/bluetooth/IBluetoothVolumeControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/bluetooth/IBluetoothVolumeControl;->setVolumeOffset(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)V

    return-void
.end method

.method private blacklist setVolumeOffsetInternal(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I

    .line 556
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeOffset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 560
    return-void

    .line 562
    :cond_3a
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 566
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 284
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 287
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 273
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothVolumeControl;->close()V

    .line 274
    return-void
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAudioInputControlServices(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/AudioInputControl;",
            ">;"
        }
    .end annotation

    .line 732
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioInputControlServices("

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

    .line 734
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 737
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;)V

    .line 741
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 737
    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 735
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .registers 5
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

    .line 336
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    invoke-static {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 662
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

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

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 665
    return v0

    .line 667
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;)V

    .line 671
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 667
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState("

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

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 385
    return v0

    .line 387
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;)V

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 387
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
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

    .line 358
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicesMatchingStates("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothVolumeControl;[I)V

    invoke-static {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public whitelist getNumberOfVolumeOffsetInstances(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 606
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfVolumeOffsetInstances("

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

    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, "defaultValue":I
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 611
    return v2

    .line 613
    :cond_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v4, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;)V

    .line 617
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 613
    invoke-static {v1, v3, v4, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist isVolumeOffsetAvailable(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 581
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVolumeOffsetAvailable("

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

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "defaultValue":Z
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 586
    return v2

    .line 588
    :cond_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v4, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;)V

    .line 592
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 588
    invoke-static {v1, v3, v4, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Landroid/os/IBinder;

    .line 294
    invoke-static {p1}, Landroid/bluetooth/IBluetoothVolumeControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    .line 296
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 297
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 298
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_27

    return-void

    .line 301
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    iget-object v2, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallback:Landroid/bluetooth/IBluetoothVolumeControlCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothVolumeControl;->registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_27

    .line 304
    goto :goto_25

    .line 302
    :catch_1d
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    sget-object v2, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    const-string v3, "onBluetoothServiceUp: Failed to register VolumeControl callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mService:Landroid/bluetooth/IBluetoothVolumeControl;

    .line 313
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 412
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 416
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 420
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v0

    return-void

    .line 425
    :cond_1f
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 429
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    .line 430
    .local v1, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-nez v1, :cond_2f

    .line 431
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_8c

    return-void

    .line 438
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    .line 439
    .local v2, "isRegisterCallbackRequired":Z
    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    if-eqz v2, :cond_44

    .line 442
    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallback:Landroid/bluetooth/IBluetoothVolumeControlCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl;->registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V

    goto :goto_52

    .line 444
    :cond_44
    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;

    .line 445
    invoke-static {p2, p1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Ljava/util/Map;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 444
    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothVolumeControl;->notifyNewRegisteredCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_52} :catch_53
    .catchall {:try_start_2f .. :try_end_52} :catchall_8c

    .line 451
    .end local v2    # "isRegisterCallbackRequired":Z
    :goto_52
    goto :goto_82

    .line 448
    :catch_53
    move-exception v2

    .line 449
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_54
    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v3, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

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

    .line 452
    .end local v1    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_82
    monitor-exit v0

    .line 453
    return-void

    .line 426
    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothVolumeControl;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    throw v1

    .line 452
    .restart local p0    # "this":Landroid/bluetooth/BluetoothVolumeControl;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_54 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 637
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

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

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "defaultValue":Z
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p2, :cond_36

    const/16 v1, 0x64

    if-eq p2, v1, :cond_36

    goto :goto_51

    .line 644
    :cond_36
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v3, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;I)V

    .line 648
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 644
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 642
    :cond_51
    :goto_51
    return v0
.end method

.method public whitelist setDeviceVolume(Landroid/bluetooth/BluetoothDevice;IZ)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "isGroupOperation"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 699
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {p1}, Landroid/bluetooth/BluetoothVolumeControl;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 701
    return-void

    .line 703
    :cond_a
    if-ltz p2, :cond_20

    const/16 v0, 0xff

    if-gt p2, v0, :cond_20

    .line 706
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl;)V

    new-instance v2, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;IZ)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 710
    return-void

    .line 704
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVolumeOffset(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volumeOffset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    const/4 v0, 0x1

    .line 510
    .local v0, "defaultInstanceId":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/bluetooth/BluetoothVolumeControl;->setVolumeOffsetInternal(Landroid/bluetooth/BluetoothDevice;II)V

    .line 511
    return-void
.end method

.method public whitelist setVolumeOffset(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "instanceId"    # I
    .param p3, "volumeOffset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 533
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothVolumeControl;->setVolumeOffsetInternal(Landroid/bluetooth/BluetoothDevice;II)V

    .line 534
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/BluetoothVolumeControl$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    const-string v1, "unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 474
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 478
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 479
    monitor-exit v0

    return-void

    .line 481
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_61

    .line 485
    :try_start_20
    invoke-direct {p0}, Landroid/bluetooth/BluetoothVolumeControl;->getService()Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    .line 486
    .local v0, "service":Landroid/bluetooth/IBluetoothVolumeControl;
    if-eqz v0, :cond_2d

    .line 487
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl;->mCallback:Landroid/bluetooth/IBluetoothVolumeControlCallback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothVolumeControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->unregisterCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;)V
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_2d} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2e

    .line 491
    .end local v0    # "service":Landroid/bluetooth/IBluetoothVolumeControl;
    :cond_2d
    goto :goto_58

    .line 489
    :catch_2e
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/bluetooth/BluetoothVolumeControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    return-void

    .line 475
    :cond_59
    :try_start_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothVolumeControl;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    throw v1

    .line 481
    .restart local p0    # "this":Landroid/bluetooth/BluetoothVolumeControl;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothVolumeControl$Callback;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_61

    throw v1
.end method
