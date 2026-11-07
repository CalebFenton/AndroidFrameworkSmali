.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;,
        Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;,
        Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;,
        Landroid/bluetooth/BluetoothAdapter$ProfileConnection;,
        Landroid/bluetooth/BluetoothAdapter$OobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothCache;,
        Landroid/bluetooth/BluetoothAdapter$GetOffloadedTransportDiscoveryDataScanSupportedReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;,
        Landroid/bluetooth/BluetoothAdapter$UnRegisterBluetoothQualityReportReadyCallbackReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$RegisterBluetoothQualityReportReadyCallbackReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;,
        Landroid/bluetooth/BluetoothAdapter$UnRegisterPreferredAudioProfilesCallbackReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$RegisterPreferredAudioProfilesCallbackReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$NotifyActiveDeviceChangeAppliedReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$SetPreferredAudioProfilesReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;,
        Landroid/bluetooth/BluetoothAdapter$OobError;,
        Landroid/bluetooth/BluetoothAdapter$LeFeatureReturnValues;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothActivityEnergyInfoCallbackError;,
        Landroid/bluetooth/BluetoothAdapter$ConnectionState;,
        Landroid/bluetooth/BluetoothAdapter$ActiveDeviceProfile;,
        Landroid/bluetooth/BluetoothAdapter$ActiveDeviceUse;,
        Landroid/bluetooth/BluetoothAdapter$SetSnoopLogModeStatusCode;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothSnoopLogMode;,
        Landroid/bluetooth/BluetoothAdapter$ScanModeStatusCode;,
        Landroid/bluetooth/BluetoothAdapter$ScanMode;,
        Landroid/bluetooth/BluetoothAdapter$RfcommListenerResult;,
        Landroid/bluetooth/BluetoothAdapter$AdapterState;,
        Landroid/bluetooth/BluetoothAdapter$InternalAdapterState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_AUTO_ON_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.AUTO_ON_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final blacklist ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final whitelist ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_BLUETOOTH_ADDRESS_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

.field public static final whitelist ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final whitelist ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final whitelist ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final whitelist ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final whitelist ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final whitelist ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final whitelist ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final whitelist ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final whitelist ACTIVE_DEVICE_ALL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_DEVICE_AUDIO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTIVE_DEVICE_PHONE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist ADDRESS_LENGTH:I = 0x11

.field public static final whitelist AUDIO_MODE_DUPLEX:Ljava/lang/String; = "audio_mode_duplex"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_MODE_OUTPUT_ONLY:Ljava/lang/String; = "audio_mode_output_only"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_ON_STATE_DISABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUTO_ON_STATE_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field public static final whitelist BT_SNOOP_LOG_MODE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BT_SNOOP_LOG_MODE_FILTERED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BT_SNOOP_LOG_MODE_FULL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DBG:Z = true

.field public static final blacklist DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"

.field public static final whitelist ERROR:I = -0x80000000

.field public static final whitelist EXTRA_AUTO_ON_STATE:Ljava/lang/String; = "android.bluetooth.extra.AUTO_ON_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_BLUETOOTH_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

.field public static final whitelist EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final whitelist EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final whitelist EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final whitelist EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final whitelist EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final whitelist EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final whitelist EXTRA_RFCOMM_LISTENER_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.RFCOMM_LISTENER_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final whitelist EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field private static final blacklist FILTERING_API:Ljava/lang/String; = "BluetoothAdapter_isOffloadedFilteringSupported"

.field private static final blacklist GET_CONNECTION_API:Ljava/lang/String; = "BluetoothAdapter_getConnectionState"

.field public static final blacklist GET_SYSTEM_STATE_API:Ljava/lang/String; = "BluetoothAdapter_getSystemState"

.field private static final blacklist PROFILE_API:Ljava/lang/String; = "BluetoothAdapter_getProfileConnectionState"

.field public static final blacklist PROFILE_CONSTRUCTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/BiFunction<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final whitelist SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final whitelist SCAN_MODE_NONE:I = 0x14

.field public static final blacklist SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final whitelist STATE_BLE_ON:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATE_BLE_TURNING_OFF:I = 0x10

.field public static final blacklist STATE_BLE_TURNING_ON:I = 0xe

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_DISCONNECTING:I = 0x3

.field public static final whitelist STATE_OFF:I = 0xa

.field public static final whitelist STATE_ON:I = 0xc

.field public static final whitelist STATE_TURNING_OFF:I = 0xd

.field public static final whitelist STATE_TURNING_ON:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VDBG:Z = false

.field private static blacklist sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static final blacklist sBluetoothFilteringCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothFilteringQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothGetAdapterConnectionStateQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/bluetooth/IBluetooth;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothGetSystemStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothGetSystemStateQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBluetoothProfileQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sGetProfileConnectionStateCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/IBluetooth;",
            "Landroid/util/Pair<",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static final blacklist sProfileLock:Ljava/lang/Object;

.field private static final blacklist sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sService:Landroid/bluetooth/IBluetooth;

.field private static final blacklist sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static blacklist sServiceRegistered:Z


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mAudioProfilesCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;",
            "Landroid/bluetooth/IBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBluetoothConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

.field private final blacklist mBluetoothConnectionCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;",
            "Landroid/bluetooth/IBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private blacklist mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final blacklist mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

.field private final blacklist mBluetoothQualityReportReadyCallback:Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

.field private blacklist mDistanceMeasurementManager:Landroid/bluetooth/le/DistanceMeasurementManager;

.field private final blacklist mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

.field private final blacklist mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

.field private final blacklist mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final blacklist mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final blacklist mMetadataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field private final blacklist mPreferredAudioProfilesChangedCallback:Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

.field private final blacklist mProfileConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothProfile;",
            "Landroid/bluetooth/BluetoothAdapter$ProfileConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQualityCallbackWrapper:Landroid/bluetooth/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/CallbackWrapper<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;",
            "Landroid/bluetooth/IBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/bluetooth/IBluetooth;

