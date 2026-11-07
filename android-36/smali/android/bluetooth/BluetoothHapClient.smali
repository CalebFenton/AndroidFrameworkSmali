.class public final Landroid/bluetooth/BluetoothHapClient;
.super Ljava/lang/Object;
.source "BluetoothHapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;,
        Landroid/bluetooth/BluetoothHapClient$FeatureMask;,
        Landroid/bluetooth/BluetoothHapClient$HearingAidType;,
        Landroid/bluetooth/BluetoothHapClient$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_HAP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_HAP_DEVICE_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.HAP_DEVICE_AVAILABLE"

.field public static final blacklist EXTRA_HAP_FEATURES:Ljava/lang/String; = "android.bluetooth.extra.HAP_FEATURES"

.field public static final blacklist FEATURE_DYNAMIC_PRESETS_MASK:I = 0x10

.field public static final blacklist FEATURE_HEARING_AID_TYPE_MASK:I = 0x3

.field public static final blacklist FEATURE_INDEPENDENT_PRESETS_MASK:I = 0x8

.field public static final blacklist FEATURE_SYNCHRONIZATED_PRESETS_MASK:I = 0x4

.field public static final blacklist FEATURE_WRITABLE_PRESETS_MASK:I = 0x20

.field public static final whitelist PRESET_INDEX_UNAVAILABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TYPE_BANDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_BINAURAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_MONAURAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TYPE_RFU:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

.field private final blacklist mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/BluetoothHapClient$Callback;",
            "Landroid/bluetooth/IBluetoothHapClient;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mService:Landroid/bluetooth/IBluetoothHapClient;