.field private final blacklist mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$3XHpjfefl1OlKAAKHPiI17TaG5s(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothQualityReportCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3wn7hf5VULVNTBmdIFOokv1vnIk(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->registerAudioProfilesCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EiLkat5f4r-GbRKCF-wpcEwcYpw(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FOFl3XNFUJ0eEvRVWpVf0PdP47M(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->unregisterBluetoothQualityReportCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PraEdU-aV0DBiigLgXZM-8dyEws(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->unregisterBluetoothConnectionCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dUKmLtz_buqSs2x7HSrjB17cT9k(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->unregisterAudioProfilesCallbackFn(Landroid/bluetooth/IBluetooth;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioProfilesCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mAudioProfilesCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothConnectionCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothLeAdvertiser(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothLeScanner(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothMetadataListener(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceMeasurementManager(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/DistanceMeasurementManager;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mDistanceMeasurementManager:Landroid/bluetooth/le/DistanceMeasurementManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHciVendorSpecificCallbackRegistration(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHciVendorSpecificCallbackStub(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeScanClients(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadataListeners(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileConnections(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mProfileConnections:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQualityCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mQualityCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProfile(Landroid/bluetooth/BluetoothAdapter;I)Landroid/os/IBinder;
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfile(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsProfileLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProfileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsServiceLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V
    .registers 1

    sput-object p0, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 144
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    .line 829
    const/16 v0, 0x15

    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 831
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 832
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v5}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v1, v2

    .line 833
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda23;

    invoke-direct {v5}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v1, v3

    .line 835
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda24;

    invoke-direct {v5}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda24;-><init>()V

    .line 834
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 837
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    aput-object v5, v1, v4

    .line 838
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda26;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    aput-object v5, v1, v4

    .line 839
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda27;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    aput-object v5, v1, v4

    .line 840
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda28;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v1, v6

    .line 841
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v7}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v1, v7

    .line 842
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda30;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    aput-object v7, v1, v4

    .line 843
    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    aput-object v7, v1, v6

    .line 844
    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    aput-object v7, v1, v2

    .line 845
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    aput-object v7, v1, v3

    .line 846
    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v7}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 847
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v1, v3

    .line 848
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v1, v3

    .line 850
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda17;-><init>()V

    .line 849
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v5

    .line 851
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v4

    .line 853
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda19;-><init>()V

    .line 852
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v6

    .line 856
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda20;-><init>()V

    .line 855
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v2

    .line 858
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda22;-><init>()V

    .line 857
    invoke-static {v0, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    .line 830
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->PROFILE_CONSTRUCTORS:Ljava/util/Map;

    .line 882
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 928
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sProfileLock:Ljava/lang/Object;

    .line 1430
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$2;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetSystemStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1457
    new-instance v1, Landroid/os/IpcDataCache;

    const-string v5, "BluetoothAdapter_getSystemState"

    sget-object v6, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetSystemStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/4 v2, 0x1

    const-string v3, "system_server"

    const-string v4, "BluetoothAdapter_getSystemState"

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetSystemStateCache:Landroid/os/IpcDataCache;

    .line 2288
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$3;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$3;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothFilteringQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 2309
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v1, "BluetoothAdapter_isOffloadedFilteringSupported"

    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sBluetoothFilteringQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothFilteringCache:Landroid/os/IpcDataCache;

    .line 2810
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$4;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$4;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetAdapterConnectionStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 2832
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v1, "BluetoothAdapter_getConnectionState"

    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetAdapterConnectionStateQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    .line 2880
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$5;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$5;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothProfileQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 2908
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;

    const-string v1, "BluetoothAdapter_getProfileConnectionState"

    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sBluetoothProfileQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothCache;-><init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    .line 3546
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$6;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAdapter$6;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 3959
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V
    .registers 6
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    new-instance v0, Landroid/os/Binder;

    const-string v1, "android.bluetooth.BluetoothAdapter"

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    .line 883
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 891
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 930
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProfileConnections:Ljava/util/Map;

    .line 934
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMainHandler:Landroid/os/Handler;

    .line 939
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    .line 3631
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$7;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$7;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4695
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$9;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$9;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    .line 5072
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$10;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$10;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mPreferredAudioProfilesChangedCallback:Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

    .line 5242
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$11;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$11;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothQualityReportReadyCallback:Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

    .line 5639
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;-><init>(Landroid/bluetooth/BluetoothAdapter-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    .line 5642
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$12;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$12;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    .line 1105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 1106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1108
    new-instance v0, Landroid/bluetooth/CallbackWrapper;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mQualityCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 1112
    new-instance v0, Landroid/bluetooth/CallbackWrapper;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAudioProfilesCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 1116
    new-instance v0, Landroid/bluetooth/CallbackWrapper;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/CallbackWrapper;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    .line 1121
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1123
    :try_start_b8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothManagerCallback(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_cb

    .line 1125
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1126
    nop

    .line 1127
    return-void

    .line 1125
    :catchall_cb
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1126
    throw v0
.end method

.method public static whitelist checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .line 3905
    const/4 v0, 0x0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_c

    goto :goto_36

    .line 3908
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_34

    .line 3909
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3910
    .local v3, "c":C
    rem-int/lit8 v4, v1, 0x3

    packed-switch v4, :pswitch_data_38

    goto :goto_31

    .line 3919
    :pswitch_19
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1e

    .line 3920
    goto :goto_31

    .line 3922
    :cond_1e
    return v0

    .line 3913
    :pswitch_1f
    const/16 v4, 0x30

    if-lt v3, v4, :cond_27

    const/16 v4, 0x39

    if-le v3, v4, :cond_31

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_30

    const/16 v4, 0x46

    if-gt v3, v4, :cond_30

    .line 3915
    goto :goto_31

    .line 3917
    :cond_30
    return v0

    .line 3908
    .end local v3    # "c":C
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3925
    .end local v1    # "i":I
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 3906
    :cond_36
    :goto_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_19
    .end packed-switch
.end method

.method public static blacklist connectionPolicyToPriority(I)I
    .registers 2
    .param p0, "connectionPolicy"    # I

    .line 5392
    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_c

    .line 5400
    return v0

    .line 5394
    :sswitch_5
    const/16 v0, 0x64

    return v0

    .line 5396
    :sswitch_8
    const/4 v0, 0x0

    return v0

    .line 5398
    :sswitch_a
    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        -0x1 -> :sswitch_a
        0x0 -> :sswitch_8
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;
    .registers 6
    .param p0, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1087
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;

    move-result-object v0

    .line 1088
    .local v0, "manager":Landroid/os/BluetoothServiceManager;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1089
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothServiceManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-object v1

    .line 1092
    :cond_f
    nop

    .line 1094
    invoke-virtual {v0}, Landroid/os/BluetoothServiceManager;->getBluetoothManagerServiceRegisterer()Landroid/os/BluetoothServiceManager$ServiceRegisterer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v2

    .line 1093
    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 1095
    .local v2, "service":Landroid/bluetooth/IBluetoothManager;
    if-eqz v2, :cond_24

    .line 1096
    new-instance v1, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v1, v2, p0}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V

    return-object v1

    .line 1098
    :cond_24
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Bluetooth service is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-object v1
.end method

.method private static blacklist createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3276
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p3, v1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 3279
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 3280
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3281
    .local v1, "errno":I
    if-nez v1, :cond_17

    .line 3287
    return-object v0

    .line 3285
    :cond_17
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized whitelist getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v0

    .line 1078
    :try_start_3
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_11

    .line 1079
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1081
    :cond_11
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 1077
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist getProfile(I)Landroid/os/IBinder;
    .registers 4
    .param p1, "profile"    # I

    .line 4066
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4068
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1d

    .line 4069
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->getProfile(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_29
    .catchall {:try_start_9 .. :try_end_13} :catchall_27

    .line 4074
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4069
    return-object v0

    .line 4074
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4075
    goto :goto_30

    .line 4074
    :catchall_27
    move-exception v0

    goto :goto_32

    .line 4071
    :catch_29
    move-exception v0

    .line 4072
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1d

    .line 4076
    :goto_30
    const/4 v0, 0x0

    return-object v0

    .line 4074
    :goto_32
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4075
    throw v0
.end method

.method private blacklist getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;ILjava/util/concurrent/Executor;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 3446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p3, v0, :cond_15

    .line 3451
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getProfileProxy(): BluetoothHealth is deprecated"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    return v1

    .line 3455
    :cond_15
    const/16 v0, 0x15

    if-ne p3, v0, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3456
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getProfileProxy(): BluetoothHearingAid is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    return v1

    .line 3460
    :cond_27
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->PROFILE_CONSTRUCTORS:Ljava/util/Map;

    .line 3461
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    .line 3463
    .local v0, "constructor":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothProfile;>;"
    if-nez v0, :cond_4e

    .line 3464
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileProxy(): Unknown profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    return v1

    .line 3468
    :cond_4e
    invoke-interface {v0, p1, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    .line 3469
    .local v1, "profileProxy":Landroid/bluetooth/BluetoothProfile;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    invoke-direct {v2, p3, p2, p4}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;-><init>(ILandroid/bluetooth/BluetoothProfile$ServiceListener;Ljava/util/concurrent/Executor;)V

    .line 3471
    .local v2, "connection":Landroid/bluetooth/BluetoothAdapter$ProfileConnection;
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sProfileLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3474
    :try_start_5c
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mProfileConnections:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3476
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfile(I)Landroid/os/IBinder;

    move-result-object v4

    .line 3477
    .local v4, "binder":Landroid/os/IBinder;
    if-eqz v4, :cond_6a

    .line 3478
    invoke-virtual {v2, v1, v4}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->connect(Landroid/bluetooth/BluetoothProfile;Landroid/os/IBinder;)V

    .line 3480
    .end local v4    # "binder":Landroid/os/IBinder;
    :cond_6a
    monitor-exit v3

    .line 3481
    const/4 v3, 0x1

    return v3

    .line 3480
    :catchall_6d
    move-exception v4

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_6d

    throw v4
.end method

.method private static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "api"    # Ljava/lang/String;

    .line 1427
    const-string v0, "bluetooth"

    invoke-static {v0, p0}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    return-void
.end method

.method public static blacklist invalidateGetAdapterConnectionStateCache()V
    .registers 1

    .line 2844
    const-string v0, "BluetoothAdapter_getConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 2845
    return-void
.end method

.method public static blacklist invalidateGetProfileConnectionStateCache()V
    .registers 1

    .line 2919
    const-string v0, "BluetoothAdapter_getProfileConnectionState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 2920
    return-void
.end method

.method public static blacklist invalidateIsOffloadedFilteringSupportedCache()V
    .registers 1

    .line 2320
    const-string v0, "BluetoothAdapter_isOffloadedFilteringSupported"

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->invalidateCache(Ljava/lang/String;)V

    .line 2321
    return-void
.end method

.method public static blacklist isAddressRandomStatic(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 3940
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 3942
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xc0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 3941
    :goto_20
    return v1
.end method

.method private blacklist isHearingAidProfileSupported()Z
    .registers 3

    .line 2613
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isHearingAidProfileSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2614
    :catch_7
    move-exception v0

    .line 2615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic blacklist lambda$addOnMetadataChangedListener$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 4569
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerBluetoothHciVendorSpecificCallback$2(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "n"    # Ljava/lang/Integer;

    .line 5704
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x52

    if-lt v0, v1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_21

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method static synthetic blacklist lambda$removeOnMetadataChangedListener$1(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 4631
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist nameForState(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 299
    packed-switch p0, :pswitch_data_32

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?!?!? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_1d
    const-string v0, "BLE_TURNING_OFF"

    return-object v0

    .line 311
    :pswitch_20
    const-string v0, "BLE_ON"

    return-object v0

    .line 309
    :pswitch_23
    const-string v0, "BLE_TURNING_ON"

    return-object v0

    .line 307
    :pswitch_26
    const-string v0, "TURNING_OFF"

    return-object v0

    .line 305
    :pswitch_29
    const-string v0, "ON"

    return-object v0

    .line 303
    :pswitch_2c
    const-string v0, "TURNING_ON"

    return-object v0

    .line 301
    :pswitch_2f
    const-string v0, "OFF"

    return-object v0

    :pswitch_data_32
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist priorityToConnectionPolicy(I)I
    .registers 5
    .param p0, "priority"    # I

    .line 5369
    const/16 v0, 0x64

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_24

    .line 5379
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPriority: Invalid priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    return v1

    .line 5371
    :sswitch_1f
    return v0

    .line 5373
    :sswitch_20
    return v0

    .line 5375
    :sswitch_21
    const/4 v0, 0x0

    return v0

    .line 5377
    :sswitch_23
    return v1

    :sswitch_data_24
    .sparse-switch
        -0x1 -> :sswitch_23
        0x0 -> :sswitch_21
        0x64 -> :sswitch_20
        0x3e8 -> :sswitch_1f
    .end sparse-switch
.end method

.method private blacklist registerAudioProfilesCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 5055
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mPreferredAudioProfilesChangedCallback:Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->registerPreferredAudioProfilesChangedCallback(Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;Landroid/content/AttributionSource;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5059
    goto :goto_e

    .line 5057
    :catch_8
    move-exception v0

    .line 5058
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5060
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist registerBluetoothConnectionCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 4678
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4682
    goto :goto_e

    .line 4680
    :catch_8
    move-exception v0

    .line 4681
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 4683
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist registerBluetoothQualityReportCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 5225
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothQualityReportReadyCallback:Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->registerBluetoothQualityReportReadyCallback(Landroid/bluetooth/IBluetoothQualityReportReadyCallback;Landroid/content/AttributionSource;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5229
    goto :goto_e

    .line 5227
    :catch_8
    move-exception v0

    .line 5228
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist registerOrUnregisterAdapterLocked()V
    .registers 5

    .line 4096
    sget-boolean v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Z

    .line 4097
    .local v0, "isRegistered":Z
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4099
    .local v1, "wantRegistered":Z
    if-ne v0, v1, :cond_d

    .line 4100
    return-void

    .line 4102
    :cond_d
    if-eqz v1, :cond_24

    .line 4104
    :try_start_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4106
    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/os/IBinder;

    move-result-object v2

    .line 4105
    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_1e

    .line 4109
    goto :goto_2f

    .line 4107
    :catch_1e
    move-exception v2

    .line 4108
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4112
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_24
    :try_start_24
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 4113
    const/4 v2, 0x0

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2e} :catch_32

    .line 4116
    nop

    .line 4118
    :goto_2f
    sput-boolean v1, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Z

    .line 4119
    return-void

    .line 4114
    :catch_32
    move-exception v2

    .line 4115
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist toDeviceSet(Ljava/util/List;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 3881
    .local p0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3882
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private blacklist unregisterAudioProfilesCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 5065
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mPreferredAudioProfilesChangedCallback:Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterPreferredAudioProfilesChangedCallback(Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;Landroid/content/AttributionSource;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5069
    goto :goto_e

    .line 5067
    :catch_8
    move-exception v0

    .line 5068
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5070
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist unregisterBluetoothConnectionCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 4688
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 4692
    goto :goto_e

    .line 4690
    :catch_8
    move-exception v0

    .line 4691
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 4693
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist unregisterBluetoothQualityReportCallbackFn(Landroid/bluetooth/IBluetooth;)V
    .registers 4
    .param p1, "service"    # Landroid/bluetooth/IBluetooth;

    .line 5235
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothQualityReportReadyCallback:Landroid/bluetooth/IBluetoothQualityReportReadyCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterBluetoothQualityReportReadyCallback(Landroid/bluetooth/IBluetoothQualityReportReadyCallback;Landroid/content/AttributionSource;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 5239
    goto :goto_e

    .line 5237
    :catch_8
    move-exception v0

    .line 5238
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 5240
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .registers 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4548
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnMetadataChangedListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4550
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4551
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4553
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4555
    :try_start_3a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_51

    .line 4556
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled. Cannot register metadata listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_ed

    .line 4557
    nop

    .line 4599
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4557
    const/4 v0, 0x0

    return v0

    .line 4560
    :cond_51
    :try_start_51
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v0
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_ed

    .line 4561
    :try_start_54
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 4562
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4563
    .local v1, "listenerList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    if-nez v1, :cond_6a

    .line 4565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4566
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    .line 4569
    :cond_6a
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v3, p3}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 4575
    :goto_79
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4577
    .local v2, "listenerPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_54 .. :try_end_81} :catchall_ea

    .line 4579
    const/4 v3, 0x0

    .line 4581
    .local v3, "ret":Z
    :try_start_82
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 4582
    invoke-interface {v4, v5, p1, v6}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8c} :catch_a0
    .catchall {:try_start_82 .. :try_end_8c} :catchall_9e

    move v3, v4

    .line 4587
    if-nez v3, :cond_b4

    .line 4589
    :try_start_8f
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4590
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 4592
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    :goto_9a
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_8f .. :try_end_9d} :catchall_ea

    goto :goto_b4

    .line 4587
    :catchall_9e
    move-exception v4

    goto :goto_bf

    .line 4584
    :catch_a0
    move-exception v4

    .line 4585
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_a1
    sget-object v5, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_9e

    .line 4587
    .end local v4    # "e":Landroid/os/RemoteException;
    if-nez v3, :cond_b4

    .line 4589
    :try_start_a8
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4590
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 4592
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    goto :goto_9a

    .line 4596
    :cond_b4
    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_ea

    .line 4599
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4596
    return v3

    .line 4587
    :goto_bf
    if-nez v3, :cond_cf

    .line 4589
    :try_start_c1
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4590
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 4592
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4595
    :cond_cf
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v4

    .line 4570
    .end local v2    # "listenerPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;"
    .end local v3    # "ret":Z
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :cond_d1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener already registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v2

    .line 4597
    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Ljava/util/concurrent/Executor;>;>;"
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :catchall_ea
    move-exception v1

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_c1 .. :try_end_ec} :catchall_ea

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :try_start_ec
    throw v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    .line 4599
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :catchall_ed
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4600
    throw v0
.end method

.method public whitelist cancelDiscovery()Z
    .registers 4

    .line 2059
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2060
    return v2

    .line 2062
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2064
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_29

    .line 2065
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->cancelDiscovery(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_35
    .catchall {:try_start_13 .. :try_end_1f} :catchall_33

    .line 2070
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2065
    return v0

    .line 2070
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2071
    goto :goto_3c

    .line 2070
    :catchall_33
    move-exception v0

    goto :goto_3d

    .line 2067
    :catch_35
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 2072
    :goto_3c
    return v2

    .line 2070
    :goto_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2071
    throw v0
.end method

.method public whitelist clearBluetooth()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1713
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1715
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 1716
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1717
    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->onFactoryReset(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_3e
    .catchall {:try_start_9 .. :try_end_20} :catchall_3c

    if-eqz v0, :cond_2d

    .line 1718
    nop

    .line 1726
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1718
    return v1

    .line 1721
    :cond_2d
    :try_start_2d
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "factoryReset(): Setting persist.bluetooth.factoryreset to retry later"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/jarjar/android/sysprop/BluetoothProperties;->factory_reset(Ljava/lang/Boolean;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_3e
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3c

    goto :goto_44

    .line 1726
    :catchall_3c
    move-exception v0

    goto :goto_50

    .line 1723
    :catch_3e
    move-exception v0

    .line 1724
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3f
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 1726
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_44
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1727
    nop

    .line 1728
    const/4 v0, 0x0

    return v0

    .line 1726
    :goto_50
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1727
    throw v0
.end method

.method public whitelist closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 3
    .param p1, "unusedProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 3540
    if-nez p2, :cond_3

    .line 3541
    return-void

    .line 3543
    :cond_3
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 3544
    return-void
.end method

.method public blacklist closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 3496
    instance-of v0, p1, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 3497
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 3498
    return-void

    .line 3499
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_b
    instance-of v0, p1, Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothGattServer;

    .line 3500
    .local v0, "gatt":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 3501
    return-void

    .line 3504
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGattServer;
    :cond_16
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eq v0, p0, :cond_53

    .line 3505
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeProfileProxy(): Called on wrong instance was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3508
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3505
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const-string v0, "bluetooth.value_close_profile_proxy_adapter_mismatch"

    .line 3512
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3511
    invoke-static {v0, v1}, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 3513
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(Landroid/bluetooth/BluetoothProfile;)V

    .line 3514
    return-void

    .line 3517
    :cond_53
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3518
    :try_start_56
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProfileConnections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    .line 3519
    .local v1, "connection":Landroid/bluetooth/BluetoothAdapter$ProfileConnection;
    if-eqz v1, :cond_6d

    .line 3520
    instance-of v2, p1, Landroid/bluetooth/BluetoothLeCallControl;

    if-eqz v2, :cond_6a

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothLeCallControl;

    .line 3521
    .local v2, "callControl":Landroid/bluetooth/BluetoothLeCallControl;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeCallControl;->unregisterBearer()V

    .line 3524
    .end local v2    # "callControl":Landroid/bluetooth/BluetoothLeCallControl;
    :cond_6a
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->disconnect(Landroid/bluetooth/BluetoothProfile;)V

    .line 3526
    .end local v1    # "connection":Landroid/bluetooth/BluetoothAdapter$ProfileConnection;
    :cond_6d
    monitor-exit v0

    .line 3527
    return-void

    .line 3526
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public whitelist disable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist disable(Z)Z
    .registers 4
    .param p1, "persist"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1644
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1645
    :catch_9
    move-exception v0

    .line 1646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableBLE()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1358
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1359
    const/4 v0, 0x0

    return v0

    .line 1362
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothManager;->disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1363
    :catch_13
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disableGetAdapterConnectionStateCache()V
    .registers 2

    .line 2839
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 2840
    return-void
.end method

.method public blacklist disableGetProfileConnectionStateCache()V
    .registers 2

    .line 2914
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 2915
    return-void
.end method

.method public blacklist disableIsOffloadedFilteringSupportedCache()V
    .registers 2

    .line 2315
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothFilteringCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess()V

    .line 2316
    return-void
.end method

.method public whitelist enable()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1573
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1575
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "enable(): BT already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v0, 0x1

    return v0

    .line 1580
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->enable(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    return v0

    .line 1581
    :catch_18
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableBLE()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1401
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1402
    const/4 v0, 0x0

    return v0

    .line 1405
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothManager;->enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1406
    :catch_13
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableNoAutoConnect()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3748
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3750
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "enableNoAutoConnect(): BT already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    const/4 v0, 0x1

    return v0

    .line 3755
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    return v0

    .line 3756
    :catch_18
    move-exception v0

    .line 3757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r factoryReset()Z
    .registers 2

    .line 1741
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->clearBluetooth()Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3890
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 3892
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3893
    nop

    .line 3894
    return-void

    .line 3892
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3893
    throw v0
.end method

.method public whitelist generateLocalOobData(ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;)V
    .registers 7
    .param p1, "transport"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3855
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_26

    .line 3857
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transport \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3859
    :cond_26
    :goto_26
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3860
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 3861
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "generateLocalOobData(): Adapter isn\'t enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    invoke-interface {p3, v0}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onError(I)V

    goto :goto_66

    .line 3864
    :cond_3a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3866
    :try_start_43
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_53

    .line 3867
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    invoke-direct {v1, p3, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;-><init>(Landroid/bluetooth/BluetoothAdapter$OobDataCallback;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1, v2}, Landroid/bluetooth/IBluetooth;->generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_53} :catch_5f
    .catchall {:try_start_43 .. :try_end_53} :catchall_5d

    .line 3875
    :cond_53
    :goto_53
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3876
    goto :goto_66

    .line 3875
    :catchall_5d
    move-exception v0

    goto :goto_67

    .line 3872
    :catch_5f
    move-exception v0

    .line 3873
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_60
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5d

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_53

    .line 3878
    :goto_66
    return-void

    .line 3875
    :goto_67
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3876
    throw v0
.end method

.method public whitelist getActiveDevices(I)Ljava/util/List;
    .registers 5
    .param p1, "profile"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2215
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x16

    if-ne p1, v0, :cond_f

    goto :goto_1e

    .line 2219
    :cond_f
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Invalid profile param value in getActiveDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothProfile.A2DP, BluetoothProfile.HEADSET, BluetoothProfile.HEARING_AID, or BluetoothProfile.LE_AUDIO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2227
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2229
    :try_start_27
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_5f

    .line 2231
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveDevices("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->getActiveDevices(ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_55} :catch_6b
    .catchall {:try_start_27 .. :try_end_55} :catchall_69

    .line 2238
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2233
    return-object v0

    .line 2238
    :cond_5f
    :goto_5f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2239
    goto :goto_72

    .line 2238
    :catchall_69
    move-exception v0

    goto :goto_77

    .line 2235
    :catch_6b
    move-exception v0

    .line 2236
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6c
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_69

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_5f

    .line 2241
    :goto_72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2238
    :goto_77
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2239
    throw v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 3

    .line 1662
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1663
    :catch_9
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 3955
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public blacklist getBluetoothAdvertise()Landroid/bluetooth/IBluetoothAdvertise;
    .registers 3

    .line 4031
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4033
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_21

    .line 4034
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothAdvertise()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothAdvertise$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAdvertise;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_2d
    .catchall {:try_start_9 .. :try_end_17} :catchall_2b

    .line 4039
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4034
    return-object v0

    .line 4039
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4040
    goto :goto_34

    .line 4039
    :catchall_2b
    move-exception v0

    goto :goto_36

    .line 4036
    :catch_2d
    move-exception v0

    .line 4037
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 4041
    :goto_34
    const/4 v0, 0x0

    return-object v0

    .line 4039
    :goto_36
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4040
    throw v0
.end method

.method public blacklist getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 3

    .line 3991
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3993
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_21

    .line 3994
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothGatt()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_2d
    .catchall {:try_start_9 .. :try_end_17} :catchall_2b

    .line 3999
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3994
    return-object v0

    .line 3999
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4000
    goto :goto_34

    .line 3999
    :catchall_2b
    move-exception v0

    goto :goto_36

    .line 3996
    :catch_2d
    move-exception v0

    .line 3997
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 4001
    :goto_34
    const/4 v0, 0x0

    return-object v0

    .line 3999
    :goto_36
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4000
    throw v0
.end method

.method public whitelist getBluetoothHciSnoopLoggingMode()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5439
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBtHciSnoopLogMode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5440
    :catch_7
    move-exception v0

    .line 5441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .registers 3

    .line 1215
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1216
    const/4 v0, 0x0

    return-object v0

    .line 1218
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v1, :cond_16

    .line 1220
    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 1222
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    monitor-exit v0

    return-object v1

    .line 1223
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 3

    .line 1257
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1258
    const/4 v0, 0x0

    return-object v0

    .line 1260
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1261
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_16

    .line 1262
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1264
    :cond_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    monitor-exit v0

    return-object v1

    .line 1265
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public greylist getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .registers 2

    .line 3949
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method public blacklist getBluetoothScan()Landroid/bluetooth/IBluetoothScan;
    .registers 3

    .line 4011
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4013
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_21

    .line 4014
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothScan()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothScan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothScan;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_2d
    .catchall {:try_start_9 .. :try_end_17} :catchall_2b

    .line 4019
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4014
    return-object v0

    .line 4019
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4020
    goto :goto_34

    .line 4019
    :catchall_2b
    move-exception v0

    goto :goto_36

    .line 4016
    :catch_2d
    move-exception v0

    .line 4017
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 4021
    :goto_34
    const/4 v0, 0x0

    return-object v0

    .line 4019
    :goto_36
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4020
    throw v0
.end method

.method blacklist getBluetoothService()Landroid/bluetooth/IBluetooth;
    .registers 3

    .line 3963
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3965
    :try_start_9
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 3967
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3965
    return-object v0

    .line 3967
    :catchall_15
    move-exception v0

    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3968
    throw v0
.end method

.method public whitelist getBondedDevices()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2749
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    .line 2750
    new-array v0, v2, [Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2752
    :cond_14
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2754
    :try_start_1d
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3d

    .line 2755
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2757
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2756
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    .line 2755
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_33} :catch_53
    .catchall {:try_start_1d .. :try_end_33} :catchall_51

    .line 2763
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2755
    return-object v0

    .line 2759
    :cond_3d
    :try_start_3d
    new-array v0, v2, [Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_53
    .catchall {:try_start_3d .. :try_end_47} :catchall_51

    .line 2763
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2759
    return-object v0

    .line 2763
    :catchall_51
    move-exception v0

    goto :goto_65

    .line 2760
    :catch_53
    move-exception v0

    .line 2761
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_54
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_51

    .line 2763
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2764
    nop

    .line 2765
    const/4 v0, 0x0

    return-object v0

    .line 2763
    :goto_65
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2764
    throw v0
.end method

.method public whitelist getConnectionState()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2861
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2862
    return v2

    .line 2864
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2866
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetAdapterConnectionStateCache:Landroid/os/IpcDataCache;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_25} :catch_3c
    .catchall {:try_start_13 .. :try_end_25} :catchall_3a

    .line 2873
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2866
    return v0

    .line 2873
    :cond_2f
    nop

    :goto_30
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2874
    goto :goto_70

    .line 2873
    :catchall_3a
    move-exception v0

    goto :goto_73

    .line 2867
    :catch_3c
    move-exception v0

    .line 2868
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_71

    .line 2871
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_30

    .line 2875
    :goto_70
    return v2

    .line 2869
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :cond_71
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v0
    :try_end_73
    .catchall {:try_start_3d .. :try_end_73} :catchall_3a

    .line 2873
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :goto_73
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2874
    throw v0
.end method

.method public whitelist getDiscoverableTimeout()Ljava/time/Duration;
    .registers 6

    .line 1907
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1908
    return-object v2

    .line 1910
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1912
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_34

    .line 1913
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout(Landroid/content/AttributionSource;)J

    move-result-wide v0

    .line 1914
    .local v0, "timeout":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_40
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3e

    .line 1919
    :goto_2a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1914
    return-object v2

    .line 1919
    .end local v0    # "timeout":J
    :cond_34
    :goto_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1920
    goto :goto_47

    .line 1919
    :catchall_3e
    move-exception v0

    goto :goto_48

    .line 1916
    :catch_40
    move-exception v0

    .line 1917
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_34

    .line 1921
    :goto_47
    return-object v2

    .line 1919
    :goto_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1920
    throw v0
.end method

.method public whitelist getDiscoveryEndMillis()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1975
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1977
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1f

    .line 1978
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getDiscoveryEndMillis(Landroid/content/AttributionSource;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_2b
    .catchall {:try_start_9 .. :try_end_15} :catchall_29

    .line 1983
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1978
    return-wide v0

    .line 1983
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1984
    goto :goto_32

    .line 1983
    :catchall_29
    move-exception v0

    goto :goto_35

    .line 1980
    :catch_2b
    move-exception v0

    .line 1981
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2c
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 1985
    :goto_32
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1983
    :goto_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1984
    throw v0
.end method

.method public blacklist getDistanceMeasurement()Landroid/bluetooth/IDistanceMeasurement;
    .registers 3

    .line 4051
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4053
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_21

    .line 4054
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getDistanceMeasurement()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IDistanceMeasurement$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IDistanceMeasurement;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_2d
    .catchall {:try_start_9 .. :try_end_17} :catchall_2b

    .line 4059
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4054
    return-object v0

    .line 4059
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4060
    goto :goto_34

    .line 4059
    :catchall_2b
    move-exception v0

    goto :goto_36

    .line 4056
    :catch_2d
    move-exception v0

    .line 4057
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 4061
    :goto_34
    const/4 v0, 0x0

    return-object v0

    .line 4059
    :goto_36
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4060
    throw v0
.end method

.method public whitelist getDistanceMeasurementManager()Landroid/bluetooth/le/DistanceMeasurementManager;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1283
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1284
    const/4 v0, 0x0

    return-object v0

    .line 1287
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDistanceMeasurementSupported()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    .line 1291
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mDistanceMeasurementManager:Landroid/bluetooth/le/DistanceMeasurementManager;

    if-nez v1, :cond_1e

    .line 1293
    new-instance v1, Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/DistanceMeasurementManager;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mDistanceMeasurementManager:Landroid/bluetooth/le/DistanceMeasurementManager;

    .line 1295
    :cond_1e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mDistanceMeasurementManager:Landroid/bluetooth/le/DistanceMeasurementManager;

    monitor-exit v0

    return-object v1

    .line 1296
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v1

    .line 1288
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Distance measurement is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getLeAccess()Z
    .registers 4

    .line 1526
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 1527
    return v2

    .line 1528
    :cond_a
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_13

    .line 1529
    return v2

    .line 1532
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLeMaximumAdvertisingDataLength()I
    .registers 4

    .line 2589
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2590
    return v1

    .line 2592
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2594
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2595
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getLeMaximumAdvertisingDataLength()I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2600
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2595
    return v0

    .line 2600
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2601
    goto :goto_38

    .line 2600
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2597
    :catch_31
    move-exception v0

    .line 2598
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2602
    :goto_38
    return v1

    .line 2600
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2601
    throw v0
.end method

.method public greylist getLeState()I
    .registers 3

    .line 1517
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetSystemStateCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1522
    .local v0, "state":I
    return v0
.end method

.method public whitelist getMaxConnectedAudioDevices()I
    .registers 3

    .line 2629
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2631
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1f

    .line 2632
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getMaxConnectedAudioDevices(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_2b
    .catchall {:try_start_9 .. :try_end_15} :catchall_29

    .line 2637
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2632
    return v0

    .line 2637
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2638
    goto :goto_32

    .line 2637
    :catchall_29
    move-exception v0

    goto :goto_34

    .line 2634
    :catch_2b
    move-exception v0

    .line 2635
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2c
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 2639
    :goto_32
    const/4 v0, -0x1

    return v0

    .line 2637
    :goto_34
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2638
    throw v0
.end method

.method public whitelist getMostRecentlyConnectedDevices()Ljava/util/List;
    .registers 3
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

    .line 2717
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_d

    .line 2718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2720
    :cond_d
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2722
    :try_start_16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_32

    .line 2723
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2724
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2723
    invoke-static {v0, v1}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_3e
    .catchall {:try_start_16 .. :try_end_28} :catchall_3c

    .line 2730
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2723
    return-object v0

    .line 2730
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2731
    goto :goto_45

    .line 2730
    :catchall_3c
    move-exception v0

    goto :goto_4a

    .line 2727
    :catch_3e
    move-exception v0

    .line 2728
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3f
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_32

    .line 2732
    :goto_45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2730
    :goto_4a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2731
    throw v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 3

    .line 1680
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1681
    :catch_9
    move-exception v0

    .line 1682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNameLengthForAdvertise()I
    .registers 3

    .line 1690
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1692
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1f

    .line 1693
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getNameLengthForAdvertise(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_2b
    .catchall {:try_start_9 .. :try_end_15} :catchall_29

    .line 1698
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1693
    return v0

    .line 1698
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1699
    goto :goto_32

    .line 1698
    :catchall_29
    move-exception v0

    goto :goto_34

    .line 1695
    :catch_2b
    move-exception v0

    .line 1696
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2c
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 1700
    :goto_32
    const/4 v0, -0x1

    return v0

    .line 1698
    :goto_34
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1699
    throw v0
.end method

.method public whitelist getOffloadedTransportDiscoveryDataScanSupported()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5519
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5520
    const/4 v0, 0x1

    return v0

    .line 5522
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5524
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_27

    .line 5525
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getOffloadedTransportDiscoveryDataScanSupported(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_33
    .catchall {:try_start_11 .. :try_end_1d} :catchall_31

    .line 5530
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5525
    return v0

    .line 5530
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5531
    goto :goto_3a

    .line 5530
    :catchall_31
    move-exception v0

    goto :goto_3e

    .line 5527
    :catch_33
    move-exception v0

    .line 5528
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_34
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_27

    .line 5532
    :goto_3a
    const v0, 0x7fffffff

    return v0

    .line 5530
    :goto_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5531
    throw v0
.end method

.method public blacklist getPeriodicAdvertisingManager()Landroid/bluetooth/le/PeriodicAdvertisingManager;
    .registers 3

    .line 1238
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1239
    return-object v1

    .line 1242
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1243
    return-object v1

    .line 1246
    :cond_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    if-nez v1, :cond_1d

    .line 1248
    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 1250
    :cond_1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    monitor-exit v0

    return-object v1

    .line 1251
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4975
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredAudioProfiles("

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

    .line 4976
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4977
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 4981
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4983
    :try_start_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4a

    .line 4984
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_40} :catch_56
    .catchall {:try_start_34 .. :try_end_40} :catchall_54

    .line 4989
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4984
    return-object v0

    .line 4989
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4990
    goto :goto_5d

    .line 4989
    :catchall_54
    move-exception v0

    goto :goto_60

    .line 4986
    :catch_56
    move-exception v0

    .line 4987
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_57
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4a

    .line 4992
    :goto_5d
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    .line 4989
    :goto_60
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4990
    throw v0

    .line 4978
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProfileConnectionState(I)I
    .registers 9
    .param p1, "profile"    # I

    .line 2934
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2935
    return v2

    .line 2937
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2939
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3f

    .line 2940
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sGetProfileConnectionStateCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2940
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_35} :catch_4c
    .catchall {:try_start_13 .. :try_end_35} :catchall_4a

    .line 2949
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2940
    return v0

    .line 2949
    :cond_3f
    nop

    :goto_40
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2950
    goto :goto_80

    .line 2949
    :catchall_4a
    move-exception v0

    goto :goto_83

    .line 2943
    :catch_4c
    move-exception v0

    .line 2944
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_81

    .line 2947
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_40

    .line 2951
    :goto_80
    return v2

    .line 2945
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :cond_81
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "profile":I
    throw v0
    :try_end_83
    .catchall {:try_start_4d .. :try_end_83} :catchall_4a

    .line 2949
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "profile":I
    :goto_83
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2950
    throw v0
.end method

.method public whitelist getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .line 3426
    if-eqz p1, :cond_2f

    if-nez p2, :cond_5

    goto :goto_2f

    .line 3433
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_20

    .line 3434
    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_20

    .line 3435
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need BLUETOOTH permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3438
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda7;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;ILjava/util/concurrent/Executor;)Z

    move-result v0

    return v0

    .line 3427
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 1144
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1146
    return-object v0
.end method

.method public whitelist getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .registers 11
    .param p1, "address"    # [B

    .line 1187
    if-eqz p1, :cond_47

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_47

    .line 1190
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    .line 1195
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    .line 1196
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    .line 1197
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 1198
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    .line 1199
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    .line 1200
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 1192
    const-string v3, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1202
    return-object v0

    .line 1188
    .end local v0    # "res":Landroid/bluetooth/BluetoothDevice;
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRemoteLeDevice(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I

    .line 1168
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 1169
    .local v0, "res":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 1170
    return-object v0
.end method

.method public whitelist getScanMode()I
    .registers 4

    .line 1841
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0x14

    if-eq v0, v1, :cond_b

    .line 1842
    return v2

    .line 1844
    :cond_b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1846
    :try_start_14
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2a

    .line 1847
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getScanMode(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_36
    .catchall {:try_start_14 .. :try_end_20} :catchall_34

    .line 1852
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1847
    return v0

    .line 1852
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1853
    goto :goto_3d

    .line 1852
    :catchall_34
    move-exception v0

    goto :goto_3e

    .line 1849
    :catch_36
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_37
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2a

    .line 1854
    :goto_3d
    return v2

    .line 1852
    :goto_3e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1853
    throw v0
.end method

.method public whitelist getState()I
    .registers 3

    .line 1476
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothGetSystemStateCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1479
    .local v0, "state":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_19

    const/16 v1, 0xe

    if-eq v0, v1, :cond_19

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1b

    .line 1485
    :cond_19
    const/16 v0, 0xa

    .line 1495
    :cond_1b
    return v0
.end method

.method public whitelist getSupportedProfiles()Ljava/util/List;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2784
    .local v0, "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2786
    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_34

    .line 2787
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2788
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getSupportedProfiles(Landroid/content/AttributionSource;)J

    move-result-wide v1

    .line 2790
    .local v1, "supportedProfilesBitMask":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_33

    .line 2791
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    int-to-long v4, v4

    and-long/2addr v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_30

    .line 2792
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 2795
    .end local v1    # "supportedProfilesBitMask":J
    .end local v3    # "i":I
    :cond_33
    goto :goto_4c

    .line 2797
    :cond_34
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2798
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_43} :catch_46
    .catchall {:try_start_e .. :try_end_43} :catchall_44

    goto :goto_4c

    .line 2804
    :catchall_44
    move-exception v1

    goto :goto_57

    .line 2801
    :catch_46
    move-exception v1

    .line 2802
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_47
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    .line 2804
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2805
    nop

    .line 2806
    return-object v0

    .line 2804
    :goto_57
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2805
    throw v1
.end method

.method public greylist getUuids()[Landroid/os/ParcelUuid;
    .registers 3

    .line 1755
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getUuidsList()Ljava/util/List;

    move-result-object v0

    .line 1756
    .local v0, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ParcelUuid;

    return-object v1
.end method

.method public whitelist getUuidsList()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v0, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_e

    .line 1771
    return-object v0

    .line 1773
    :cond_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1775
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2d

    .line 1776
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getUuids(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_23} :catch_39
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    .line 1781
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1776
    return-object v1

    .line 1781
    :cond_2d
    :goto_2d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1782
    goto :goto_40

    .line 1781
    :catchall_37
    move-exception v1

    goto :goto_41

    .line 1778
    :catch_39
    move-exception v1

    .line 1779
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3a
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2d

    .line 1783
    :goto_40
    return-object v0

    .line 1781
    :goto_41
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1782
    throw v1
.end method

.method public whitelist isAutoOnEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5471
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isAutoOnEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5472
    :catch_7
    move-exception v0

    .line 5473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoOnSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5454
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isAutoOnSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 5455
    :catch_7
    move-exception v0

    .line 5456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isBleScanAlwaysAvailable()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2282
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isBleScanAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2283
    :catch_7
    move-exception v0

    .line 2284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDiscovering()Z
    .registers 4

    .line 2096
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2097
    return v2

    .line 2099
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2101
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_29

    .line 2102
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->isDiscovering(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_35
    .catchall {:try_start_13 .. :try_end_1f} :catchall_33

    .line 2107
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2102
    return v0

    .line 2107
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2108
    goto :goto_3c

    .line 2107
    :catchall_33
    move-exception v0

    goto :goto_3d

    .line 2104
    :catch_35
    move-exception v0

    .line 2105
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 2109
    :goto_3c
    return v2

    .line 2107
    :goto_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2108
    throw v0
.end method

.method public whitelist isDistanceMeasurementSupported()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2564
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2565
    return v1

    .line 2567
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2569
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_27

    .line 2570
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->isDistanceMeasurementSupported(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_33
    .catchall {:try_start_11 .. :try_end_1d} :catchall_31

    .line 2575
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2570
    return v0

    .line 2575
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2576
    goto :goto_3a

    .line 2575
    :catchall_31
    move-exception v0

    goto :goto_3b

    .line 2572
    :catch_33
    move-exception v0

    .line 2573
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_34
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_27

    .line 2577
    :goto_3a
    return v1

    .line 2575
    :goto_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2576
    throw v0
.end method

.method public whitelist isEnabled()Z
    .registers 3

    .line 1309
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isHardwareTrackingFiltersAvailable()Z
    .registers 4

    .line 2651
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2652
    return v1

    .line 2655
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothScan()Landroid/bluetooth/IBluetoothScan;

    move-result-object v0

    .line 2656
    .local v0, "scan":Landroid/bluetooth/IBluetoothScan;
    if-nez v0, :cond_f

    .line 2658
    return v1

    .line 2660
    :cond_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothScan;->numHwTrackFiltersAvailable(Landroid/content/AttributionSource;)I

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_19

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 2661
    .end local v0    # "scan":Landroid/bluetooth/IBluetoothScan;
    :catch_19
    move-exception v0

    .line 2662
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 2664
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isLe2MPhySupported()Z
    .registers 4

    .line 2380
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2381
    return v1

    .line 2383
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2385
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2386
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLe2MPhySupported()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2391
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2386
    return v0

    .line 2391
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2392
    goto :goto_38

    .line 2391
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2388
    :catch_31
    move-exception v0

    .line 2389
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2393
    :goto_38
    return v1

    .line 2391
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2392
    throw v0
.end method

.method public whitelist isLeAudioBroadcastAssistantSupported()I
    .registers 4

    .line 2538
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2539
    return v1

    .line 2541
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2543
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2544
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeAudioBroadcastAssistantSupported()I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2549
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2544
    return v0

    .line 2549
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2550
    goto :goto_38

    .line 2549
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2546
    :catch_31
    move-exception v0

    .line 2547
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2551
    :goto_38
    return v1

    .line 2549
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2550
    throw v0
.end method

.method public whitelist isLeAudioBroadcastSourceSupported()I
    .registers 4

    .line 2513
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2514
    return v1

    .line 2516
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2518
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2519
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeAudioBroadcastSourceSupported()I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2524
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2519
    return v0

    .line 2524
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2525
    goto :goto_38

    .line 2524
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2521
    :catch_31
    move-exception v0

    .line 2522
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2526
    :goto_38
    return v1

    .line 2524
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2525
    throw v0
.end method

.method public whitelist isLeAudioSupported()I
    .registers 4

    .line 2488
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2489
    return v1

    .line 2491
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2493
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2494
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeAudioSupported()I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2499
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2494
    return v0

    .line 2499
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2500
    goto :goto_38

    .line 2499
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2496
    :catch_31
    move-exception v0

    .line 2497
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2501
    :goto_38
    return v1

    .line 2499
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2500
    throw v0
.end method

.method public whitelist isLeCocSocketOffloadSupported()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5838
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5839
    return v1

    .line 5841
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5843
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_27

    .line 5844
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->isLeCocSocketOffloadSupported(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_34
    .catchall {:try_start_11 .. :try_end_1d} :catchall_32

    .line 5849
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5844
    return v0

    .line 5849
    :cond_27
    nop

    :goto_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5850
    goto :goto_60

    .line 5849
    :catchall_32
    move-exception v0

    goto :goto_61

    .line 5846
    :catch_34
    move-exception v0

    .line 5847
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_35
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_32

    .line 5849
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_28

    .line 5851
    :goto_60
    return v1

    .line 5849
    :goto_61
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5850
    throw v0
.end method

.method public whitelist isLeCodedPhySupported()Z
    .registers 4

    .line 2404
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2405
    return v1

    .line 2407
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2409
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2410
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeCodedPhySupported()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2415
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2410
    return v0

    .line 2415
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2416
    goto :goto_38

    .line 2415
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2412
    :catch_31
    move-exception v0

    .line 2413
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2417
    :goto_38
    return v1

    .line 2415
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2416
    throw v0
.end method

.method public whitelist isLeEnabled()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1323
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    .line 1325
    .local v0, "state":I
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLeEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/16 v1, 0xc

    if-eq v0, v1, :cond_33

    const/16 v1, 0xf

    if-eq v0, v1, :cond_33

    const/16 v1, 0xb

    if-eq v0, v1, :cond_33

    const/16 v1, 0xd

    if-ne v0, v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    return v1
.end method

.method public whitelist isLeExtendedAdvertisingSupported()Z
    .registers 4

    .line 2428
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2429
    return v1

    .line 2431
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2433
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2434
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeExtendedAdvertisingSupported()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2439
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2434
    return v0

    .line 2439
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2440
    goto :goto_38

    .line 2439
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2436
    :catch_31
    move-exception v0

    .line 2437
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2441
    :goto_38
    return v1

    .line 2439
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2440
    throw v0
.end method

.method public whitelist isLePeriodicAdvertisingSupported()Z
    .registers 4

    .line 2452
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2453
    return v1

    .line 2455
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2457
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2458
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLePeriodicAdvertisingSupported()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2463
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2458
    return v0

    .line 2463
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2464
    goto :goto_38

    .line 2463
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2460
    :catch_31
    move-exception v0

    .line 2461
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2465
    :goto_38
    return v1

    .line 2463
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2464
    throw v0
.end method

.method public whitelist isMultipleAdvertisementSupported()Z
    .registers 4

    .line 2252
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2253
    return v2

    .line 2255
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2257
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_27

    .line 2258
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_33
    .catchall {:try_start_13 .. :try_end_1d} :catchall_31

    .line 2263
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2258
    return v0

    .line 2263
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2264
    goto :goto_3a

    .line 2263
    :catchall_31
    move-exception v0

    goto :goto_3b

    .line 2260
    :catch_33
    move-exception v0

    .line 2261
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_34
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_27

    .line 2265
    :goto_3a
    return v2

    .line 2263
    :goto_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2264
    throw v0
.end method

.method public whitelist isOffloadedFilteringSupported()Z
    .registers 6

    .line 2331
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2332
    return v1

    .line 2334
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2336
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothFilteringCache:Landroid/os/IpcDataCache;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_23} :catch_3a
    .catchall {:try_start_11 .. :try_end_23} :catchall_38

    .line 2343
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2336
    return v0

    .line 2343
    :cond_2d
    nop

    :goto_2e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2344
    goto :goto_6e

    .line 2343
    :catchall_38
    move-exception v0

    goto :goto_71

    .line 2337
    :catch_3a
    move-exception v0

    .line 2338
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_6f

    .line 2341
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 2343
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_2e

    .line 2345
    :goto_6e
    return v1

    .line 2339
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :cond_6f
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    throw v0
    :try_end_71
    .catchall {:try_start_3b .. :try_end_71} :catchall_38

    .line 2343
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    :goto_71
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2344
    throw v0
.end method

.method public whitelist isOffloadedScanBatchingSupported()Z
    .registers 4

    .line 2356
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2357
    return v1

    .line 2359
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2361
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_25

    .line 2362
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_31
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 2367
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2362
    return v0

    .line 2367
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2368
    goto :goto_38

    .line 2367
    :catchall_2f
    move-exception v0

    goto :goto_39

    .line 2364
    :catch_31
    move-exception v0

    .line 2365
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2369
    :goto_38
    return v1

    .line 2367
    :goto_39
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2368
    throw v0
.end method

.method public whitelist isRfcommSocketOffloadSupported()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5885
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5886
    return v1

    .line 5888
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5890
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_27

    .line 5891
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->isRfcommSocketOffloadSupported(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_34
    .catchall {:try_start_11 .. :try_end_1d} :catchall_32

    .line 5896
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5891
    return v0

    .line 5896
    :cond_27
    nop

    :goto_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5897
    goto :goto_60

    .line 5896
    :catchall_32
    move-exception v0

    goto :goto_61

    .line 5893
    :catch_34
    move-exception v0

    .line 5894
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_35
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_32

    .line 5896
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_28

    .line 5898
    :goto_60
    return v1

    .line 5896
    :goto_61
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5897
    throw v0
.end method

.method public greylist-max-r listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3268
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listenUsingInsecureL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4377
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 4385
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 4386
    .local v1, "errno":I
    if-nez v1, :cond_3f

    .line 4390
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 4391
    .local v2, "assignedPsm":I
    if-eqz v2, :cond_37

    .line 4395
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listenUsingInsecureL2capChannel: set assigned PSM to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 4399
    return-object v0

    .line 4392
    :cond_37
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4387
    .end local v2    # "assignedPsm":I
    :cond_3f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 11
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3389
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenUsingInsecureL2capOn: port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    new-instance v2, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    .end local p1    # "port":I
    .local v6, "port":I
    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3393
    .local v2, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object p1, v2, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p1

    .line 3394
    .local p1, "errno":I
    const/4 v0, -0x2

    if-ne v6, v0, :cond_4d

    .line 3395
    iget-object v0, v2, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    .line 3397
    .local v0, "assignedChannel":I
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenUsingInsecureL2capOn: set assigned channel to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3403
    .end local v0    # "assignedChannel":I
    :cond_4d
    if-nez p1, :cond_50

    .line 3409
    return-object v2

    .line 3407
    :cond_50
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 7
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3302
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 3304
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 3305
    .local v1, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_19

    .line 3306
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3308
    :cond_19
    if-nez v1, :cond_1c

    .line 3314
    return-object v0

    .line 3312
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3223
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listenUsingL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4322
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 4330
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 4331
    .local v1, "errno":I
    if-nez v1, :cond_3f

    .line 4335
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 4336
    .local v2, "assignedPsm":I
    if-eqz v2, :cond_37

    .line 4340
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listenUsingL2capChannel: set assigned PSM to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 4344
    return-object v0

    .line 4337
    :cond_37
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4332
    .end local v2    # "assignedPsm":I
    :cond_3f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public blacklist listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 11
    .param p1, "port"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3336
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v1, 0x3

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "port":I
    .end local p2    # "mitm":Z
    .end local p3    # "min16DigitPin":Z
    .local v4, "port":I
    .local v5, "mitm":Z
    .local v6, "min16DigitPin":Z
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3339
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object p1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p1

    .line 3340
    .local p1, "errno":I
    const/4 p2, -0x2

    if-ne v4, p2, :cond_35

    .line 3341
    iget-object p2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p2

    .line 3342
    .local p2, "assignedChannel":I
    sget-object p3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenUsingL2capOn: set assigned channel to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3345
    .end local p2    # "assignedChannel":I
    :cond_35
    if-nez p1, :cond_38

    .line 3351
    return-object v0

    .line 3349
    :cond_38
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 3
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2975
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public greylist listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 11
    .param p1, "channel"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3006
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v1, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "channel":I
    .end local p2    # "mitm":Z
    .end local p3    # "min16DigitPin":Z
    .local v4, "channel":I
    .local v5, "mitm":Z
    .local v6, "min16DigitPin":Z
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .line 3009
    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object p1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p1

    .line 3010
    .local p1, "errno":I
    const/4 p2, -0x2

    if-ne v4, p2, :cond_1d

    .line 3011
    iget-object p2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    .line 3013
    :cond_1d
    if-nez p1, :cond_20

    .line 3019
    return-object v0

    .line 3017
    :cond_20
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3053
    const/4 v0, 0x1

    invoke-static {p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listenUsingSocketSettings(Landroid/bluetooth/BluetoothSocketSettings;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 20
    .param p1, "settings"    # Landroid/bluetooth/BluetoothSocketSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4443
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v0

    .line 4444
    .local v0, "type":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_71

    .line 4445
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommUuid()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 4448
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v1

    if-nez v1, :cond_2f

    .line 4449
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    .line 4451
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v3

    .line 4452
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v4

    .line 4453
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    .line 4454
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    goto :goto_61

    .line 4456
    .end local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_2f
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    .line 4458
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v4

    .line 4459
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v5

    .line 4460
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v6

    new-instance v8, Landroid/os/ParcelUuid;

    .line 4462
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 4465
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v11

    .line 4466
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketName()Ljava/lang/String;

    move-result-object v12

    .line 4467
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getHubId()J

    move-result-wide v13

    .line 4468
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getEndpointId()J

    move-result-wide v15

    .line 4469
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRequestedMaximumPacketSize()I

    move-result v17

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v17}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    move-object v1, v3

    .line 4471
    .restart local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :goto_61
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRfcommServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    goto :goto_b9

    .line 4446
    .end local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RFCOMM server missing UUID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4472
    :cond_71
    if-ne v0, v2, :cond_117

    .line 4473
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v1

    if-nez v1, :cond_8f

    .line 4474
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    .line 4476
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v4

    .line 4477
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v5

    .line 4478
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x2

    invoke-direct/range {v3 .. v9}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    move-object v1, v3

    .restart local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    goto :goto_b9

    .line 4483
    .end local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_8f
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    .line 4485
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketType()I

    move-result v4

    .line 4486
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isAuthenticationRequired()Z

    move-result v5

    .line 4487
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->isEncryptionRequired()Z

    move-result v6

    .line 4492
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v11

    .line 4493
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getSocketName()Ljava/lang/String;

    move-result-object v12

    .line 4494
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getHubId()J

    move-result-wide v13

    .line 4495
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getEndpointId()J

    move-result-wide v15

    .line 4496
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getRequestedMaximumPacketSize()I

    move-result v17

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v17}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZILandroid/os/ParcelUuid;ZZILjava/lang/String;JJI)V

    move-object v1, v3

    .line 4503
    .restart local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :goto_b9
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothSocketSettings;->getDataPath()I

    move-result v3

    if-nez v3, :cond_c6

    .line 4504
    iget-object v3, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v3

    goto :goto_cc

    .line 4505
    :cond_c6
    iget-object v3, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->bindListenWithOffload()I

    move-result v3

    :goto_cc
    nop

    .line 4506
    .local v3, "errno":I
    if-nez v3, :cond_fe

    .line 4509
    if-ne v0, v2, :cond_fd

    .line 4510
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    .line 4511
    .local v2, "assignedPsm":I
    if-eqz v2, :cond_f5

    .line 4515
    sget-object v4, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listenUsingSocketSettings: set assigned PSM to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    goto :goto_fd

    .line 4512
    :cond_f5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error: Unable to assign PSM value"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4520
    .end local v2    # "assignedPsm":I
    :cond_fd
    :goto_fd
    return-object v1

    .line 4507
    :cond_fe
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4499
    .end local v1    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    .end local v3    # "errno":I
    :cond_117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Invalid socket type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5029
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActiveDeviceChangeApplied("

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

    .line 5030
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5031
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 5035
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5037
    :try_start_34
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4a

    .line 5038
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_40} :catch_56
    .catchall {:try_start_34 .. :try_end_40} :catchall_54

    .line 5043
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5038
    return v0

    .line 5043
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5044
    goto :goto_5d

    .line 5043
    :catchall_54
    move-exception v0

    goto :goto_61

    .line 5040
    :catch_56
    move-exception v0

    .line 5041
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_57
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4a

    .line 5046
    :goto_5d
    const v0, 0x7fffffff

    return v0

    .line 5043
    :goto_61
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5044
    throw v0

    .line 5032
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4730
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "registerBluetoothConnectionCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4734
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 4736
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4737
    nop

    .line 4739
    const/4 v0, 0x1

    return v0

    .line 4736
    :catchall_23
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4737
    throw v0
.end method

.method public whitelist registerBluetoothHciVendorSpecificCallback(Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;",
            ")V"
        }
    .end annotation

    .line 5698
    .local p1, "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "registerBluetoothHciVendorSpecificCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5701
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5702
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5703
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda8;-><init>()V

    .line 5704
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 5708
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5710
    :try_start_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_61

    .line 5711
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->isSet()Z

    move-result v1

    if-nez v1, :cond_56

    .line 5714
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v1, p3, p1, p2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->set(Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_5e

    .line 5716
    :try_start_38
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->registerToService(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_4e
    .catchall {:try_start_38 .. :try_end_41} :catchall_5e

    .line 5721
    nop

    .line 5722
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_5e

    .line 5724
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5725
    nop

    .line 5726
    return-void

    .line 5718
    :catch_4e
    move-exception v1

    .line 5719
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->reset()V

    .line 5720
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    throw v1

    .line 5712
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only one registration allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    throw v1

    .line 5722
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_5e

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :try_start_60
    throw v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 5724
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "eventCodeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :catchall_61
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5725
    throw v0

    .line 5705
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event code not in valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist registerBluetoothManagerCallback(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 4
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 3973
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3976
    :try_start_c
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V

    .line 3978
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_21

    .line 3980
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3978
    return-object v0

    .line 3980
    :catchall_21
    move-exception v0

    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 3981
    throw v0
.end method

.method public whitelist registerBluetoothQualityReportReadyCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;)I
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5283
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "registerBluetoothQualityReportReadyCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5287
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mQualityCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 5289
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5290
    nop

    .line 5291
    const/4 v0, 0x0

    return v0

    .line 5289
    :catchall_23
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5290
    throw v0
.end method

.method public whitelist registerPreferredAudioProfilesChangedCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;)I
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5118
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "registerPreferredAudioProfilesChangedCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5122
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5124
    :try_start_16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->isDualModeAudioEnabled(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_35
    .catchall {:try_start_16 .. :try_end_1e} :catchall_33

    .line 5125
    .local v0, "status":I
    if-eqz v0, :cond_2b

    .line 5126
    nop

    .line 5132
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5126
    return v0

    .line 5128
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAudioProfilesCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2, p2, p1}, Landroid/bluetooth/CallbackWrapper;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_35
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    .end local v0    # "status":I
    goto :goto_3b

    .line 5132
    :catchall_33
    move-exception v0

    goto :goto_47

    .line 5129
    :catch_35
    move-exception v0

    .line 5130
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .line 5132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5133
    nop

    .line 5135
    const/4 v0, 0x0

    return v0

    .line 5132
    :goto_47
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5133
    throw v0
.end method

.method public whitelist removeActiveDevice(I)Z
    .registers 5
    .param p1, "profiles"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2127
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_18

    .line 2130
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Invalid profiles param value in removeActiveDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2137
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2139
    :try_start_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_4f

    .line 2140
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveDevice, profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->removeActiveDevice(ILandroid/content/AttributionSource;)Z

    move-result v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_5b
    .catchall {:try_start_21 .. :try_end_45} :catchall_59

    .line 2146
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2141
    return v0

    .line 2146
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2147
    goto :goto_62

    .line 2146
    :catchall_59
    move-exception v0

    goto :goto_64

    .line 2143
    :catch_5b
    move-exception v0

    .line 2144
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5c
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 2149
    :goto_62
    const/4 v0, 0x0

    return v0

    .line 2146
    :goto_64
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2147
    throw v0
.end method

.method public whitelist removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4622
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnMetadataChangedListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4624
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4626
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v0

    .line 4627
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 4631
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2}, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4633
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 4636
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4637
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_65
    .catchall {:try_start_31 .. :try_end_65} :catchall_b3

    .line 4639
    :try_start_65
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_7e

    .line 4640
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3}, Landroid/bluetooth/IBluetooth;->unregisterMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_73} :catch_8a
    .catchall {:try_start_65 .. :try_end_73} :catchall_88

    .line 4647
    :try_start_73
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v0

    .line 4640
    return v1

    .line 4647
    :cond_7e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_87
    .catchall {:try_start_73 .. :try_end_87} :catchall_b3

    .line 4648
    goto :goto_a8

    .line 4647
    :catchall_88
    move-exception v1

    goto :goto_9d

    .line 4643
    :catch_8a
    move-exception v1

    .line 4644
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8b
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_88

    .line 4645
    nop

    .line 4647
    :try_start_91
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v0

    .line 4645
    const/4 v0, 0x0

    return v0

    .line 4647
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_9d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4648
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v1

    .line 4650
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :cond_a8
    :goto_a8
    monitor-exit v0

    .line 4651
    const/4 v0, 0x1

    return v0

    .line 4628
    :cond_ab
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "device was not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    throw v1

    .line 4650
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "listener":Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    :catchall_b3
    move-exception v1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_91 .. :try_end_b5} :catchall_b3

    throw v1
.end method

.method blacklist removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4080
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4083
    :try_start_c
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1f

    .line 4086
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 4087
    nop

    .line 4088
    return-void

    .line 4086
    :catchall_1f
    move-exception v0

    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 4087
    throw v0
.end method

.method public whitelist requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2685
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 2689
    .local v0, "proxy":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2691
    :try_start_14
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_20

    .line 2692
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v0, v2}, Landroid/bluetooth/IBluetooth;->requestActivityInfo(Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;Landroid/content/AttributionSource;)V

    goto :goto_25

    .line 2694
    :cond_20
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->onError(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_31
    .catchall {:try_start_14 .. :try_end_25} :catchall_2f

    .line 2700
    :goto_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2701
    goto :goto_3e

    .line 2700
    :catchall_2f
    move-exception v1

    goto :goto_3f

    .line 2696
    :catch_31
    move-exception v1

    .line 2697
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 2698
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->onError(I)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_25

    .line 2702
    :goto_3e
    return-void

    .line 2700
    :goto_3f
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2701
    throw v1
.end method

.method public whitelist retrieveConnectedRfcommSocket(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .registers 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3146
    const/4 v0, 0x0

    .line 3148
    .local v0, "socketInfo":Landroid/bluetooth/IncomingRfcommSocketInfo;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3150
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1d

    .line 3151
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3152
    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->retrievePendingSocketForServiceRecord(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)Landroid/bluetooth/IncomingRfcommSocketInfo;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_82
    .catchall {:try_start_b .. :try_end_1c} :catchall_80

    move-object v0, v2

    .line 3159
    :cond_1d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3160
    nop

    .line 3161
    if-nez v0, :cond_2a

    .line 3162
    return-object v1

    .line 3165
    :cond_2a
    iget v2, v0, Landroid/bluetooth/IncomingRfcommSocketInfo;->status:I

    sparse-switch v2, :sswitch_data_9e

    .line 3179
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected result: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/bluetooth/IncomingRfcommSocketInfo;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), from the adapter service while retrieving an rfcomm socket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    return-object v1

    .line 3177
    :sswitch_50
    return-object v1

    .line 3174
    :sswitch_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RFCOMM listener for UUID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not registered by this app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3168
    :sswitch_70
    :try_start_70
    iget-object v2, v0, Landroid/bluetooth/IncomingRfcommSocketInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v0, Landroid/bluetooth/IncomingRfcommSocketInfo;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-static {v2, v3, v4}, Landroid/bluetooth/BluetoothSocket;->createSocketFromOpenFd(Landroid/os/ParcelFileDescriptor;Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_7e

    return-object v1

    .line 3170
    :catch_7e
    move-exception v2

    .line 3171
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 3159
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_80
    move-exception v1

    goto :goto_93

    .line 3155
    :catch_82
    move-exception v2

    .line 3156
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_83
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_80

    .line 3157
    nop

    .line 3159
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3157
    return-object v1

    .line 3159
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_93
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3160
    throw v1

    nop

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_70
        0x7d2 -> :sswitch_51
        0x7d5 -> :sswitch_50
    .end sparse-switch
.end method

.method public whitelist sendBluetoothHciVendorSpecificCommand(I[B)V
    .registers 6
    .param p1, "ocf"    # I
    .param p2, "parameters"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5775
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "sendBluetoothHciVendorSpecificCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    const/16 v0, 0x153

    .line 5779
    .local v0, "getVendorCapabilitiesOcf":I
    if-ltz p1, :cond_6b

    const/16 v1, 0x150

    if-lt p1, v1, :cond_15

    const/16 v1, 0x160

    if-ge p1, v1, :cond_15

    if-ne p1, v0, :cond_6b

    :cond_15
    const/16 v1, 0x3ff

    if-gt p1, v1, :cond_6b

    .line 5785
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5786
    array-length v1, p2

    const/16 v2, 0xff

    if-gt v1, v2, :cond_63

    .line 5790
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5792
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->isSet()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5796
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_4e

    .line 5797
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    invoke-interface {v1, p1, p2, v2}, Landroid/bluetooth/IBluetooth;->sendHciVendorSpecificCommand(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V

    goto :goto_4e

    .line 5793
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No Callback registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "getVendorCapabilitiesOcf":I
    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "ocf":I
    .end local p2    # "parameters":[B
    throw v1
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_46} :catch_48
    .catchall {:try_start_2a .. :try_end_46} :catchall_46

    .line 5803
    .restart local v0    # "getVendorCapabilitiesOcf":I
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "ocf":I
    .restart local p2    # "parameters":[B
    :catchall_46
    move-exception v1

    goto :goto_59

    .line 5800
    :catch_48
    move-exception v1

    .line 5801
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_49
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 5803
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5804
    nop

    .line 5805
    return-void

    .line 5803
    :goto_59
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5804
    throw v1

    .line 5787
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameters size is too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5782
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Opcode command value not in valid range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profiles"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2170
    if-eqz p1, :cond_7a

    .line 2174
    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    goto :goto_1a

    .line 2177
    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Invalid profiles param value in setActiveDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2184
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2186
    :try_start_23
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_5b

    .line 2188
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetooth;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_51} :catch_67
    .catchall {:try_start_23 .. :try_end_51} :catchall_65

    .line 2195
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2190
    return v0

    .line 2195
    :cond_5b
    :goto_5b
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2196
    goto :goto_6e

    .line 2195
    :catchall_65
    move-exception v0

    goto :goto_70

    .line 2192
    :catch_67
    move-exception v0

    .line 2193
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_68
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_65

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_5b

    .line 2198
    :goto_6e
    const/4 v0, 0x0

    return v0

    .line 2195
    :goto_70
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2196
    throw v0

    .line 2171
    :cond_7a
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setActiveDevice: Null device passed as parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAutoOnEnabled(Z)V
    .registers 4
    .param p1, "status"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5489
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManager;->setAutoOnEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 5492
    nop

    .line 5493
    return-void

    .line 5490
    :catch_7
    move-exception v0

    .line 5491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBluetoothHciSnoopLoggingMode(I)I
    .registers 4
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5416
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 5419
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Bluetooth HCI snoop log mode param value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5422
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManager;->setBtHciSnoopLogMode(I)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v0

    .line 5423
    :catch_18
    move-exception v0

    .line 5424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDiscoverableTimeout(Ljava/time/Duration;)I
    .registers 6
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1943
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    .line 1944
    const/4 v0, 0x1

    return v0

    .line 1946
    :cond_a
    invoke-virtual {p1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_59

    .line 1950
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1952
    :try_start_1e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_38

    .line 1953
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {p1}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(JLandroid/content/AttributionSource;)I

    move-result v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_44
    .catchall {:try_start_1e .. :try_end_2e} :catchall_42

    .line 1958
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1953
    return v0

    .line 1958
    :cond_38
    :goto_38
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1959
    goto :goto_4b

    .line 1958
    :catchall_42
    move-exception v0

    goto :goto_4f

    .line 1955
    :catch_44
    move-exception v0

    .line 1956
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_45
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_38

    .line 1960
    :goto_4b
    const v0, 0x7fffffff

    return v0

    .line 1958
    :goto_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1959
    throw v0

    .line 1947
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout in seconds must be less or equal to 2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setName(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1805
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1806
    return v2

    .line 1808
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1810
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_29

    .line 1811
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_35
    .catchall {:try_start_13 .. :try_end_1f} :catchall_33

    .line 1816
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1811
    return v0

    .line 1816
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1817
    goto :goto_3c

    .line 1816
    :catchall_33
    move-exception v0

    goto :goto_3d

    .line 1813
    :catch_35
    move-exception v0

    .line 1814
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 1818
    :goto_3c
    return v2

    .line 1816
    :goto_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1817
    throw v0
.end method

.method public whitelist setPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "modeToProfileBundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4896
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredAudioProfiles( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

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

    .line 4898
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 4903
    const-string v0, "audio_mode_output_only"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "audio_mode_duplex"

    if-nez v1, :cond_51

    .line 4904
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_51

    .line 4905
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle does not contain a key AUDIO_MODE_OUTPUT_ONLY or AUDIO_MODE_DUPLEX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4908
    :cond_51
    :goto_51
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x16

    if-eqz v1, :cond_84

    .line 4909
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_84

    .line 4910
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_67

    goto :goto_84

    .line 4912
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key AUDIO_MODE_OUTPUT_ONLY has an invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4914
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4916
    :cond_84
    :goto_84
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b5

    .line 4917
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_b5

    .line 4918
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_98

    goto :goto_b5

    .line 4919
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key AUDIO_MODE_DUPLEX has an invalid value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4921
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4924
    :cond_b5
    :goto_b5
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4926
    :try_start_be
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_d4

    .line 4927
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetooth;->setPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_ca} :catch_e0
    .catchall {:try_start_be .. :try_end_ca} :catchall_de

    .line 4933
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4927
    return v0

    .line 4933
    :cond_d4
    :goto_d4
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4934
    goto :goto_e7

    .line 4933
    :catchall_de
    move-exception v0

    goto :goto_e8

    .line 4930
    :catch_e0
    move-exception v0

    .line 4931
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_e1
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_e6
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_de

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_d4

    .line 4935
    :goto_e7
    return v1

    .line 4933
    :goto_e8
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4934
    throw v0

    .line 4901
    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device cannot have an invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScanMode(I)I
    .registers 4
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1878
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    .line 1879
    const/4 v0, 0x1

    return v0

    .line 1881
    :cond_a
    const/16 v0, 0x14

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x17

    if-ne p1, v0, :cond_17

    goto :goto_1f

    .line 1884
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scan mode param value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1888
    :try_start_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3e

    .line 1889
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->setScanMode(ILandroid/content/AttributionSource;)I

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_4a
    .catchall {:try_start_28 .. :try_end_34} :catchall_48

    .line 1894
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1889
    return v0

    .line 1894
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1895
    goto :goto_51

    .line 1894
    :catchall_48
    move-exception v0

    goto :goto_55

    .line 1891
    :catch_4a
    move-exception v0

    .line 1892
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4b
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3e

    .line 1896
    :goto_51
    const v0, 0x7fffffff

    return v0

    .line 1894
    :goto_55
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1895
    throw v0
.end method

.method public whitelist startDiscovery()Z
    .registers 4

    .line 2024
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 2025
    return v2

    .line 2027
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2029
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_29

    .line 2030
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->startDiscovery(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_35
    .catchall {:try_start_13 .. :try_end_1f} :catchall_33

    .line 2035
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2030
    return v0

    .line 2035
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2036
    goto :goto_3c

    .line 2035
    :catchall_33
    move-exception v0

    goto :goto_3d

    .line 2032
    :catch_35
    move-exception v0

    .line 2033
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_29

    .line 2037
    :goto_3c
    return v2

    .line 2035
    :goto_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2036
    throw v0
.end method

.method public whitelist startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4156
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 13
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4178
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLeScan(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    const/4 v0, 0x0

    if-nez p2, :cond_27

    .line 4182
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "startLeScan: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    return v0

    .line 4186
    :cond_27
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 4187
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v1, :cond_35

    .line 4189
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v3, "startLeScan: cannot get BluetoothLeScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    return v0

    .line 4194
    :cond_35
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 4195
    :try_start_38
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 4197
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v4, "LE Scan has already started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    monitor-exit v2

    return v0

    .line 4202
    :cond_49
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 4203
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_51

    .line 4205
    monitor-exit v2

    return v0

    .line 4209
    :cond_51
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$8;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$8;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 4240
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 4242
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    .line 4243
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    .line 4244
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v5

    .line 4246
    .local v5, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4247
    .local v7, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_8a

    array-length v8, p1

    if-lez v8, :cond_8a

    .line 4250
    new-instance v8, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v8}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v9, Landroid/os/ParcelUuid;

    aget-object v0, p1, v0

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 4252
    invoke-virtual {v8, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 4253
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 4254
    .local v0, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    .end local v0    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_8a
    invoke-virtual {v1, v7, v5, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 4258
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4259
    monitor-exit v2

    return v6

    .line 4260
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v5    # "settings":Landroid/bluetooth/le/ScanSettings;
    .end local v7    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :catchall_94
    move-exception v0

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_38 .. :try_end_96} :catchall_94

    throw v0
.end method

.method public whitelist startRfcommServer(Ljava/lang/String;Ljava/util/UUID;Landroid/app/PendingIntent;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3085
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3088
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3090
    :try_start_f
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2a

    .line 3091
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1, p3, v2}, Landroid/bluetooth/IBluetooth;->startRfcommListener(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_20} :catch_36
    .catchall {:try_start_f .. :try_end_20} :catchall_34

    .line 3097
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3091
    return v0

    .line 3097
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3098
    goto :goto_3d

    .line 3097
    :catchall_34
    move-exception v0

    goto :goto_40

    .line 3094
    :catch_36
    move-exception v0

    .line 3095
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_37
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2a

    .line 3099
    :goto_3d
    const/16 v0, 0x9

    return v0

    .line 3097
    :goto_40
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3098
    throw v0

    .line 3086
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided PendingIntent is not immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4276
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "stopLeScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 4279
    .local v0, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v0, :cond_e

    .line 4280
    return-void

    .line 4282
    :cond_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v1

    .line 4283
    :try_start_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    .line 4284
    .local v2, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v2, :cond_24

    .line 4286
    sget-object v3, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v4, "scan not started yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    monitor-exit v1

    return-void

    .line 4290
    :cond_24
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 4291
    .end local v2    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    monitor-exit v1

    .line 4292
    return-void

    .line 4291
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public whitelist stopRfcommServer(Ljava/util/UUID;)I
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3115
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3117
    :try_start_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_24

    .line 3118
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetooth;->stopRfcommListener(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_30
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2e

    .line 3123
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3118
    return v0

    .line 3123
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3124
    goto :goto_37

    .line 3123
    :catchall_2e
    move-exception v0

    goto :goto_3a

    .line 3120
    :catch_30
    move-exception v0

    .line 3121
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_31
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2e

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_24

    .line 3125
    :goto_37
    const/16 v0, 0x9

    return v0

    .line 3123
    :goto_3a
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 3124
    throw v0
.end method

.method public whitelist unregisterBluetoothConnectionCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4754
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "unregisterBluetoothConnectionCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4757
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 4759
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4760
    nop

    .line 4761
    const/4 v0, 0x1

    return v0

    .line 4759
    :catchall_23
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4760
    throw v0
.end method

.method public whitelist unregisterBluetoothHciVendorSpecificCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5740
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "unregisterBluetoothHciVendorSpecificCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5744
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5746
    :try_start_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    monitor-enter v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_41

    .line 5747
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->isSet(Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 5750
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->unregisterFromService(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V

    .line 5752
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHciVendorSpecificCallbackRegistration:Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;->reset()V

    .line 5753
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3e

    .line 5755
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5756
    nop

    .line 5757
    return-void

    .line 5748
    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    throw v1

    .line 5753
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    .end local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :try_start_40
    throw v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 5755
    .restart local p0    # "this":Landroid/bluetooth/BluetoothAdapter;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
    :catchall_41
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5756
    throw v0
.end method

.method public whitelist unregisterBluetoothQualityReportReadyCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5322
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "unregisterBluetoothQualityReportReadyCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5326
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mQualityCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 5328
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5329
    nop

    .line 5331
    const/4 v0, 0x0

    return v0

    .line 5328
    :catchall_23
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5329
    throw v0
.end method

.method public whitelist unregisterPreferredAudioProfilesChangedCallback(Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$PreferredAudioProfilesChangedCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5168
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v1, "unregisterPreferredAudioProfilesChangedCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5172
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAudioProfilesCallbackWrapper:Landroid/bluetooth/CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/CallbackWrapper;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    .line 5174
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5175
    nop

    .line 5177
    const/4 v0, 0x0

    return v0

    .line 5174
    :catchall_23
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5175
    throw v0
.end method