# direct methods
.method public static synthetic blacklist $r8$lambda$0PFcd8KgCxzThkkvVo1Vs7urifQ(Landroid/bluetooth/BluetoothHapClient;ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$switchToNextPresetForGroup$13(ILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0fK2oqlbSTtz57U7MlNtMtucFRA(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClient;
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$5MDYTZsQdPJ-OaR1KmHa9M135bI(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$switchToNextPreset$12(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AhsAhiHh1xG9Olx1v2yQ5oq9mAM(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getConnectionPolicy$3(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ET1RKQLLngcP5Wx-hI553QLH-UM(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->lambda$new$1(Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GPsappLSeR5cpNSyVQc6lmDm_lE(Landroid/bluetooth/BluetoothHapClient;ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$switchToPreviousPresetForGroup$15(ILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$I6jhDuFKyPUgkp5doYKzJ9j-mBY(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$switchToPreviousPreset$14(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IyZNO9fW16fAXNkwrUFMlHM0550(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->lambda$getConnectedDevices$4(Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IyrYOM1Lzi_TVQsvDUBquY3BUcQ(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getActivePresetIndex$8(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$J7l209dnPCrQPKgmNphQSkT1yfs(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient;->lambda$setConnectionPolicy$2(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LFGq0j2hWXSEsjZr1uzBJb9sUQg(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient;->lambda$selectPreset$10(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PMjTUX8yNuoiSz7-EW0tpJHTKps(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getFeatures$18(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TTWxaLYs9Iw0Q3GCO90siVvD8sw(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getAllPresetInfo$17(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UbNe2r9WSdxjSA5IBAPXY2N7HLQ(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getConnectionState$6(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VRTBtqZDqnEUjJ6dG4oR7CSaRH0(Landroid/bluetooth/BluetoothHapClient;IILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHapClient;->lambda$setPresetNameForGroup$20(IILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X8NKz4jQFVvzSb-0yYlWOYA4i_I(Landroid/bluetooth/BluetoothHapClient;[ILandroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getDevicesMatchingConnectionStates$5([ILandroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YUNVQqv276k-fqRgEppMUO2ZEa0(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getHapGroup$7(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$j74WHQI2y4TJotUa8mYN-U4A9R4(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient;->lambda$getActivePresetInfo$9(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$k6xbiI6zn_3ihb4b1567ozCF6EA(Landroid/bluetooth/BluetoothHapClient;IILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient;->lambda$selectPresetForGroup$11(IILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r5BO9Pq96_I2giyUDXBiMiQtipQ(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->lambda$new$0(Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t4j-gLVuolmcxY6IaMdCvfl1JeM(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient;->lambda$getPresetInfo$16(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zh60ln-ZkQ1TvYo7qibpdQPSF40(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHapClient;->lambda$setPresetName$19(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const-class v0, Landroid/bluetooth/BluetoothHapClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHapClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothHapClient-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    .line 452
    iput-object p2, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 453
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 454
    iput-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    .line 456
    new-instance v0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda12;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    .line 464
    .local v0, "registerConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/IBluetoothHapClient;>;"
    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda13;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    .line 473
    .local v1, "unregisterConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/bluetooth/IBluetoothHapClient;>;"
    new-instance v2, Landroid/bluetooth/CallbackWrapper;

    invoke-direct {v2, v0, v1}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 474
    new-instance v2, Landroid/util/CloseGuard;

    invoke-direct {v2}, Landroid/util/CloseGuard;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 475
    iget-object v2, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHapClient;
    .registers 2

    .line 510
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    return-object v0
.end method

.method private synthetic blacklist lambda$getActivePresetIndex$8(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getActivePresetInfo$9(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getActivePresetInfo(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothHapPresetInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getAllPresetInfo$17(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getAllPresetInfo(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectedDevices$4(Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 4
    .param p1, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 632
    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 631
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectionPolicy$3(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConnectionState$6(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDevicesMatchingConnectionStates$5([ILandroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;
    .registers 5
    .param p1, "states"    # [I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 652
    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 651
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getFeatures$18(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getHapGroup$7(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Integer;
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->getHapGroup(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getPresetInfo$16(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v0}, Landroid/bluetooth/IBluetoothHapClient;->getPresetInfo(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Landroid/bluetooth/BluetoothHapPresetInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/IBluetoothHapClient;

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothHapClient;->registerCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 462
    goto :goto_32

    .line 460
    :catch_8
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothHapClient;->TAG:Ljava/lang/String;

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

    .line 463
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 6
    .param p1, "service"    # Landroid/bluetooth/IBluetoothHapClient;

    .line 467
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothHapClient;->unregisterCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 470
    goto :goto_32

    .line 468
    :catch_8
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothHapClient;->TAG:Ljava/lang/String;

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

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private synthetic blacklist lambda$selectPreset$10(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v0}, Landroid/bluetooth/IBluetoothHapClient;->selectPreset(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$selectPresetForGroup$11(IILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .param p3, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v0}, Landroid/bluetooth/IBluetoothHapClient;->selectPresetForGroup(IILandroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$setConnectionPolicy$2(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v0}, Landroid/bluetooth/IBluetoothHapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setPresetName$19(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/bluetooth/IBluetoothHapClient;->setPresetName(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$setPresetNameForGroup$20(IILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/bluetooth/IBluetoothHapClient;->setPresetNameForGroup(IILjava/lang/String;Landroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$switchToNextPreset$12(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->switchToNextPreset(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$switchToNextPresetForGroup$13(ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 4
    .param p1, "groupId"    # I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->switchToNextPresetForGroup(ILandroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$switchToPreviousPreset$14(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->switchToPreviousPreset(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V

    return-void
.end method

.method private synthetic blacklist lambda$switchToPreviousPresetForGroup$15(ILandroid/bluetooth/IBluetoothHapClient;)V
    .registers 4
    .param p1, "groupId"    # I
    .param p2, "s"    # Landroid/bluetooth/IBluetoothHapClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v0}, Landroid/bluetooth/IBluetoothHapClient;->switchToPreviousPresetForGroup(ILandroid/content/AttributionSource;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 490
    sget-object v0, Landroid/bluetooth/BluetoothHapClient;->TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 492
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 481
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 482
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 484
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHapClient;->close()V

    .line 485
    return-void
.end method

.method public whitelist getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 720
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 723
    return v0

    .line 725
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 729
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 725
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist getActivePresetInfo(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 744
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "defaultValue":Landroid/bluetooth/BluetoothHapPresetInfo;
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 747
    return-object v0

    .line 749
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHapPresetInfo;

    return-object v1
.end method

.method public blacklist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getAllPresetInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
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
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;"
        }
    .end annotation

    .line 930
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 932
    .local v0, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 933
    return-object v0

    .line 935
    :cond_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
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

    .line 627
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    .line 633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 627
    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 608
    return v0

    .line 610
    :cond_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda14;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 610
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

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 670
    return v0

    .line 672
    :cond_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda18;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 672
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

    .line 647
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda17;-><init>(Landroid/bluetooth/BluetoothHapClient;[I)V

    .line 654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 647
    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 952
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 955
    return v0

    .line 957
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda21;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 961
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 957
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist getHapGroup(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 697
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const/4 v0, -0x1

    .line 699
    .local v0, "defaultValue":I
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 700
    return v0

    .line 702
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    .line 706
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 702
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 976
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getPresetInfo(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothHapPresetInfo;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 907
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "defaultValue":Landroid/bluetooth/BluetoothHapPresetInfo;
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 910
    return-object v0

    .line 912
    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-static {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHapPresetInfo;

    return-object v1
.end method

.method public blacklist onServiceConnected(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 498
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    .line 499
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->registerToNewService(Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 2

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    .line 507
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 540
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    invoke-virtual {v0, v1, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 541
    return-void
.end method

.method public whitelist selectPreset(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 773
    return-void

    .line 775
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 779
    return-void
.end method

.method public whitelist selectPresetForGroup(II)V
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHapClient;II)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 804
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 580
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "defaultValue":Z
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz p2, :cond_11

    const/16 v1, 0x64

    if-eq p2, v1, :cond_11

    goto :goto_2c

    .line 587
    :cond_11
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v3, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda16;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;I)V

    .line 591
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 587
    invoke-static {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 585
    :cond_2c
    :goto_2c
    return v0
.end method

.method public whitelist setPresetName(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1057
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1059
    return-void

    .line 1061
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 1065
    return-void
.end method

.method public whitelist setPresetNameForGroup(IILjava/lang/String;)V
    .registers 7
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1086
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothHapClient;IILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 1090
    return-void
.end method

.method public whitelist supportsDynamicPresets(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1020
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist supportsIndependentPresets(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1005
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist supportsSynchronizedPresets(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist supportsWritablePresets(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1034
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist switchToNextPreset(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 819
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 821
    return-void

    .line 823
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 825
    return-void
.end method

.method public whitelist switchToNextPresetForGroup(I)V
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 843
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothHapClient;I)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 847
    return-void
.end method

.method public whitelist switchToPreviousPreset(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 862
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-static {p1}, Landroid/bluetooth/BluetoothUtils;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 864
    return-void

    .line 866
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 870
    return-void
.end method

.method public whitelist switchToPreviousPresetForGroup(I)V
    .registers 5
    .param p1, "groupId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 888
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    new-instance v2, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda19;-><init>(Landroid/bluetooth/BluetoothHapClient;I)V

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothUtils;->callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V

    .line 892
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothHapClient$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mService:Landroid/bluetooth/IBluetoothHapClient;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    return-void
.end method
